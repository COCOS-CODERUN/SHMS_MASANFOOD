import 'package:mssql_connection/mssql_connection.dart';

class MetalTestRecord {
  final DateTime? metalCheckTime;
  final String metalName;
  final bool? metalFe;
  final bool? metalFeGoods;
  final bool? metalSus;
  final bool? metalSusGoods;
  final bool? metalGoods;
  final String resultFlag;

  const MetalTestRecord({
    required this.metalCheckTime,
    required this.metalName,
    required this.metalFe,
    required this.metalFeGoods,
    required this.metalSus,
    required this.metalSusGoods,
    required this.metalGoods,
    required this.resultFlag,
  });

  factory MetalTestRecord.fromMap(Map<String, dynamic> map) {
    return MetalTestRecord(
      metalCheckTime: _parseDateTime(_value(map, 'MetalCheckTime')),
      metalName: restoreCp949Mojibake(
        _value(map, 'MetalName')?.toString() ?? '',
      ),
      metalFe: _parseBool(_value(map, 'MetalFe')),
      metalFeGoods: _parseBool(_value(map, 'MetalFeGoods')),
      metalSus: _parseBool(_value(map, 'MetalSus')),
      metalSusGoods: _parseBool(_value(map, 'MetalSusGoods')),
      metalGoods: _parseBool(_value(map, 'MetalGoods')),
      resultFlag: restoreCp949Mojibake(
        _value(map, 'ResultFlag')?.toString() ?? '',
      ),
    );
  }

  bool get isGood => resultFlag.trim() == '적격';

  static bool? _parseBool(dynamic value) {
    if (value == null) return null;
    if (value is bool) return value;

    final text = value.toString().trim().toLowerCase();
    return text == 'true' || text == '1' || text == '-1' || text == 'y';
  }

  static DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;

    final text = value.toString().trim();
    return DateTime.tryParse(text) ??
        DateTime.tryParse(text.replaceFirst(' ', 'T'));
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
