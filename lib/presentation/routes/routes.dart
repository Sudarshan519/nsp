import 'package:auto_route/auto_route_annotations.dart';
import 'package:wallet_app/presentation/pages/auth/forgot_password_screen.dart';
import 'package:wallet_app/presentation/pages/auth/login_screen.dart';
import 'package:wallet_app/presentation/pages/auth/register_screen.dart';
import 'package:wallet_app/presentation/pages/auth/validate_user_screen.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/about/edit_basic_info.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/address/edit_address_info.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/work/edit_work_info.dart';
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
    MaterialRoute(page: EditBasicInfoForm),
    MaterialRoute(page: EditAddressInfoForm),
    MaterialRoute(page: EditWorkInfoForm),
    MaterialRoute(page: EditAcademicInfoForm),
  ],
)
class $Router {
  SplashScreen splashScreen;
}
