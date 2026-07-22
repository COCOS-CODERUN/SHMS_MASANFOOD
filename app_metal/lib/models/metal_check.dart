import 'package:mssql_connection/mssql_connection.dart';

class MetalCheck {
  final DateTime? checkDate;
  final String? checkDateText;
  final String? metalNo;
  final String? metalName;
  final String? metalResult;
  final String? basicReason;
  final String? actionContents;
  final int itemId;
  final String? itemName;

  const MetalCheck({
    this.checkDate,
    this.checkDateText,
    this.metalNo,
    this.metalName,
    this.metalResult,
    this.basicReason,
    this.actionContents,
    this.itemId = 0,
    this.itemName,
  });

  factory MetalCheck.fromMap(Map<String, dynamic> map) {
    final checkDateText = _value(map, 'CheckDate')?.toString();

    return MetalCheck(
      checkDate: _parseDateTime(checkDateText),
      checkDateText: checkDateText,
      metalNo: _value(map, 'MetalNo')?.toString(),
      metalName: _legacyText(_value(map, 'MetalName')),
      metalResult: _legacyText(_value(map, 'MetalResult')),
      basicReason: _legacyText(
        _value(map, 'BasicReason') ?? _value(map, 'MetalBasicReason'),
      ),
      actionContents: _legacyText(_value(map, 'ActionContents')),
      itemId: int.tryParse(_value(map, 'ItemID')?.toString() ?? '') ?? 0,
      itemName: _legacyText(_value(map, 'ItemName')),
    );
  }

  String get _resultCode => (metalResult ?? '').trim().toUpperCase();

  bool get isDetected =>
      _resultCode == 'DETECTED' || metalResult?.trim() == '검출';
  bool get isSpecimen =>
      _resultCode == 'SPECIMEN' || metalResult?.trim() == '시편';

  String get actionKey => '${metalNo ?? ''}|${checkDateText ?? ''}|$itemId';

  String get metalResultText {
    if (isDetected) return '검출';
    if (isSpecimen) return '시편';
    return metalResult ?? '';
  }

  static DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;

    final text = value.toString().trim();
    return DateTime.tryParse(text) ??
        DateTime.tryParse(text.replaceFirst(' ', 'T'));
  }

  // CP949 업무문자 복원
  static String? _legacyText(dynamic value) {
    // NULL 유지
    if (value == null) return null;

    return restoreCp949Mojibake(value.toString());
  }

  static dynamic _value(Map<String, dynamic> map, String key) {
    if (map.containsKey(key)) return map[key];

    final lowerKey = key.toLowerCase();
    for (final entry in map.entries) {
      if (entry.key.toLowerCase() == lowerKey) return entry.value;
    }

    return null;
  }
}

class MetalActionList {
  final bool canEdit;
  final List<MetalCheck> rows;

  const MetalActionList({required this.canEdit, required this.rows});

  factory MetalActionList.fromMap(Map<String, dynamic> map) {
    final rows = map['rows'] as List<dynamic>? ?? const [];

    return MetalActionList(
      canEdit: _parseBool(map['canEdit']),
      rows: rows
          .map((row) => MetalCheck.fromMap(row as Map<String, dynamic>))
          .toList(),
    );
  }

  static bool _parseBool(dynamic value) {
    if (value is bool) return value;
    final text = value?.toString().trim().toLowerCase() ?? '';
    return text == 'true' || text == '1' || text == '-1' || text == 'y';
  }
}

class MetalActionUpdate {
  final int metalNo;
  final String metalCheckTime;
  final String metalName;
  final String metalCheckResult;
  final String metalBasicReason;
  final String metalActionContents;
  final int itemId;

  const MetalActionUpdate({
    required this.metalNo,
    required this.metalCheckTime,
    required this.metalName,
    required this.metalCheckResult,
    required this.metalBasicReason,
    required this.metalActionContents,
    required this.itemId,
  });

  factory MetalActionUpdate.fromCheck(
    MetalCheck check, {
    required String basicReason,
    required String actionContents,
  }) {
    return MetalActionUpdate(
      metalNo: int.tryParse(check.metalNo ?? '') ?? 0,
      metalCheckTime: check.checkDateText ?? '',
      metalName: check.metalName ?? '',
      metalCheckResult: check.metalResultText,
      metalBasicReason: basicReason,
      metalActionContents: actionContents,
      itemId: check.itemId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'metalNo': metalNo,
      'metalCheckTime': metalCheckTime,
      'metalName': metalName,
      'metalCheckResult': metalCheckResult,
      'metalBasicReason': metalBasicReason,
      'metalActionContents': metalActionContents,
      'itemId': itemId,
    };
  }
}
