import 'package:mssql_connection/mssql_connection.dart';

class MetalDevice {
  final int metalNo;
  final String metalName;
  final int testDurationSeconds;
  final bool communicationEnabled;

  const MetalDevice({
    required this.metalNo,
    required this.metalName,
    this.testDurationSeconds = 10,
    this.communicationEnabled = true,
  });

  factory MetalDevice.fromMap(Map<String, dynamic> map) {
    return MetalDevice(
      metalNo: int.tryParse(_value(map, 'MetalNo')?.toString() ?? '') ?? 0,
      metalName: restoreCp949Mojibake(
        _value(map, 'MetalName')?.toString() ?? '',
      ),
      testDurationSeconds: _durationSeconds(_value(map, 'MetalCheckTime')),
      communicationEnabled:
          '${_value(map, 'OnOffFlag') ?? ''}'.trim().toUpperCase() != 'N',
    );
  }

  // 장비별 대기시간
  static int _durationSeconds(dynamic value) {
    final seconds = double.tryParse('${value ?? ''}')?.round() ?? 10;
    return seconds > 0 ? seconds : 10;
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
