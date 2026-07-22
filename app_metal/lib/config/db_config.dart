class DbConfig {
  // DB 연결값
  static const String dbHost = '211.57.200.50';
  static const String dbPort = '18068';
  static const String dbName = 'SHMS_MASANFOOD';
  static const String dbUser = 'MASANFOOD';
  static const String dbPassword = 'MASANFOOD_2709k!';
  static const int dbTimeoutSeconds = 15;

  final String host;
  final String port;
  final String databaseName;
  final String username;
  final String password;
  final int timeoutSeconds;

  const DbConfig({
    required this.host,
    required this.port,
    required this.databaseName,
    required this.username,
    required this.password,
    required this.timeoutSeconds,
  });

  // DB 소스 설정
  factory DbConfig.fromSource() {
    return DbConfig(
      host: dbHost.trim(),
      port: dbPort.trim(),
      databaseName: dbName.trim(),
      username: dbUser.trim(),
      password: dbPassword,
      timeoutSeconds: dbTimeoutSeconds,
    );
  }

  // DB 설정 검증
  void validate() {
    final portNumber = int.tryParse(port);

    // 서버 주소
    if (host.isEmpty) throw Exception('DB 서버 설정이 필요합니다.');

    // 포트 번호
    if (portNumber == null || portNumber < 1 || portNumber > 65535) {
      throw Exception('DB 포트 설정이 올바르지 않습니다.');
    }

    // DB 이름
    if (databaseName.isEmpty) {
      throw Exception('DB 이름 설정이 필요합니다.');
    }

    // DB 계정
    if (username.isEmpty) throw Exception('DB 계정 설정이 필요합니다.');

    // DB 비밀번호
    if (password.isEmpty) {
      throw Exception('DB 비밀번호 설정이 필요합니다.');
    }

    // 연결 시간
    if (timeoutSeconds < 1) {
      throw Exception('DB 제한시간 설정이 올바르지 않습니다.');
    }
  }
}
