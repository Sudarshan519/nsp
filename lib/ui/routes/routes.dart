import 'package:auto_route/auto_route_annotations.dart';
import 'package:wallet_app/ui/pages/auth/forgot_password_screen.dart';
import 'package:wallet_app/ui/pages/auth/login_screen.dart';
import 'package:wallet_app/ui/pages/auth/register_screen.dart';
import 'package:wallet_app/ui/pages/auth/validate_user_screen.dart';
import 'package:wallet_app/ui/pages/home/detail_pages/japanese_manner_detail.dart';
import 'package:wallet_app/ui/pages/home/detail_pages/service_detail.dart';
import 'package:wallet_app/ui/pages/news/detail_page/news_detail.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/about/edit_basic_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/address/edit_address_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/other/edit_other_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/qualification/edit_qualification_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/work/edit_work_info.dart';
import 'package:wallet_app/ui/pages/splash/splash_screen.dart';
import 'package:wallet_app/ui/pages/tab_bar/tab_bar_screen.dart';
import 'package:wallet_app/ui/pages/webview/app_web_view.dart';

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
    MaterialRoute(page: EditQualificationInfoForm),
    MaterialRoute(page: EditOtherInfoForm),
    MaterialRoute(page: ServicesDetail),
    MaterialRoute(page: JapaneseMannerDetailPage),
    MaterialRoute(page: NewsDetail),
    MaterialRoute(page: AppWebView),
  ],
)
class $Router {
  SplashScreen splashScreen;
}
