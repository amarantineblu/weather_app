import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/main.dart';

void main() {
  testWidgets('Preloader Page renders', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(); // initial frame
    await tester.pump(const Duration(seconds: 2));
    expect(find.text('Preloader Page'), findsOneWidget);
  });

  testWidgets('Renders Home Page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.text('Berlin, Germany'), findsOneWidget);
  });
}
