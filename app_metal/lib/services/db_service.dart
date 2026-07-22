import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:mssql_connection/mssql_connection.dart';

import '../models/alarm_log.dart';
import '../models/app_user.dart';
import '../models/facility.dart';
import '../models/metal_check.dart';
import '../models/metal_device.dart';
import '../models/metal_test_record.dart';
import '../models/metal_test_response.dart';
import 'direct_db_client.dart';

class LoginCredentialException implements Exception {
  final String message;

  const LoginCredentialException(this.message);

  // 오류 문구
  @override
  String toString() => message;
}

class DbService {
  static const int _metalTestFinalIndex = 3;
  static const int _metalTestGoodsIndex = 4;
  static const int _metalTestLastIndex = 4;
  static const String _metalTestMenuName = '중요관리점[금속검출]';
  static const List<String> _metalTestScenarios = [
    'Fe Only Pass',
    'Fe And Goods Pass',
    'Sus Only Pass',
    'Sus And Goods Pass',
    'Goods',
  ];
  static const List<String> _metalTestLabels = [
    'Fe만 통과시켜 주세요 !!!',
    'Fe + 제품만 통과시켜 주세요 !!!',
    'Sus만 통과시켜 주세요 !!!',
    'Sus + 제품만 통과시켜 주세요 !!!',
    '제품만 통과시켜 주세요 !!!',
  ];

  final DirectDbClient _db = DirectDbClient.instance;

  // 로그인
  Future<AppUser> login(
    Facility facility, {
    required String loginId,
    required String password,
  }) async {
    _validateFacility(facility);

    final normalizedLoginId = loginId.trim();
    final normalizedPassword = password.trim();

    // 아이디 입력
    if (normalizedLoginId.isEmpty) {
      throw Exception('아이디를 입력하세요.');
    }

    // 비밀번호 입력
    if (normalizedPassword.isEmpty) {
      throw Exception('비밀번호를 입력하세요.');
    }

    final rows = await _db.query(
      '''
SELECT TOP (1)
    M.UserID
    , M.LoginID
    , M.Password
    , M.Name
FROM MasterUser AS M WITH(NOLOCK)
WHERE M.LoginID = @loginId
  AND COALESCE(M.IsUsable, 1) = 1
''',
      {'loginId': normalizedLoginId},
    );

    // 미등록 아이디
    if (rows.isEmpty) {
      throw const LoginCredentialException('등록하지 않은 아이디 입니다.');
    }

    final storedPassword = '${_value(rows.first, 'Password') ?? ''}';
    var passwordMatches = storedPassword == normalizedPassword;

    // SHA-512 비밀번호
    if (storedPassword.length == 128) {
      passwordMatches =
          storedPassword.toUpperCase() ==
          sha512
              .convert(utf8.encode(normalizedPassword))
              .toString()
              .toUpperCase();
    }

    // 비밀번호 오류
    if (!passwordMatches) {
      throw const LoginCredentialException('잘못된 비밀번호 입니다.');
    }

    return AppUser.fromMap({
      'userId': _value(rows.first, 'UserID'),
      'loginId': normalizedLoginId,
      'name': restoreCp949Mojibake('${_value(rows.first, 'Name') ?? ''}'),
      'reviewYn': false,
      'confirmYn': false,
      'alarm': false,
    });
  }

  // 금속검출 조회
  Future<List<MetalCheck>> getMetalChecks(
    Facility facility,
    DateTime date,
  ) async {
    _validateFacility(facility);

    final rows = await _db.query(
      '''
SELECT
    CONVERT(VARCHAR(19), mc.CheckDate, 120) AS CheckDate
    , CONVERT(VARCHAR(8), mc.CheckDate, 108) AS CheckDate2
    , mc.MetalNo
    , m.Name AS MetalName
    , CASE
        WHEN mc.NOTE IS NULL OR mc.NOTE = 'Goods' THEN 'DETECTED'
        ELSE 'SPECIMEN'
      END AS MetalResult
    , mc.NOTE AS Note
    , COALESCE(ca.MetalActionContents, '') AS ActionContents
FROM MetalCheck AS mc WITH(NOLOCK)
LEFT JOIN Metal AS m WITH(NOLOCK)
ON m.MetalNo = mc.MetalNo
LEFT JOIN CCPMetalActionContents AS ca WITH(NOLOCK)
ON ca.MetalDatetime = CONVERT(VARCHAR(19), mc.CheckDate, 120)
WHERE mc.CheckDate >= CONVERT(DATETIME, @metalDate, 23)
  AND mc.CheckDate < DATEADD(DAY, 1, CONVERT(DATETIME, @metalDate, 23))
ORDER BY mc.CheckDate DESC
''',
      {'metalDate': _formatDate(date)},
    );

    return rows.map(MetalCheck.fromMap).toList();
  }

  // 금속검출 조치목록
  Future<MetalActionList> getMetalActions(
    Facility facility,
    DateTime date, {
    String searchDivision = 'S',
  }) async {
    _validateFacility(facility);

    var normalizedDivision = searchDivision.trim().toUpperCase();

    // 검색 구분
    if (!const ['A', 'S', 'G'].contains(normalizedDivision)) {
      normalizedDivision = 'S';
    }

    return _db.runExclusive((session) async {
      final canEdit = await _canEditMetalActions(session, date);
      final rows = await session.query(
        '''
SET NOCOUNT ON
EXEC usp_CCPMetalCheck
    @Option = '2'
    , @SearchDivision = @searchDivision
    , @MetalDate = @metalDate
''',
        {'searchDivision': normalizedDivision, 'metalDate': _formatDate(date)},
      );

      return MetalActionList.fromMap({'canEdit': canEdit, 'rows': rows});
    });
  }

  // 금속검출 이탈사유
  Future<List<String>> getMetalActionReasons(Facility facility) async {
    _validateFacility(facility);

    final rows = await _db.query(
      '''
SELECT
    B.BCDName AS DetailName
    , B.BCDID AS BasicCodeDetailID
FROM BasicCodeDetail AS B WITH(NOLOCK)
WHERE B.BCID = @basicCodeId
ORDER BY B.BCDID
''',
      {'basicCodeId': 'BC010'},
    );

    return rows
        .map(
          (row) =>
              restoreCp949Mojibake('${_value(row, 'DetailName') ?? ''}').trim(),
        )
        .where((reason) => reason.isNotEmpty)
        .toList();
  }

  // 금속검출 조치저장
  Future<int> saveMetalActions(
    Facility facility,
    DateTime date,
    List<MetalActionUpdate> rows,
  ) async {
    _validateFacility(facility);

    // 저장 행 없음
    if (rows.isEmpty) return 0;

    return _db.runExclusive((session) async {
      // 승인 완료
      if (!await _canEditMetalActions(session, date)) {
        throw Exception('검토 또는 승인 완료된 데이터입니다.');
      }

      var saved = 0;

      for (final row in rows) {
        // 장비 번호
        if (row.metalNo < 1) throw Exception('장비 번호가 필요합니다.');

        // 검출 시간
        if (row.metalCheckTime.trim().isEmpty) {
          throw Exception('검출 시간이 필요합니다.');
        }

        // 검출 행
        if (row.metalCheckResult.trim() != '검출') {
          throw Exception('검출 데이터만 수정할 수 있습니다.');
        }

        await session.execute(
          '''
SET NOCOUNT ON
EXEC usp_CCPMetalCheck
    @Option = 'S'
    , @MetalNo = @metalNo
    , @MetalCheckTime = @metalCheckTime
    , @MetalName = @metalName
    , @MetalCheckResult = @metalCheckResult
    , @MetalBasicReason = @metalBasicReason
    , @MetalActionContents = @metalActionContents
    , @ItemID = @itemId
''',
          {
            'metalNo': row.metalNo,
            'metalCheckTime': row.metalCheckTime.trim(),
            'metalName': row.metalName,
            'metalCheckResult': row.metalCheckResult.trim(),
            'metalBasicReason': row.metalBasicReason,
            'metalActionContents': row.metalActionContents,
            'itemId': row.itemId,
          },
        );

        saved++;
      }

      return saved;
    });
  }

  // 금속장비 조회
  Future<List<MetalDevice>> getMetalDevices(Facility facility) async {
    _validateFacility(facility);

    final rows = await _db.query(
      '''
SELECT
    MetalNo
    , Name AS MetalName
FROM Metal WITH(NOLOCK)
WHERE LEFT(MetalCode, 2) = @metalCode
ORDER BY MetalNo
''',
      {'metalCode': 'CD'},
    );

    return rows.map(MetalDevice.fromMap).toList();
  }

  // 시편테스트 이력
  Future<List<MetalTestRecord>> getMetalTestRecords(
    Facility facility,
    DateTime date, {
    int? metalNo,
  }) async {
    _validateFacility(facility);

    final rows = await _db.query(
      '''
SET NOCOUNT ON
IF @metalNo > 0
BEGIN
  EXEC usp_CCPMetalCheck
      @Option = '1'
      , @MetalNo = @metalNo
      , @MetalDate = @metalDate
END
ELSE
BEGIN
  EXEC usp_CCPMetalCheck
      @Option = '1'
      , @MetalDate = @metalDate
END
''',
      {'metalNo': metalNo ?? 0, 'metalDate': _formatDate(date)},
    );

    return rows.map(MetalTestRecord.fromMap).toList();
  }

  // 시편테스트 시작
  Future<MetalTestResponse> startMetalTest(Facility facility) async {
    _validateFacility(facility);

    final rows = await _db.queryLast('''
SET NOCOUNT ON
DECLARE @SearchDateTime DATETIME
DECLARE @ReturnValue INT
SET @SearchDateTime = NULL
EXEC @ReturnValue = usp_CCPMetalTest
    @SearchDateTime = @SearchDateTime OUTPUT
SELECT
    @ReturnValue AS ReturnValue
    , CONVERT(VARCHAR(19), @SearchDateTime, 120) AS SearchDateTime
''');

    // 시작 결과
    if (rows.isEmpty) throw Exception('시편테스트를 시작할 수 없습니다.');

    return MetalTestResponse.fromMap({
      'returnValue': _value(rows.first, 'ReturnValue'),
      'searchDateTime': _value(rows.first, 'SearchDateTime'),
      'stepIndex': 0,
      'nextStepIndex': 0,
      'stepLabel': _metalTestLabel(0),
      'nextStepLabel': _metalTestLabel(0),
      'detected': false,
      'finished': false,
      'resultFlag': '',
    });
  }

  // 시편테스트 확인
  Future<MetalTestResponse> checkMetalTest(
    Facility facility, {
    required int metalNo,
    required String searchDateTime,
    required int stepIndex,
  }) async {
    _validateFacility(facility);

    // 단계 범위
    if (stepIndex < 0 || stepIndex > _metalTestLastIndex) {
      throw Exception('시편테스트 단계가 올바르지 않습니다.');
    }

    // 장비 선택
    if (metalNo < 1) throw Exception('금속검출기를 선택하세요.');

    final parsedDateTime = _parseDateTime(searchDateTime);
    final rows = await _db.queryLast(
      '''
SET NOCOUNT ON
DECLARE @MetalSearchDateTime DATETIME
DECLARE @ReturnValue INT
SET @MetalSearchDateTime = CONVERT(DATETIME, @searchDateTime, 120)
EXEC @ReturnValue = usp_CCPMetalTest
    @SearchDateTime = @MetalSearchDateTime OUTPUT
    , @MetalNo = @metalNo
    , @Note = @note
SELECT
    @ReturnValue AS ReturnValue
    , CONVERT(VARCHAR(19), @MetalSearchDateTime, 120) AS SearchDateTime
''',
      {
        'searchDateTime': _formatDateTime(parsedDateTime),
        'metalNo': metalNo,
        'note': _metalTestScenario(stepIndex),
      },
    );

    // 확인 결과
    if (rows.isEmpty) throw Exception('시편테스트 결과가 없습니다.');

    final returnValue = _asInt(_value(rows.first, 'ReturnValue'));
    final hasSignal = returnValue == 1 || returnValue == 2;
    final finished = hasSignal && stepIndex == _metalTestFinalIndex;
    var nextStepIndex = stepIndex;
    var detected = false;
    var resultFlag = '';

    // 검출 결과
    if (returnValue == 1) {
      detected = true;
      resultFlag = stepIndex == _metalTestGoodsIndex ? 'Bad' : 'Good';
    }

    // 미검출 결과
    if (returnValue == 2) {
      resultFlag = stepIndex == _metalTestGoodsIndex ? 'Good' : 'Bad';
    }

    // 다음 단계
    if (hasSignal && !finished) {
      switch (stepIndex) {
        case 0:
          nextStepIndex = 2;
          break;
        case 2:
          nextStepIndex = 4;
          break;
        case 4:
          nextStepIndex = 1;
          break;
        case 1:
          nextStepIndex = 3;
          break;
      }
    }

    return MetalTestResponse.fromMap({
      'returnValue': returnValue,
      'searchDateTime': _value(rows.first, 'SearchDateTime'),
      'stepIndex': stepIndex,
      'nextStepIndex': nextStepIndex,
      'stepLabel': _metalTestLabel(stepIndex),
      'nextStepLabel': _metalTestLabel(nextStepIndex),
      'detected': detected,
      'finished': finished,
      'resultFlag': resultFlag,
    });
  }

  // 시편테스트 저장
  Future<void> saveMetalTest(
    Facility facility, {
    required int metalNo,
    required String metalCheckTime,
    required String writer,
    required bool? fe,
    required bool? feGoods,
    required bool? sus,
    required bool? susGoods,
    required bool? goods,
    required DateTime metalDate,
  }) async {
    _validateFacility(facility);

    // 장비 선택
    if (metalNo < 1) throw Exception('금속검출기를 선택하세요.');

    // 점검 시간
    if (metalCheckTime.trim().isEmpty) {
      throw Exception('시편테스트 시간이 필요합니다.');
    }

    await _db.runExclusive((session) async {
      final devices = await session.query(
        '''
SELECT
    Name AS MetalName
FROM Metal WITH(NOLOCK)
WHERE MetalNo = @metalNo
''',
        {'metalNo': metalNo},
      );
      final metalName = devices.isEmpty
          ? ''
          : restoreCp949Mojibake('${_value(devices.first, 'MetalName') ?? ''}');

      await session.execute(
        '''
SET NOCOUNT ON
DECLARE @MetalFeValue BIT = CASE WHEN @metalFe < 0 THEN NULL ELSE CONVERT(BIT, @metalFe) END
DECLARE @MetalFeGoodsValue BIT = CASE WHEN @metalFeGoods < 0 THEN NULL ELSE CONVERT(BIT, @metalFeGoods) END
DECLARE @MetalSusValue BIT = CASE WHEN @metalSus < 0 THEN NULL ELSE CONVERT(BIT, @metalSus) END
DECLARE @MetalSusGoodsValue BIT = CASE WHEN @metalSusGoods < 0 THEN NULL ELSE CONVERT(BIT, @metalSusGoods) END
DECLARE @MetalGoodsValue BIT = CASE WHEN @metalGoods < 0 THEN NULL ELSE CONVERT(BIT, @metalGoods) END
EXEC usp_CCPMetalCheck
    @Option = 'I'
    , @MetalNo = @metalNo
    , @MetalCheckTime = @metalCheckTime
    , @MetalName = @metalName
    , @MetalWriter = @metalWriter
    , @MetalFe = @MetalFeValue
    , @MetalFeGoods = @MetalFeGoodsValue
    , @MetalSus = @MetalSusValue
    , @MetalSusGoods = @MetalSusGoodsValue
    , @MetalGoods = @MetalGoodsValue
    , @MetalCode = @metalCode
    , @MetalDate = @metalDate
    , @R_Flag = 'N'
    , @C_Flag = 'N'
    , @MetalReviewer = ''
    , @MetalConfirmer = ''
''',
        {
          'metalNo': metalNo,
          'metalCheckTime': metalCheckTime.trim(),
          'metalName': metalName,
          'metalWriter': writer.trim(),
          'metalFe': _nullableBoolCode(fe),
          'metalFeGoods': _nullableBoolCode(feGoods),
          'metalSus': _nullableBoolCode(sus),
          'metalSusGoods': _nullableBoolCode(susGoods),
          'metalGoods': _nullableBoolCode(goods),
          'metalCode': metalNo.toString(),
          'metalDate': _formatDate(metalDate),
        },
      );

      await session.execute(
        '''
SET NOCOUNT ON
EXEC usp_HaccpApproval
    @Option = 'A'
    , @WriteDate = @writeDate
    , @MenuName = @menuName
    , @Division = ''
''',
        {'writeDate': _formatDate(metalDate), 'menuName': _metalTestMenuName},
      );
    });
  }

  // 알람 로그 조회
  Future<List<AlarmLog>> getAlarmLogs(
    Facility facility, {
    required DateTime startDate,
    int limit = 100,
  }) async {
    _validateFacility(facility);

    var normalizedLimit = limit;

    // 조회 제한 하한
    if (normalizedLimit < 1) normalizedLimit = 100;

    // 조회 제한 상한
    if (normalizedLimit > 500) normalizedLimit = 500;

    return _db.runExclusive((session) async {
      final tableRows = await session.query('''
SELECT
    OBJECT_ID('dbo.send_alarm_log', 'U') AS TableID
''');

      // 테이블 없음
      if (tableRows.isEmpty || _value(tableRows.first, 'TableID') == null) {
        return [];
      }

      final rows = await session.query(
        '''
SELECT TOP (@limit)
    CONVERT(VARCHAR(19), indate, 120) AS indate
    , Message
    , gubun
    , line
    , itemid
    , CONVERT(VARCHAR(19), LogDateTime, 120) AS LogDateTime
    , sent
FROM send_alarm_log WITH(NOLOCK)
WHERE LogDateTime >= CONVERT(DATETIME, @logDate, 23)
  AND LogDateTime < DATEADD(DAY, 1, CONVERT(DATETIME, @logDate, 23))
ORDER BY LogDateTime DESC
''',
        {'limit': normalizedLimit, 'logDate': _formatDate(startDate)},
      );

      return rows.map(AlarmLog.fromMap).toList();
    });
  }

  // DB 연결 확인
  Future<bool> testConnection(Facility facility) async {
    try {
      _validateFacility(facility);
      return _db.testConnection();
    } catch (_) {
      return false;
    }
  }

  // 승인 상태 확인
  Future<bool> _canEditMetalActions(
    DirectDbSession session,
    DateTime date,
  ) async {
    final rows = await session.query(
      '''
SET NOCOUNT ON
EXEC usp_HaccpApproval
    @Option = 'C'
    , @WriteDate = @writeDate
    , @MenuName = @menuName
    , @Division = ''
''',
      {'writeDate': _formatDate(date), 'menuName': _metalTestMenuName},
    );

    // 승인정보 없음
    if (rows.isEmpty) return true;

    return '${_value(rows.first, 'CheckReviewer') ?? ''}'.trim().isEmpty &&
        '${_value(rows.first, 'CheckConfirmer') ?? ''}'.trim().isEmpty;
  }

  // 사업장 검증
  void _validateFacility(Facility facility) {
    // 사업장 코드
    if (facility.code.trim().isEmpty) {
      throw Exception('사업장 설정이 올바르지 않습니다.');
    }
  }

  // 시편 단계명
  String _metalTestLabel(int stepIndex) {
    // 단계 범위
    if (stepIndex < 0 || stepIndex > _metalTestLastIndex) {
      return '시편 테스트 완료 !!!';
    }

    return _metalTestLabels[stepIndex];
  }

  // 시편 시나리오
  String _metalTestScenario(int stepIndex) {
    // 단계 범위
    if (stepIndex < 0 || stepIndex > _metalTestLastIndex) {
      throw Exception('시편테스트 단계가 올바르지 않습니다.');
    }

    return _metalTestScenarios[stepIndex];
  }

  // 날짜 변환
  String _formatDate(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  // 일시 변환
  String _formatDateTime(DateTime date) {
    return '${_formatDate(date)} '
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}:'
        '${date.second.toString().padLeft(2, '0')}';
  }

  // 일시 확인
  DateTime _parseDateTime(String source) {
    final normalized = source.trim().replaceFirst(' ', 'T');
    final parsed = DateTime.tryParse(normalized);

    // 일시 형식
    if (source.trim().length < 19 || parsed == null) {
      throw Exception('시편테스트 시간 형식이 올바르지 않습니다.');
    }

    return parsed;
  }

  // Boolean 코드
  int _nullableBoolCode(bool? value) {
    return value == null ? -1 : (value ? 1 : 0);
  }

  // 정수 변환
  int _asInt(Object? value) {
    return int.tryParse('$value') ?? 0;
  }

  // 컬럼값 조회
  Object? _value(Map<String, dynamic> row, String name) {
    // 원본 컬럼명
    if (row.containsKey(name)) return row[name];

    final normalizedName = name.toLowerCase();

    for (final entry in row.entries) {
      // 대소문자 차이
      if (entry.key.toLowerCase() == normalizedName) return entry.value;
    }

    return null;
  }
}
