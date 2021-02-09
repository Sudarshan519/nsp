import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/presentation/widgets/loading_widget.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  MockBuildContext _context;

  setUp(() {
    _context = MockBuildContext();
  });

  testWidgets(
    'loading Page should contain a CircularProgressIndicator Widget',
    (WidgetTester tester) async {
      await tester.pumpWidget(loadingPage(_context));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'loading Page should contain a Center Widget',
    (WidgetTester tester) async {
      await tester.pumpWidget(loadingPage(_context));

      expect(find.byType(Center), findsOneWidget);
    },
  );

  testWidgets(
    'loading Page should contain a Padding Widget',
    (WidgetTester tester) async {
      await tester.pumpWidget(loadingPage(_context));

      expect(find.byType(Padding), findsOneWidget);
    },
  );
}
