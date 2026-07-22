import 'package:mssql_connection/mssql_connection.dart';

class MetalDevice {
  final int metalNo;
  final String metalName;

  const MetalDevice({required this.metalNo, required this.metalName});

  factory MetalDevice.fromMap(Map<String, dynamic> map) {
    return MetalDevice(
      metalNo: int.tryParse(_value(map, 'MetalNo')?.toString() ?? '') ?? 0,
      metalName: restoreCp949Mojibake(
        _value(map, 'MetalName')?.toString() ?? '',
      ),
    );
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
