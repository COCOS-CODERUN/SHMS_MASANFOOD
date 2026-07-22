import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SavedLogin {
  final String loginId;
  final String password;

  const SavedLogin({required this.loginId, required this.password});
}

class AuthStorage {
  static const _loginIdKey = 'masanfood_auto_login_id';
  static const _passwordKey = 'masanfood_auto_login_password';

  final FlutterSecureStorage _storage;

  const AuthStorage({
    FlutterSecureStorage storage = const FlutterSecureStorage(),
  }) : _storage = storage;

  // 자동로그인 조회
  Future<SavedLogin?> load() async {
    final loginId = await _storage.read(key: _loginIdKey);
    final password = await _storage.read(key: _passwordKey);

    // 저장정보 없음
    if (loginId == null ||
        loginId.trim().isEmpty ||
        password == null ||
        password.isEmpty) {
      await clear();
      return null;
    }

    return SavedLogin(loginId: loginId, password: password);
  }

  // 자동로그인 저장
  Future<void> save({required String loginId, required String password}) async {
    await _storage.write(key: _loginIdKey, value: loginId.trim());
    await _storage.write(key: _passwordKey, value: password.trim());
  }

  // 자동로그인 삭제
  Future<void> clear() async {
    await _storage.delete(key: _loginIdKey);
    await _storage.delete(key: _passwordKey);
  }
}
