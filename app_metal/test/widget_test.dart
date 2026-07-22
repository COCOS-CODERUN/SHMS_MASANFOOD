import 'package:flutter_test/flutter_test.dart';

import 'package:alarm_new/main.dart';

void main() {
  testWidgets('로그인 화면 표시', (WidgetTester tester) async {
    // 앱 로드
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('로그인'), findsOneWidget);
    expect(find.text('오픈소스 라이선스'), findsOneWidget);
  });
}
