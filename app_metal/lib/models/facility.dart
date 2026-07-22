class Facility {
  final String displayName;
  final String code;

  const Facility({required this.displayName, required this.code});

  // 사업장 설정
  factory Facility.fromJson(Map<String, dynamic> json) {
    return Facility(
      displayName: json['displayName'] as String,
      code: json['code'] as String? ?? '',
    );
  }
}
