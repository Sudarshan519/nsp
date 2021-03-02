import 'package:auto_route/auto_route_annotations.dart';
import 'package:wallet_app/presentation/pages/auth/forgot_password_screen.dart';
import 'package:wallet_app/presentation/pages/auth/login_screen.dart';
import 'package:wallet_app/presentation/pages/auth/register_screen.dart';
import 'package:wallet_app/presentation/pages/auth/validate_user_screen.dart';
import 'package:wallet_app/presentation/pages/splash/splash_screen.dart';
import 'package:wallet_app/presentation/pages/tab_bar/tab_bar_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: ForgotPasswordPage),
    MaterialRoute(page: VerifyUserPage),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: TabBarScreen),
  ],
)
class $Router {
  SplashScreen splashScreen;
}
