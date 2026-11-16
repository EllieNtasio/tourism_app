import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tourism_app/app/app.dart';

void main() {
  testWidgets('app starts on the home screen', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: TourismApp()));
    await tester.pumpAndSettle();

    expect(find.text('Tourism App'), findsOneWidget);
    expect(find.textContaining('coming soon'), findsOneWidget);
  });
}
