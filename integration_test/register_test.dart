// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';
// import 'package:wallet_app/app/wallet_app.dart';
// // import 'package:wallet_app/main.dart' as app;

// void main() {
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();

//   final createAnAccount = find.text("Create an account");

//   // setUpAll(() {});

//   // testWidgets('should redirect to Login Page page when clicked Login button',
//   //     (WidgetTester tester) async {
//   //   await tester.pumpWidget(WalletApp());

//   //   await tester.tap(createAnAccount);
//   //   await tester.pumpAndSettle();

//   //   expect(find.byType(SignupPage), findsOneWidget);
//   //   expect(find.byType(LoginPage), findsNothing);

//   //   final loginButton = find.text("Login");

//   //   await tester.tap(loginButton);
//   //   await tester.pumpAndSettle();

//   //   expect(find.byType(SignupPage), findsNothing);
//   //   expect(find.byType(LoginPage), findsOneWidget);
//   // });

//   testWidgets('should redirect to Login Page page when clicked Back Arrow',
//       (WidgetTester tester) async {
//     await tester.pumpWidget(WalletApp());

//     await tester.tap(createAnAccount);
//     await tester.pumpAndSettle();

//     // final backButtonInkWell = find.byType(InkWell);
//     final backButton = SvgPicture.asset(
//       "assets/images/navigation_bar/back-black.svg",
//     );

//     final backButtonWidget = find.byWidget(backButton);

//     expect(backButtonWidget, findsOneWidget);

//     // await tester.tap(backButton);
//     // await tester.pumpAndSettle();

//     // expect(find.byType(SignupPage), findsNothing);
//     // expect(find.byType(LoginPage), findsOneWidget);
//   });
// }
