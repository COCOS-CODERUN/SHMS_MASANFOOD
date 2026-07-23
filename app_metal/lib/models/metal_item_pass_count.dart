import 'package:mssql_connection/mssql_connection.dart';

class MetalItemPassCount {
  final String itemName;
  final int count;

  const MetalItemPassCount({required this.itemName, required this.count});

  // DB 결과 변환
  factory MetalItemPassCount.fromMap(Map<String, dynamic> map) {
    return MetalItemPassCount(
      itemName: restoreCp949Mojibake('${_value(map, 'ItemName') ?? ''}'),
      count: int.tryParse('${_value(map, 'Cnt') ?? 0}') ?? 0,
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
