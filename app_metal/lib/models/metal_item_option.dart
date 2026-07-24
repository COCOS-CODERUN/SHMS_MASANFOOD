import 'package:mssql_connection/mssql_connection.dart';

class MetalItemOption {
  final String itemId;
  final String itemName;
  final String remarks;

  const MetalItemOption({
    required this.itemId,
    required this.itemName,
    required this.remarks,
  });

  // DB 결과 변환
  factory MetalItemOption.fromMap(Map<String, dynamic> map) {
    return MetalItemOption(
      itemId: '${_value(map, 'ItemID') ?? ''}'.trim(),
      itemName: restoreCp949Mojibake('${_value(map, 'ItemName') ?? ''}'),
      remarks: restoreCp949Mojibake('${_value(map, 'Remarks') ?? ''}').trim(),
    );
  }

  // 컬럼값 조회
  static Object? _value(Map<String, dynamic> map, String key) {
    // 원본 컬럼명
    if (map.containsKey(key)) return map[key];

    final normalizedKey = key.toLowerCase();

    for (final entry in map.entries) {
      // 대소문자 차이
      if (entry.key.toLowerCase() == normalizedKey) return entry.value;
    }

    return null;
  }
}
