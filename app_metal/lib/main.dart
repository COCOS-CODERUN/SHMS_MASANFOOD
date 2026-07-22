import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/app_config.dart';
import 'config/app_routes.dart';
import 'config/third_party_licenses.dart';
import 'models/facility.dart';
import 'screens/login_screen.dart';
import 'services/direct_db_client.dart';

// 앱 시작
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  registerThirdPartyLicenses();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  // 앱 상태 등록
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  // 앱 상태 해제
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(DirectDbClient.instance.disconnect());
    super.dispose();
  }

  // 백그라운드 연결 종료
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 앱 백그라운드
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      unawaited(DirectDbClient.instance.disconnect());
    }
  }

  // 앱 화면
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HACCP Pro',
      debugShowCheckedModeBanner: false,
      // 한국어 로케일
      locale: const Locale('ko', 'KR'),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('ko', 'KR')],
      themeMode: ThemeMode.system,
      theme: _buildTheme(Brightness.light),
      darkTheme: _buildTheme(Brightness.dark),
      home: const AppLoader(),
      onGenerateRoute: (settings) {
        // 로그인 경로
        if (settings.name == AppRoutes.login) {
          final facility = settings.arguments;

          // 사업장 누락
          if (facility is! Facility) return null;

          return MaterialPageRoute<void>(
            settings: settings,
            builder: (_) => LoginScreen(facility: facility),
          );
        }

        return null;
      },
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    final isLight = brightness == Brightness.light;

    final primary = isLight ? const Color(0xFF6366F1) : const Color(0xFF818CF8);
    final accent = isLight ? const Color(0xFFEC4899) : const Color(0xFFF472B6);
    final surface = isLight
        ? Colors.white.withValues(alpha: 0.8)
        : const Color(0xFF1E293B).withValues(alpha: 0.7);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        secondary: accent,
        surface: isLight ? const Color(0xFFF8FAFC) : const Color(0xFF0F172A),
        onSurface: isLight ? const Color(0xFF1E293B) : Colors.white,
        brightness: brightness,
      ),
      scaffoldBackgroundColor: isLight
          ? const Color(0xFFF1F5F9)
          : const Color(0xFF020617),

      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: isLight ? const Color(0xFF0F172A) : Colors.white,
        systemOverlayStyle: isLight
            ? SystemUiOverlayStyle.dark
            : SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
          letterSpacing: -1,
          color: isLight ? const Color(0xFF0F172A) : Colors.white,
        ),
      ),

      cardTheme: CardThemeData(
        elevation: 0,
        color: surface,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: isLight ? Colors.white : Colors.white.withValues(alpha: 0.1),
            width: 1.5,
          ),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16,
            letterSpacing: -0.2,
          ),
          elevation: 8,
          shadowColor: primary.withValues(alpha: 0.4),
        ),
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w900,
          letterSpacing: -1.5,
          fontSize: 32,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: -1.0,
        ),
        titleLarge: TextStyle(fontWeight: FontWeight.w800, letterSpacing: -0.5),
        bodyLarge: TextStyle(
          fontSize: 16,
          height: 1.6,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class AppLoader extends StatefulWidget {
  const AppLoader({super.key});

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  late Future<AppConfig> _configFuture;

  @override
  void initState() {
    super.initState();
    _configFuture = AppConfig.load();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppConfig>(
      future: _configFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const _SplashScreen();
        }

        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  'LOAD ERROR: ${snapshot.error}',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }

        final config = snapshot.data!;
        // 로그인 진입
        return LoginScreen(facility: config.facilities.first);
      },
    );
  }
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6366F1), Color(0xFFA855F7), Color(0xFFEC4899)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.3),
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.security_rounded,
                size: 64,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'HACCP ALARM',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'PROFESSIONAL MONITORING',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.white.withValues(alpha: 0.7),
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
