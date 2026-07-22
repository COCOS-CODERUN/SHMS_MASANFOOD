import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../config/app_routes.dart';
import '../models/facility.dart';
import '../models/metal_check.dart';
import '../models/metal_device.dart';
import '../models/metal_test_record.dart';
import '../models/metal_test_response.dart';
import '../services/auth_storage.dart';
import '../services/db_service.dart';
import '../services/direct_db_client.dart';
import '../widgets/app_date_picker.dart';

class MetalDetectionScreen extends StatefulWidget {
  final Facility facility;
  final String writerName;
  final int initialTabIndex;

  const MetalDetectionScreen({
    super.key,
    required this.facility,
    this.writerName = '',
    this.initialTabIndex = 0,
  });

  @override
  State<MetalDetectionScreen> createState() => _MetalDetectionScreenState();
}

class _MetalDetectionScreenState extends State<MetalDetectionScreen>
    with WidgetsBindingObserver {
  static const _stepLabels = [
    'Fe만 통과',
    'Fe + 제품 통과',
    'Sus만 통과',
    'Sus + 제품 통과',
    '제품만 통과',
  ];
  static const _stepOrder = [0, 2, 4, 1, 3];
  static const _testDurationSeconds = 10;

  final _service = DbService();
  final _authStorage = const AuthStorage();
  final Map<String, MetalActionUpdate> _actionChanges = {};
  DateTime _selectedDate = DateTime.now();
  Future<List<MetalTestRecord>> _recordsFuture = Future.value(const []);
  late Future<MetalActionList> _actionsFuture;
  late Future<List<String>> _actionReasonsFuture;
  late Future<List<MetalDevice>> _devicesFuture;
  MetalDevice? _selectedDevice;
  MetalTestResponse? _session;
  String? _metalCheckTime;
  List<bool?> _stepDetections = List<bool?>.filled(_stepLabels.length, null);
  List<bool> _stepTimedOut = List<bool>.filled(_stepLabels.length, false);
  int _stepIndex = 0;
  int _remainingSeconds = _testDurationSeconds;
  bool _testing = false;
  bool _saving = false;
  bool _testSaved = false;
  bool _waitingForSignal = false;
  bool _savingActions = false;
  bool _appActive = true;
  bool _loggingOut = false;
  String _actionDivision = 'S';
  Timer? _pollTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _actionsFuture = _loadActions();
    _actionReasonsFuture = _service.getMetalActionReasons(widget.facility);
    _devicesFuture = _service.getMetalDevices(widget.facility);
    _devicesFuture.then(_selectFirstDevice);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cancelPolling();
    super.dispose();
  }

  // 앱 상태
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _appActive = state == AppLifecycleState.resumed;

    // 앱 활성
    if (_appActive) return;

    _cancelPolling();

    // 신호 대기 없음
    if (!mounted || !_waitingForSignal) return;

    setState(() {
      _waitingForSignal = false;
      _session = null;
      _remainingSeconds = 0;
    });
  }

  void _selectFirstDevice(List<MetalDevice> devices) {
    // 화면 종료
    if (!mounted) return;

    // 장비 없음
    if (devices.isEmpty) return;

    // 기존 선택
    if (_selectedDevice != null) return;

    setState(() {
      _selectedDevice = devices.first;
      _recordsFuture = _loadRecords();
    });
  }

  Future<List<MetalTestRecord>> _loadRecords() {
    final device = _selectedDevice;

    // 장비 없음
    if (device == null) return Future.value(const []);

    return _service.getMetalTestRecords(
      widget.facility,
      _selectedDate,
      metalNo: device.metalNo,
    );
  }

  Future<MetalActionList> _loadActions() {
    return _service.getMetalActions(
      widget.facility,
      _selectedDate,
      searchDivision: _actionDivision,
    );
  }

  void _refreshData() {
    setState(() {
      _actionChanges.clear();
      _actionsFuture = _loadActions();
      _actionReasonsFuture = _service.getMetalActionReasons(widget.facility);
      _recordsFuture = _loadRecords();
    });
  }

  Future<void> _pickDate() async {
    final date = await showAppDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      // 미래 날짜 허용
      lastDate: DateTime(9999, 12, 31),
    );

    // 화면 종료
    if (!mounted) return;

    // 날짜 취소
    if (date == null) return;

    setState(() {
      _selectedDate = date;
      _actionChanges.clear();
      _actionsFuture = _loadActions();
      _recordsFuture = _loadRecords();
    });
  }

  void _changeActionDivision(Set<String> selected) {
    // 검색 구분 없음
    if (selected.isEmpty) return;

    final division = selected.first;

    // 기존 검색 구분
    if (_actionDivision == division) return;

    setState(() {
      _actionDivision = division;
      _actionChanges.clear();
      _actionsFuture = _loadActions();
    });
  }

  Future<void> _editMetalAction(MetalCheck check, bool canEdit) async {
    // 검출 행
    if (!check.isDetected) return;

    // 승인 완료
    if (!canEdit) {
      _showMessage('검토 또는 승인 완료된 데이터입니다.');
      return;
    }

    List<String> reasons;
    try {
      reasons = [...await _actionReasonsFuture];
    } catch (e) {
      _showMessage(e.toString());
      return;
    }

    // 화면 종료
    if (!mounted) return;

    final current = _actionChanges[check.actionKey];
    var actionContents =
        current?.metalActionContents ?? check.actionContents ?? '';
    var selectedReason = current?.metalBasicReason ?? check.basicReason ?? '';

    // 기존 이탈 사유
    if (selectedReason.isNotEmpty && !reasons.contains(selectedReason)) {
      reasons.insert(0, selectedReason);
    }

    final update = await showModalBottomSheet<MetalActionUpdate>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (sheetContext) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  4,
                  20,
                  20 + MediaQuery.viewInsetsOf(context).bottom,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        check.metalName ?? '',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        check.checkDateText ?? '',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                        initialValue: selectedReason.isEmpty
                            ? null
                            : selectedReason,
                        decoration: const InputDecoration(
                          labelText: '한계 기준 이탈 사유',
                          border: OutlineInputBorder(),
                        ),
                        items: reasons
                            .map(
                              (reason) => DropdownMenuItem<String>(
                                value: reason,
                                child: Text(reason),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setSheetState(() => selectedReason = value ?? '');
                        },
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        initialValue: actionContents,
                        minLines: 3,
                        maxLines: 6,
                        // 조치내용 입력
                        onChanged: (value) => actionContents = value,
                        decoration: const InputDecoration(
                          labelText: '개선조치 사항',
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () => Navigator.pop(sheetContext),
                              child: const Text('취소'),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: FilledButton.icon(
                              icon: const Icon(Icons.check_rounded),
                              label: const Text('적용'),
                              // 이탈 사유 선택
                              onPressed: selectedReason.trim().isEmpty
                                  ? null
                                  : () {
                                      Navigator.pop(
                                        sheetContext,
                                        MetalActionUpdate.fromCheck(
                                          check,
                                          basicReason: selectedReason,
                                          actionContents: actionContents,
                                        ),
                                      );
                                    },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );

    // 편집 취소
    if (update == null || !mounted) return;

    setState(() {
      final isOriginal =
          update.metalBasicReason == (check.basicReason ?? '') &&
          update.metalActionContents == (check.actionContents ?? '');

      // 원본 값
      if (isOriginal) {
        _actionChanges.remove(check.actionKey);
      } else {
        _actionChanges[check.actionKey] = update;
      }
    });
  }

  Future<void> _saveMetalActionChanges(List<MetalCheck> checks) async {
    final changes = checks
        .map((check) => _actionChanges[check.actionKey])
        .whereType<MetalActionUpdate>()
        .toList();

    // 변경 행 없음
    if (changes.isEmpty || _savingActions) return;

    // 이탈 사유
    if (changes.any((row) => row.metalBasicReason.trim().isEmpty)) {
      _showMessage('한계 기준 이탈 사유를 선택하세요.');
      return;
    }

    setState(() => _savingActions = true);

    try {
      final saved = await _service.saveMetalActions(
        widget.facility,
        _selectedDate,
        changes,
      );

      // 화면 종료
      if (!mounted) return;

      setState(() {
        _actionChanges.clear();
        _actionsFuture = _loadActions();
      });
      _showMessage('$saved건 저장 완료');
    } catch (e) {
      _showMessage(e.toString());
    } finally {
      // 화면 유지
      if (mounted) {
        setState(() => _savingActions = false);
      }
    }
  }

  Future<void> _startTest() async {
    final device = _selectedDevice;

    // 장비 선택
    if (device == null) {
      _showMessage('금속검출기를 선택하세요.');
      return;
    }

    setState(() {
      _testing = true;
    });

    try {
      final isNewTest = _testSaved || _metalCheckTime == null;
      final response = await _service.startMetalTest(widget.facility);

      // 화면 비활성
      if (!mounted || !_appActive) return;

      setState(() {
        // 신규 테스트
        if (isNewTest) {
          _selectedDate = DateTime.now();
          _metalCheckTime = response.searchDateTime;
          _stepIndex = 0;
          _stepDetections = List<bool?>.filled(_stepLabels.length, null);
          _stepTimedOut = List<bool>.filled(_stepLabels.length, false);
        }

        _session = response;
        _remainingSeconds = _testDurationSeconds;
        _waitingForSignal = true;
        _testSaved = false;
        _actionChanges.clear();
        _actionsFuture = _loadActions();
        _recordsFuture = _loadRecords();
      });
      _startPolling();
    } catch (e) {
      _cancelPolling();
      _showMessage(e.toString());
    } finally {
      // 화면 유지
      if (mounted) {
        setState(() => _testing = false);
      }
    }
  }

  Future<void> _checkStep() async {
    // 신호 대기
    if (_waitingForSignal) return;

    // 단계 시작
    if (_testSaved || _session == null) {
      await _startTest();
      return;
    }
  }

  Future<void> _pollStep() async {
    final device = _selectedDevice;
    final session = _session;

    // 폴링 조건
    if (!_appActive || !_waitingForSignal || _testing || _saving) return;

    // 장비 선택
    if (device == null || session == null) {
      _showMessage('금속검출기를 선택하세요.');
      return;
    }

    setState(() => _testing = true);

    try {
      final response = await _service.checkMetalTest(
        widget.facility,
        metalNo: device.metalNo,
        searchDateTime: session.searchDateTime,
        stepIndex: _stepIndex,
      );

      // 화면 비활성
      if (!mounted || !_appActive) return;

      setState(() {
        _session = response;
      });

      // 진행 순서
      final orderIndex = _stepOrder.indexOf(response.stepIndex);
      if (orderIndex < 0) {
        throw Exception('잘못된 시편테스트 단계입니다.');
      }

      final isFinished = orderIndex == _stepOrder.length - 1;
      final nextStepIndex = isFinished
          ? response.stepIndex
          : _stepOrder[orderIndex + 1];

      // 장비 대기
      if (!response.hasSignal) {
        // 카운트다운
        if (_remainingSeconds > 1) {
          setState(() => _remainingSeconds -= 1);
          return;
        }

        _cancelPolling();
        setState(() {
          _stepTimedOut[response.stepIndex] = true;
          _stepIndex = nextStepIndex;
          _remainingSeconds = 0;
          _waitingForSignal = false;
          _session = null;
        });

        // 최종 저장
        if (isFinished) {
          await _saveTest();
        }
        return;
      }

      _cancelPolling();
      setState(() {
        _stepDetections[response.stepIndex] = response.detected;
        _stepTimedOut[response.stepIndex] = false;
        _stepIndex = nextStepIndex;
        _remainingSeconds = 0;
        _waitingForSignal = false;
        _session = null;
      });

      // 최종 저장
      if (isFinished) {
        await _saveTest();
      }
    } catch (e) {
      _showMessage(e.toString());
    } finally {
      // 화면 유지
      if (mounted) {
        setState(() => _testing = false);
      }
    }
  }

  Future<void> _saveTest() async {
    final device = _selectedDevice;
    final checkTime = _metalCheckTime;

    // 저장 조건
    if (device == null || checkTime == null || checkTime.isEmpty) return;

    setState(() => _saving = true);
    _cancelPolling();

    try {
      await _service.saveMetalTest(
        widget.facility,
        metalNo: device.metalNo,
        metalCheckTime: checkTime,
        writer: widget.writerName,
        fe: _stepTimedOut[0] ? null : _stepDetections[0],
        feGoods: _stepTimedOut[1] ? null : _stepDetections[1],
        sus: _stepTimedOut[2] ? null : _stepDetections[2],
        susGoods: _stepTimedOut[3] ? null : _stepDetections[3],
        goods: _stepTimedOut[4] ? null : _stepDetections[4],
        metalDate: _selectedDate,
      );

      // 화면 종료
      if (!mounted) return;

      setState(() {
        _testSaved = true;
        _waitingForSignal = false;
        _actionChanges.clear();
        _actionsFuture = _loadActions();
        _recordsFuture = _loadRecords();
      });
      _showMessage('시편테스트 저장 완료');
    } catch (e) {
      _showMessage(e.toString());
    } finally {
      // 화면 유지
      if (mounted) {
        setState(() => _saving = false);
      }
    }
  }

  void _showMessage(String message) {
    // 화면 종료
    if (!mounted) return;

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  // 로그아웃
  Future<void> _logout() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('로그아웃'),
        content: const Text('로그아웃하고 저장된 자동 로그인 정보도 삭제할까요?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('취소'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('로그아웃'),
          ),
        ],
      ),
    );

    // 로그아웃 취소
    if (confirmed != true || !mounted) return;

    setState(() {
      _loggingOut = true;
      _appActive = false;
    });
    _cancelPolling();

    try {
      await _authStorage.clear();
    } catch (_) {
      // 화면 종료
      if (!mounted) return;

      setState(() {
        _loggingOut = false;
        _appActive =
            WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed;
      });

      // 신호 대기
      if (_appActive && _waitingForSignal) _startPolling();

      _showMessage('자동 로그인 정보를 삭제하지 못했습니다.');
      return;
    }

    try {
      await DirectDbClient.instance.disconnect();
    } catch (_) {
      // DB 연결 종료 실패
    }

    // 화면 종료
    if (!mounted) return;

    Navigator.of(context).pushNamedAndRemoveUntil(
      AppRoutes.login,
      (route) => false,
      arguments: widget.facility,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;

    return DefaultTabController(
      length: 2,
      initialIndex: widget.initialTabIndex.clamp(0, 1).toInt(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('금속검출'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.search_rounded), text: '조회'),
              Tab(icon: Icon(Icons.fact_check_rounded), text: '시편테스트'),
            ],
          ),
          actions: [
            IconButton(
              tooltip: '새로고침',
              icon: const Icon(Icons.refresh_rounded),
              onPressed: _loggingOut ? null : _refreshData,
            ),
            IconButton(
              tooltip: '로그아웃',
              onPressed: _loggingOut || _saving || _savingActions || _testing
                  ? null
                  : _logout,
              icon: _loggingOut
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator.adaptive(strokeWidth: 2),
                    )
                  : const Icon(Icons.logout_rounded),
            ),
          ],
        ),
        body: Container(
          color: isLight ? const Color(0xFFF1F5F9) : const Color(0xFF020617),
          child: TabBarView(
            children: [
              _buildCheckTab(theme, isLight),
              _buildTestTab(theme, isLight),
            ],
          ),
        ),
      ),
    );
  }

  void _startPolling() {
    _cancelPolling();

    // 앱 비활성
    if (!_appActive) return;

    _pollTimer = Timer.periodic(const Duration(seconds: 1), (_) => _pollStep());
  }

  void _cancelPolling() {
    _pollTimer?.cancel();
    _pollTimer = null;
  }

  Widget _buildCheckTab(ThemeData theme, bool isLight) {
    return RefreshIndicator(
      onRefresh: () async => _refreshData(),
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: _buildDateCard(theme, isLight)),
          FutureBuilder<MetalActionList>(
            future: _actionsFuture,
            builder: (context, snapshot) {
              // 조회 대기
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              }

              // 조회 오류
              if (snapshot.hasError) {
                return SliverFillRemaining(
                  child: Center(child: Text(snapshot.error.toString())),
                );
              }

              final actionList =
                  snapshot.data ??
                  const MetalActionList(canEdit: false, rows: []);
              final checks = actionList.rows;
              final detectedCount = checks.where((e) => e.isDetected).length;
              final specimenCount = checks.where((e) => e.isSpecimen).length;

              return SliverList(
                delegate: SliverChildListDelegate([
                  _buildActionToolbar(checks, actionList.canEdit, isLight),
                  const SizedBox(height: 12),
                  _buildSummaryRow(detectedCount, specimenCount),
                  const SizedBox(height: 12),
                  if (checks.isEmpty)
                    _buildEmpty('금속검출 조회 이력이 없습니다.')
                  else
                    ...checks.map(
                      (check) =>
                          _buildCheckTile(check, isLight, actionList.canEdit),
                    ),
                  const SizedBox(height: 24),
                ]),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionToolbar(
    List<MetalCheck> checks,
    bool canEdit,
    bool isLight,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: _boxDecoration(isLight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '검출 조치사항',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                const Spacer(),
                if (!canEdit)
                  _buildBadge('검토/승인 완료', const Color(0xFF64748B))
                else if (_actionChanges.isNotEmpty)
                  _buildBadge(
                    '${_actionChanges.length}건 변경',
                    const Color(0xFFD97706),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: SegmentedButton<String>(
                segments: const [
                  ButtonSegment(value: 'A', label: Text('전체')),
                  ButtonSegment(value: 'S', label: Text('시편/검출')),
                  ButtonSegment(value: 'G', label: Text('제품만')),
                ],
                selected: {_actionDivision},
                showSelectedIcon: false,
                onSelectionChanged: _savingActions
                    ? null
                    : _changeActionDivision,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                icon: _savingActions
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.save_rounded),
                label: Text(_savingActions ? '저장 중' : '변경사항 저장'),
                onPressed: !canEdit || _actionChanges.isEmpty || _savingActions
                    ? null
                    : () => _saveMetalActionChanges(checks),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestTab(ThemeData theme, bool isLight) {
    return FutureBuilder<List<MetalDevice>>(
      future: _devicesFuture,
      builder: (context, snapshot) {
        // 조회 대기
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        // 조회 오류
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        final devices = snapshot.data ?? [];

        // 장비 없음
        if (devices.isEmpty) {
          return _buildEmpty('등록된 금속검출기가 없습니다.');
        }

        return RefreshIndicator(
          onRefresh: () async => _refreshData(),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              _buildDevicePicker(devices, isLight),
              const SizedBox(height: 12),
              _buildTestPanel(isLight),
              const SizedBox(height: 16),
              _buildStepList(isLight),
              const SizedBox(height: 16),
              _buildRecordSection(isLight),
              const SizedBox(height: 24),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDateCard(ThemeData theme, bool isLight) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: _pickDate,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: _boxDecoration(isLight),
          child: Row(
            children: [
              Icon(
                Icons.calendar_today_rounded,
                size: 18,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 10),
              Text(
                DateFormat('yyyy-MM-dd').format(_selectedDate),
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryRow(int detectedCount, int specimenCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildSummaryCard('금속검출', detectedCount, const Color(0xFFDC2626)),
          const SizedBox(width: 10),
          _buildSummaryCard('시편신호', specimenCount, const Color(0xFF059669)),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String title, int count, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: color, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 6),
            Text(
              '$count건',
              style: TextStyle(
                color: color,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDevicePicker(List<MetalDevice> devices, bool isLight) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _boxDecoration(isLight),
      child: DropdownButtonFormField<int>(
        initialValue: _selectedDevice?.metalNo,
        decoration: const InputDecoration(
          labelText: '금속검출기',
          border: OutlineInputBorder(),
        ),
        items: devices
            .map(
              (device) => DropdownMenuItem<int>(
                value: device.metalNo,
                child: Text(device.metalName),
              ),
            )
            .toList(),
        onChanged: _waitingForSignal || _testing || _saving
            ? null
            : (value) {
                // 선택 취소
                if (value == null) return;

                final device = devices.firstWhere(
                  (item) => item.metalNo == value,
                  orElse: () => devices.first,
                );

                setState(() {
                  _selectedDevice = device;
                  _session = null;
                  _metalCheckTime = null;
                  _testSaved = false;
                  _waitingForSignal = false;
                  _stepIndex = 0;
                  _stepDetections = List<bool?>.filled(
                    _stepLabels.length,
                    null,
                  );
                  _stepTimedOut = List<bool>.filled(_stepLabels.length, false);
                  _remainingSeconds = _testDurationSeconds;
                  _recordsFuture = _loadRecords();
                });
              },
      ),
    );
  }

  Widget _buildTestPanel(bool isLight) {
    final buttonText = _testSaved
        ? '새 시편테스트 시작'
        : _waitingForSignal
        ? '신호 대기중 ($_remainingSeconds초)'
        : '${_stepLabels[_stepIndex]} 시작';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _boxDecoration(isLight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '시편테스트',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              icon: _testing || _saving
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.play_arrow_rounded),
              label: Text(_saving ? '저장 중' : buttonText),
              onPressed: _testing || _saving || _waitingForSignal
                  ? null
                  : _checkStep,
            ),
          ),
          if (_testSaved) ...[
            const SizedBox(height: 10),
            const Text(
              '저장 완료. 버튼을 누르면 새 테스트를 시작합니다.',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStepList(bool isLight) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _boxDecoration(isLight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '진행 순서',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(height: 12),
          ...List.generate(_stepOrder.length, (orderIndex) {
            final stepIndex = _stepOrder[orderIndex];
            return _buildStepTile(
              stepIndex,
              orderIndex + 1,
              _stepDetections[stepIndex],
              _stepTimedOut[stepIndex],
            );
          }),
        ],
      ),
    );
  }

  Widget _buildStepTile(
    int stepIndex,
    int displayNumber,
    bool? detected,
    bool timedOut,
  ) {
    final isCurrent =
        _session != null && !_testSaved && _stepIndex == stepIndex;
    final color = timedOut
        ? const Color(0xFFD97706)
        : detected == null
        ? Colors.grey
        : detected
        ? const Color(0xFFDC2626)
        : const Color(0xFF059669);
    final text = timedOut
        ? '시간초과'
        : detected == null
        ? '대기'
        : detected
        ? '검출'
        : '미검출';

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: isCurrent
                ? Theme.of(context).colorScheme.primary
                : color.withValues(alpha: 0.15),
            child: Text(
              '$displayNumber',
              style: TextStyle(
                color: isCurrent ? Colors.white : color,
                fontWeight: FontWeight.w900,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              _stepLabels[stepIndex],
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          _buildBadge(text, color),
        ],
      ),
    );
  }

  Widget _buildRecordSection(bool isLight) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _boxDecoration(isLight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '시편테스트 이력',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(height: 12),
          FutureBuilder<List<MetalTestRecord>>(
            future: _recordsFuture,
            builder: (context, snapshot) {
              // 조회 대기
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator.adaptive()),
                );
              }

              // 조회 오류
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }

              final records = snapshot.data ?? [];

              // 이력 없음
              if (records.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Center(child: Text('시편테스트 이력이 없습니다.')),
                );
              }

              return Column(children: records.map(_buildRecordTile).toList());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRecordTile(MetalTestRecord record) {
    final color = record.isGood
        ? const Color(0xFF059669)
        : const Color(0xFFDC2626);
    final time = record.metalCheckTime == null
        ? ''
        : DateFormat('HH:mm').format(record.metalCheckTime!);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  record.metalName,
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
              Text(time, style: const TextStyle(fontWeight: FontWeight.w800)),
              const SizedBox(width: 8),
              _buildBadge(record.resultFlag, color),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              _buildResultChip('Fe', record.metalFe),
              _buildResultChip('Fe+제품', record.metalFeGoods),
              _buildResultChip('Sus', record.metalSus),
              _buildResultChip('Sus+제품', record.metalSusGoods),
              _buildResultChip('제품', record.metalGoods),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCheckTile(MetalCheck check, bool isLight, bool canEdit) {
    final update = _actionChanges[check.actionKey];
    final basicReason = update?.metalBasicReason ?? check.basicReason ?? '';
    final actionContents =
        update?.metalActionContents ?? check.actionContents ?? '';
    final color = check.isDetected
        ? const Color(0xFFDC2626)
        : const Color(0xFF059669);
    final time = check.checkDate == null
        ? ''
        : DateFormat('HH:mm').format(check.checkDate!);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: _boxDecoration(isLight),
        child: Row(
          children: [
            Icon(
              check.isDetected
                  ? Icons.warning_rounded
                  : Icons.fact_check_rounded,
              color: color,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          check.metalName ?? '',
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      if (update != null)
                        _buildBadge('변경', const Color(0xFFD97706)),
                    ],
                  ),
                  if ((check.itemName ?? '').isNotEmpty)
                    Text(
                      check.itemName!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  if (basicReason.isNotEmpty)
                    Text(
                      '이탈 사유: $basicReason',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  if (actionContents.isNotEmpty)
                    Text(
                      '조치: $actionContents',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(time, style: const TextStyle(fontWeight: FontWeight.w800)),
                const SizedBox(height: 6),
                _buildBadge(check.metalResultText, color),
                if (check.isDetected) ...[
                  const SizedBox(height: 4),
                  IconButton(
                    tooltip: canEdit ? '조치사항 편집' : '검토/승인 완료',
                    visualDensity: VisualDensity.compact,
                    icon: Icon(
                      canEdit ? Icons.edit_rounded : Icons.lock_rounded,
                      size: 19,
                    ),
                    onPressed: canEdit
                        ? () => _editMetalAction(check, canEdit)
                        : null,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultChip(String label, bool? detected) {
    final color = detected == null
        ? const Color(0xFFD97706)
        : detected
        ? const Color(0xFFDC2626)
        : const Color(0xFF059669);
    final result = detected == null
        ? '시간초과'
        : detected
        ? '검출'
        : '미검출';
    return _buildBadge('$label $result', color);
  }

  Widget _buildBadge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget _buildEmpty(String text) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(bool isLight) {
    return BoxDecoration(
      color: isLight ? Colors.white : const Color(0xFF1E293B),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: Colors.white.withValues(alpha: isLight ? 0.7 : 0.1),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: isLight ? 0.04 : 0.2),
          blurRadius: 14,
          offset: const Offset(0, 8),
        ),
      ],
    );
  }
}
