import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:wallet_app/main.dart' as app;
import 'package:wallet_app/presentation/pages/auth/login_screen.dart';
import 'package:wallet_app/presentation/pages/auth/register_screen.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/input_text_widget.dart';
// import 'package:wallet_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should display error message when email is empty',
      (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    final emailTextField = find.byType(InputTextWidget).first;
    final passwordTextField = find.byType(InputTextWidget).last;

    await tester.enterText(emailTextField, "asis.adh@gmail.com");
    await tester.enterText(passwordTextField, "Newitventure");

    await tester.pumpAndSettle();

    expect(find.text('asis.adh@gmail.com'), findsOneWidget);
    expect(find.text('Newitventure'), findsOneWidget);
  });

  testWidgets('should redirect to Sign up page when clicked Create an Account',
      (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    final createAnAccount = find.text("Create an account");
    await tester.tap(createAnAccount);

    await tester.pumpAndSettle();

    expect(find.byType(SignupPage), findsOneWidget);
    expect(find.byType(LoginPage), findsNothing);
  });
}
