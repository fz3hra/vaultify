import 'package:flutter_test/flutter_test.dart';
import 'package:vaultify/app/app.dart';
import 'package:vaultify/features/home/presentation/pages/vaultify_home.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const Vaultify());
      expect(find.byType(VaultifyHome), findsOneWidget);
    });
  });
}
