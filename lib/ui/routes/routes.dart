import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/pages/add_balance/add_balance.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/esewa/esewa_topup_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/stripe_card_selection_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/stripe_new_card_payment_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/stripe_payment_page.dart';
import 'package:wallet_app/ui/pages/alerts/alerts_page.dart';
import 'package:wallet_app/ui/pages/alerts/alerts_tab_page.dart';
import 'package:wallet_app/ui/pages/alerts/detail/alert_detail_page.dart';
import 'package:wallet_app/ui/pages/auth/forgot_password_screen.dart';
import 'package:wallet_app/ui/pages/auth/login_screen.dart';
import 'package:wallet_app/ui/pages/auth/register_screen.dart';
import 'package:wallet_app/ui/pages/auth/validate_user_screen.dart';
import 'package:wallet_app/ui/pages/banner_detail_page/banner_detail_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/airlines/airlines_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/bus_ticket/bus_ticket_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/insurance/individual_insurance_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/insurance/insurance_list_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/internet/individual_isp_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/internet/isp_list_page.dart';
import 'package:wallet_app/ui/pages/home/widgets/utility_payment/detail_pages/topup/topup_page.dart';
import 'package:wallet_app/ui/pages/japanese_manner/japanese_manner_detail.dart';
import 'package:wallet_app/ui/pages/japanese_manner/japanese_manner_page.dart';
import 'package:wallet_app/ui/pages/news/detail_page/news_detail.dart';
import 'package:wallet_app/ui/pages/notification/notification_list.dart';
import 'package:wallet_app/ui/pages/partner_services/partner_service_payment/partner_service_payment.dart';
import 'package:wallet_app/ui/pages/partner_services/partner_services.dart';
import 'package:wallet_app/ui/pages/partner_services/service_detail.dart';
import 'package:wallet_app/ui/pages/pdf_viewer/pdf_viewer.dart';
import 'package:wallet_app/ui/pages/profile_page/profile_page.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/about/edit_basic_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/address/current_address/edit_current_address_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/address/contact_address/edit_contact_address_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/other/edit_other_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/qualification/edit_qualification_info.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/work/edit_work_info.dart';
import 'package:wallet_app/ui/pages/splash/splash_screen.dart';
import 'package:wallet_app/ui/pages/tab_bar/tab_bar_screen.dart';
import 'package:wallet_app/ui/pages/transactions/transaction_detail_page.dart';
import 'package:wallet_app/ui/pages/transactions/transactions_page.dart';
import 'package:wallet_app/ui/pages/webview/app_web_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: VerifyUserPage),
    AutoRoute(page: SignupPage),
    AutoRoute(page: TabBarPage),
    AutoRoute(page: EditBasicInfoFormPage),
    AutoRoute(page: EditCurrentAddressInfoFormPage),
    AutoRoute(page: EditContactAddressInfoFormPage),
    AutoRoute(page: EditWorkInfoFormPage),
    AutoRoute(page: EditAcademicInfoFormPage),
    AutoRoute(page: EditQualificationInfoFormPage),
    AutoRoute(page: EditOtherInfoFormPage),
    AutoRoute(page: NewsDetailPage),
    AutoRoute(page: AppWebViewPage),
    AutoRoute(page: ProfilePage),
    AutoRoute(page: PartnerServicesPage),
    AutoRoute(page: ServicesDetailPage),
    AutoRoute(page: JapaneseMannerPage),
    AutoRoute(page: JapaneseMannerDetailPage),
    AutoRoute(page: AlertsPage),
    AutoRoute(page: AlertsTabPage),
    AutoRoute(page: AlertDetailPage),
    AutoRoute(page: AddBalancePage),
    AutoRoute(page: StripePaymentCardSelectionPage),
    AutoRoute(page: StripeNewCardPaymentPage),
    AutoRoute(page: StripePaymentPage),
    AutoRoute(page: EsewaTopupPage),
    AutoRoute(page: BannerDetailPage),
    AutoRoute(page: PdfViewerPage),
    AutoRoute(page: TopUpPage),
    AutoRoute(page: PartnerServicePaymentPage),
    AutoRoute(page: AirLinesPage),
    AutoRoute(page: BusTicketPage),
    AutoRoute(page: IndividualInsurancePage),
    AutoRoute(page: InsuranceListPage),
    AutoRoute(page: ISPListPage),
    AutoRoute(page: IndividualISPPage),
    AutoRoute(page: TransactionPage),
    AutoRoute(page: TransactionDetailPage),
    AutoRoute(page: NotificationListPage),
  ],
)
class $AppRouter {}
