class AppUser {
  final int userId;
  final String loginId;
  final String name;
  final bool reviewYn;
  final bool confirmYn;
  final bool alarm;

  const AppUser({
    required this.userId,
    required this.loginId,
    required this.name,
    required this.reviewYn,
    required this.confirmYn,
    required this.alarm,
  });

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      userId: int.tryParse('${map['userId'] ?? 0}') ?? 0,
      loginId: '${map['loginId'] ?? ''}',
      name: '${map['name'] ?? ''}',
      reviewYn: _toBool(map['reviewYn']),
      confirmYn: _toBool(map['confirmYn']),
      alarm: _toBool(map['alarm']),
    );
  }

  static bool _toBool(Object? value) {
    final text = '$value'.toLowerCase();
    return text == 'true' || text == '1' || text == 'y';
  }
}
