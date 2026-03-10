import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/main.dart';

void main() {
  testWidgets('Preloader Page renders', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(); // initial frame
    expect(find.text('Preloader Page'), findsOneWidget);
  });

  // testWidgets('Home Page renders after navigation', (
  //   WidgetTester tester,
  // ) async {
  //   await tester.pumpWidget(const MyApp());
  //   await tester.pump(const Duration(seconds: 3)); // wait for timer/navigation
  //   await tester.pumpAndSettle(); // settle animations
  //   expect(find.text('Weather App Home Page'), findsOneWidget);
  // });
}
