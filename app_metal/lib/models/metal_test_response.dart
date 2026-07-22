class MetalTestResponse {
  final int returnValue;
  final String searchDateTime;
  final int stepIndex;
  final int nextStepIndex;
  final String stepLabel;
  final String nextStepLabel;
  final bool detected;
  final bool finished;
  final String resultFlag;

  const MetalTestResponse({
    required this.returnValue,
    required this.searchDateTime,
    required this.stepIndex,
    required this.nextStepIndex,
    required this.stepLabel,
    required this.nextStepLabel,
    required this.detected,
    required this.finished,
    required this.resultFlag,
  });

  factory MetalTestResponse.fromMap(Map<String, dynamic> map) {
    return MetalTestResponse(
      returnValue:
          int.tryParse(_value(map, 'returnValue')?.toString() ?? '') ?? 0,
      searchDateTime: _value(map, 'searchDateTime')?.toString() ?? '',
      stepIndex: int.tryParse(_value(map, 'stepIndex')?.toString() ?? '') ?? 0,
      nextStepIndex:
          int.tryParse(_value(map, 'nextStepIndex')?.toString() ?? '') ?? 0,
      stepLabel: _value(map, 'stepLabel')?.toString() ?? '',
      nextStepLabel: _value(map, 'nextStepLabel')?.toString() ?? '',
      detected: _parseBool(_value(map, 'detected')),
      finished: _parseBool(_value(map, 'finished')),
      resultFlag: _value(map, 'resultFlag')?.toString() ?? '',
    );
  }

  bool get hasSignal => returnValue == 1 || returnValue == 2;

  static bool _parseBool(dynamic value) {
    if (value == null) return false;
    if (value is bool) return value;

    final text = value.toString().trim().toLowerCase();
    return text == 'true' || text == '1' || text == '-1' || text == 'y';
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
