import 'package:auto_route/auto_route_annotations.dart';
import 'package:wallet_app/presentation/pages/auth/login_screen.dart';
import 'package:wallet_app/presentation/pages/auth/register_screen.dart';
import 'package:wallet_app/presentation/pages/tab_bar/tab_bar_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: SignupPage),
    MaterialRoute(page: TabBarScreen),
  ],
)
class $Router {
  LoginPage loginPage;
}
