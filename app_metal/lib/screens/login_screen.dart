import 'package:flutter/material.dart';
import '../models/app_user.dart';
import '../models/facility.dart';
import 'metal_detection_screen.dart';
import '../services/auth_storage.dart';
import '../services/db_service.dart';

class LoginScreen extends StatefulWidget {
  final Facility facility;

  const LoginScreen({super.key, required this.facility});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _loginIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authStorage = const AuthStorage();
  final _service = DbService();
  bool _loading = false;
  bool _obscurePassword = true;
  bool _autoLogin = false;
  bool _checkingAutoLogin = true;
  bool _updatingAutoLogin = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    // 자동로그인 확인
    _restoreAutoLogin();
  }

  @override
  void dispose() {
    _loginIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // 자동로그인 복원
  Future<void> _restoreAutoLogin() async {
    try {
      final savedLogin = await _authStorage.load();

      // 화면 종료
      if (!mounted) return;

      // 저장정보 없음
      if (savedLogin == null) {
        setState(() => _checkingAutoLogin = false);
        return;
      }

      _loginIdController.text = savedLogin.loginId;
      setState(() {
        _autoLogin = true;
        _checkingAutoLogin = false;
      });
      await _login(
        validateInput: false,
        automatic: true,
        savedLoginId: savedLogin.loginId,
        savedPassword: savedLogin.password,
      );
    } catch (_) {
      try {
        await _authStorage.clear();
      } catch (_) {
        // 보안 저장소 정리 실패
      }

      // 화면 종료
      if (!mounted) return;

      setState(() {
        _autoLogin = false;
        _checkingAutoLogin = false;
        _errorMessage = '자동 로그인 정보를 불러오지 못했습니다.';
      });
    }
  }

  // 로그인 처리
  Future<void> _login({
    bool validateInput = true,
    bool automatic = false,
    String? savedLoginId,
    String? savedPassword,
  }) async {
    // 로그인 진행 중
    if (_loading || _updatingAutoLogin) return;

    // 입력 검증
    if (validateInput && !_formKey.currentState!.validate()) return;

    final loginId = savedLoginId ?? _loginIdController.text;
    final password = savedPassword ?? _passwordController.text;

    FocusScope.of(context).unfocus();
    setState(() {
      _loading = true;
      _errorMessage = null;
    });

    try {
      final user = await _service.login(
        widget.facility,
        loginId: loginId,
        password: password,
      );

      // 자동로그인 사용
      if (_autoLogin) {
        try {
          await _authStorage.save(loginId: loginId, password: password);
        } catch (_) {
          throw Exception('자동 로그인 정보를 저장하지 못했습니다.');
        }
      } else {
        try {
          await _authStorage.clear();
        } catch (_) {
          // 미사용 저장정보 정리 실패
        }
      }

      // 화면 종료
      if (!mounted) return;

      _moveToMetalDetection(user);
    } on LoginCredentialException catch (e) {
      // 자동 인증 실패
      if (automatic) {
        try {
          await _authStorage.clear();
        } catch (_) {
          // 보안 저장소 정리 실패
        }
      }

      // 화면 종료
      if (!mounted) return;

      setState(() {
        // 저장정보 초기화
        if (automatic) {
          _autoLogin = false;
          _passwordController.clear();
        }
        _errorMessage = e.toString();
      });
    } catch (e) {
      // 화면 종료
      if (!mounted) return;

      setState(() {
        _errorMessage = e.toString().replaceFirst('Exception: ', '');
      });
    } finally {
      // 화면 유지
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  // 자동로그인 변경
  Future<void> _changeAutoLogin(bool? value) async {
    // 저장정보 변경 중
    if (_loading || _updatingAutoLogin) return;

    final enabled = value ?? false;
    setState(() {
      _autoLogin = enabled;
      _updatingAutoLogin = !enabled;
      _errorMessage = null;
    });

    // 자동로그인 사용
    if (enabled) return;

    try {
      await _authStorage.clear();
    } catch (_) {
      // 화면 종료
      if (!mounted) return;

      setState(() {
        _autoLogin = true;
        _updatingAutoLogin = false;
        _errorMessage = '자동 로그인 정보를 삭제하지 못했습니다.';
      });
      return;
    }

    // 화면 종료
    if (!mounted) return;

    setState(() => _updatingAutoLogin = false);
  }

  // 금속검출 화면
  void _moveToMetalDetection(AppUser user) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => MetalDetectionScreen(
          facility: widget.facility,
          writerName: user.name,
          initialTabIndex: 0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final background = isLight
        ? const Color(0xFFF4F7FA)
        : const Color(0xFF0B1220);
    final header = isLight ? const Color(0xFF14375F) : const Color(0xFF111827);
    final panel = isLight ? Colors.white : const Color(0xFF172033);
    final border = isLight ? const Color(0xFFD8E0EA) : const Color(0xFF334155);
    final primary = isLight ? const Color(0xFF1F6E8C) : const Color(0xFF38BDF8);

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Stack(
          children: [
            Container(height: 238, width: double.infinity, color: header),
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(22, 34, 22, 24),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 440),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _LoginHeader(primary: primary),
                      const SizedBox(height: 22),
                      Material(
                        color: panel,
                        elevation: isLight ? 12 : 0,
                        shadowColor: Colors.black.withValues(alpha: 0.14),
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: border),
                          ),
                          child: _checkingAutoLogin
                              ? const SizedBox(
                                  height: 220,
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircularProgressIndicator.adaptive(),
                                        SizedBox(height: 14),
                                        Text('자동 로그인 확인 중'),
                                      ],
                                    ),
                                  ),
                                )
                              : _buildLoginForm(
                                  context,
                                  primary,
                                  border,
                                  isLight,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginForm(
    BuildContext context,
    Color primary,
    Color border,
    bool isLight,
  ) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: primary.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.lock_person_outlined, color: primary),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'HACCP 로그인',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              IconButton(
                tooltip: '오픈소스 라이선스',
                visualDensity: VisualDensity.compact,
                onPressed: () {
                  // 오픈소스 라이선스
                  showLicensePage(
                    context: context,
                    applicationName: '스마트HACCP',
                  );
                },
                icon: const Icon(Icons.info_outline, size: 20),
              ),
            ],
          ),
          const SizedBox(height: 22),
          TextFormField(
            controller: _loginIdController,
            textInputAction: TextInputAction.next,
            decoration: _inputDecoration(
              label: '아이디',
              icon: Icons.person_outline,
              border: border,
              isLight: isLight,
            ),
            validator: (value) {
              // 아이디 입력
              if (value == null || value.trim().isEmpty) {
                return '아이디를 입력하세요.';
              }
              return null;
            },
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (_) =>
                _loading || _updatingAutoLogin ? null : _login(),
            decoration: _inputDecoration(
              label: '비밀번호',
              icon: Icons.lock_outline,
              border: border,
              isLight: isLight,
              suffixIcon: IconButton(
                tooltip: _obscurePassword ? '비밀번호 표시' : '비밀번호 숨김',
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: Icon(
                  _obscurePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
              ),
            ),
            validator: (value) {
              // 비밀번호 입력
              if (value == null || value.isEmpty) {
                return '비밀번호를 입력하세요.';
              }
              return null;
            },
          ),
          const SizedBox(height: 4),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _autoLogin,
            onChanged: _loading || _updatingAutoLogin ? null : _changeAutoLogin,
            title: const Text(
              '자동 로그인',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          if (_errorMessage != null) ...[
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
              decoration: BoxDecoration(
                color: const Color(0xFFDC2626).withValues(alpha: 0.09),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFDC2626).withValues(alpha: 0.24),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Color(0xFFDC2626),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _errorMessage!,
                      style: const TextStyle(
                        color: Color(0xFFDC2626),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 22),
          SizedBox(
            height: 52,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: _loading || _updatingAutoLogin ? null : _login,
              icon: _loading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.login),
              label: Text(_loading ? '확인 중' : '로그인'),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration({
    required String label,
    required IconData icon,
    required Color border,
    required bool isLight,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: isLight ? const Color(0xFFF8FAFC) : const Color(0xFF0F172A),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFF1F6E8C), width: 1.4),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFDC2626)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFDC2626), width: 1.4),
      ),
    );
  }
}

class _LoginHeader extends StatelessWidget {
  final Color primary;

  const _LoginHeader({required this.primary});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white.withValues(alpha: 0.16)),
          ),
          child: const Icon(
            Icons.health_and_safety_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(width: 14),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HACCP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 2),
              Text(
                '모바일 관리',
                style: TextStyle(
                  color: Color(0xFFC8D7E8),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 10,
          height: 54,
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
