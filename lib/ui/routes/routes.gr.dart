// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/alerts/domain/entity/alert_model.dart' as _i48;
import '../../features/japanese_manners/domain/entities/japanese_manner.dart'
    as _i47;
import '../../features/load_balance/domain/entities/payment_method.dart'
    as _i49;
import '../../features/news/domain/entity/news_item.dart' as _i45;
import '../../features/notifications/domain/entity/notification_item.dart'
    as _i53;
import '../../features/partner_services/domain/entities/service_packages.dart'
    as _i52;
import '../../features/partner_services/domain/entities/services.dart' as _i46;
import '../../features/resume/domain/entities/academic_history.dart' as _i43;
import '../../features/resume/domain/entities/personal_info.dart' as _i41;
import '../../features/resume/domain/entities/qualification_history.dart'
    as _i44;
import '../../features/resume/domain/entities/work_history.dart' as _i42;
import '../../features/transaction/domain/entity/transaction_item.dart' as _i51;
import '../../features/utility_payments/data/models/utility_payments_model.dart'
    as _i50;
import '../pages/add_balance/add_balance.dart' as _i26;
import '../pages/add_balance/payment_page/esewa/esewa_topup_page.dart' as _i30;
import '../pages/add_balance/payment_page/stripe/stripe_card_selection_page.dart'
    as _i27;
import '../pages/add_balance/payment_page/stripe/stripe_new_card_payment_page.dart'
    as _i28;
import '../pages/add_balance/payment_page/stripe/stripe_save_card_payment_page.dart'
    as _i29;
import '../pages/alerts/alerts_page.dart' as _i23;
import '../pages/alerts/alerts_tab_page.dart' as _i24;
import '../pages/alerts/detail/alert_detail_page.dart' as _i25;
import '../pages/auth/forgot_password_screen.dart' as _i5;
import '../pages/auth/login_screen.dart' as _i4;
import '../pages/auth/register_screen.dart' as _i7;
import '../pages/auth/validate_user_screen.dart' as _i6;
import '../pages/banner_detail_page/banner_detail_page.dart' as _i31;
import '../pages/coupons/coupon_page.dart' as _i39;
import '../pages/japanese_manner/japanese_manner_detail.dart' as _i22;
import '../pages/japanese_manner/japanese_manner_page.dart' as _i21;
import '../pages/news/detail_page/news_detail.dart' as _i16;
import '../pages/notification/notification_detail_page.dart' as _i40;
import '../pages/notification/notification_list.dart' as _i37;
import '../pages/partner_services/buy_package.dart' as _i38;
import '../pages/partner_services/partner_service_payment/partner_service_payment.dart'
    as _i34;
import '../pages/partner_services/partner_services.dart' as _i19;
import '../pages/partner_services/service_detail.dart' as _i20;
import '../pages/pdf_viewer/pdf_viewer.dart' as _i32;
import '../pages/profile_page/profile_page.dart' as _i18;
import '../pages/resume/resume_tab_pages/about/edit_basic_info.dart' as _i9;
import '../pages/resume/resume_tab_pages/academics/edit_academic_info.dart'
    as _i13;
import '../pages/resume/resume_tab_pages/address/contact_address/edit_contact_address_info.dart'
    as _i11;
import '../pages/resume/resume_tab_pages/address/current_address/edit_current_address_info.dart'
    as _i10;
import '../pages/resume/resume_tab_pages/other/edit_other_info.dart' as _i15;
import '../pages/resume/resume_tab_pages/qualification/edit_qualification_info.dart'
    as _i14;
import '../pages/resume/resume_tab_pages/work/edit_work_info.dart' as _i12;
import '../pages/splash/splash_screen.dart' as _i3;
import '../pages/tab_bar/tab_bar_screen.dart' as _i8;
import '../pages/transactions/transaction_detail_page.dart' as _i36;
import '../pages/transactions/transactions_page.dart' as _i35;
import '../pages/utility_payment/detail_pages/topup/topup_page.dart' as _i33;
import '../pages/webview/app_web_view.dart' as _i17;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.LoginPage();
        }),
    ForgotPasswordRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ForgotPasswordPage();
        }),
    VerifyUserRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VerifyUserRouteArgs>();
          return _i6.VerifyUserPage(key: args.key, email: args.email);
        }),
    SignupRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SignupPage();
        }),
    TabBarRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.TabBarPage();
        }),
    EditBasicInfoFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EditBasicInfoFormRouteArgs>();
          return _i9.EditBasicInfoFormPage(
              key: args.key,
              info: args.info,
              listOfNationality: args.listOfNationality,
              listOfProfession: args.listOfProfession,
              lang: args.lang);
        }),
    EditCurrentAddressInfoFormRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<EditCurrentAddressInfoFormRouteArgs>();
              return _i10.EditCurrentAddressInfoFormPage(
                  key: args.key,
                  info: args.info,
                  lang: args.lang,
                  prefecture: args.prefecture,
                  provinces: args.provinces);
            }),
    EditContactAddressInfoFormRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<EditContactAddressInfoFormRouteArgs>();
              return _i11.EditContactAddressInfoFormPage(
                  key: args.key,
                  info: args.info,
                  lang: args.lang,
                  prefecture: args.prefecture,
                  provinces: args.provinces);
            }),
    EditWorkInfoFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EditWorkInfoFormRouteArgs>();
          return _i12.EditWorkInfoFormPage(
              key: args.key,
              info: args.info,
              typeOfCompanyList: args.typeOfCompanyList,
              lang: args.lang);
        }),
    EditAcademicInfoFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EditAcademicInfoFormRouteArgs>();
          return _i13.EditAcademicInfoFormPage(
              key: args.key,
              info: args.info,
              listOfSubjects: args.listOfSubjects,
              lang: args.lang);
        }),
    EditQualificationInfoFormRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<EditQualificationInfoFormRouteArgs>();
              return _i14.EditQualificationInfoFormPage(
                  key: args.key, info: args.info, lang: args.lang);
            }),
    EditOtherInfoFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EditOtherInfoFormRouteArgs>();
          return _i15.EditOtherInfoFormPage(
              key: args.key,
              info: args.info,
              listOfLanguages: args.listOfLanguages,
              listOfHobbies: args.listOfHobbies,
              listOfSkills: args.listOfSkills,
              lang: args.lang);
        }),
    NewsDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<NewsDetailRouteArgs>();
          return _i16.NewsDetailPage(key: args.key, newsItem: args.newsItem);
        }),
    AppWebViewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AppWebViewRouteArgs>();
          return _i17.AppWebViewPage(
              key: args.key, url: args.url, title: args.title);
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i18.ProfilePage();
        }),
    PartnerServicesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PartnerServicesRouteArgs>(
              orElse: () => const PartnerServicesRouteArgs());
          return _i19.PartnerServicesPage(
              key: args.key, categoryName: args.categoryName);
        }),
    ServicesDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ServicesDetailRouteArgs>();
          return _i20.ServicesDetailPage(
              key: args.key, services: args.services);
        }),
    JapaneseMannerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<JapaneseMannerRouteArgs>(
              orElse: () => const JapaneseMannerRouteArgs());
          return _i21.JapaneseMannerPage(
              key: args.key, categoryName: args.categoryName);
        }),
    JapaneseMannerDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<JapaneseMannerDetailRouteArgs>();
          return _i22.JapaneseMannerDetailPage(
              key: args.key, japaneseManner: args.japaneseManner);
        }),
    AlertsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i23.AlertsPage();
        }),
    AlertsTabRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i24.AlertsTabPage();
        }),
    AlertDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AlertDetailRouteArgs>();
          return _i25.AlertDetailPage(key: args.key, alert: args.alert);
        }),
    AddBalanceRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddBalanceRouteArgs>();
          return _i26.AddBalancePage(
              key: args.key,
              conversionRate: args.conversionRate,
              isVerified: args.isVerified);
        }),
    StripePaymentCardSelectionRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<StripePaymentCardSelectionRouteArgs>();
              return _i27.StripePaymentCardSelectionPage(
                  key: args.key, balance: args.balance, cards: args.cards);
            }),
    StripeNewCardPaymentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<StripeNewCardPaymentRouteArgs>();
          return _i28.StripeNewCardPaymentPage(
              key: args.key, balance: args.balance);
        }),
    StripeSaveCardPaymentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<StripeSaveCardPaymentRouteArgs>();
          return _i29.StripeSaveCardPaymentPage(
              key: args.key, balance: args.balance, card: args.card);
        }),
    EsewaTopupRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EsewaTopupRouteArgs>();
          return _i30.EsewaTopupPage(
              key: args.key,
              method: args.method,
              conversionRate: args.conversionRate,
              isVerified: args.isVerified,
              balance: args.balance);
        }),
    BannerDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i31.BannerDetailPage();
        }),
    PdfViewerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PdfViewerRouteArgs>();
          return _i32.PdfViewerPage(
              key: args.key, pdfUrl: args.pdfUrl, title: args.title);
        }),
    TopUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TopUpRouteArgs>();
          return _i33.TopUpPage(
              key: args.key,
              balance: args.balance,
              conversionRate: args.conversionRate,
              index: args.index,
              paymentData: args.paymentData);
        }),
    PartnerServicePaymentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PartnerServicePaymentRouteArgs>();
          return _i34.PartnerServicePaymentPage(
              key: args.key, title: args.title);
        }),
    TransactionRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i35.TransactionPage();
        }),
    TransactionDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TransactionDetailRouteArgs>();
          return _i36.TransactionDetailPage(key: args.key, item: args.item);
        }),
    TransactionDetailFromAPi.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TransactionDetailFromAPiArgs>();
          return _i36.TransactionDetailFromAPi(key: args.key, id: args.id);
        }),
    NotificationListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i37.NotificationListPage();
        }),
    BuyPackageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<BuyPackageRouteArgs>();
          return _i38.BuyPackagePage(
              key: args.key, package: args.package, services: args.services);
        }),
    CouponRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i39.CouponPage();
        }),
    NotificationDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<NotificationDetailRouteArgs>();
          return _i40.NotificationDetailPage(
              key: args.key, notification: args.notification);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i1.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-page'),
        _i1.RouteConfig(VerifyUserRoute.name, path: '/verify-user-page'),
        _i1.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i1.RouteConfig(TabBarRoute.name, path: '/tab-bar-page'),
        _i1.RouteConfig(EditBasicInfoFormRoute.name,
            path: '/edit-basic-info-form-page'),
        _i1.RouteConfig(EditCurrentAddressInfoFormRoute.name,
            path: '/edit-current-address-info-form-page'),
        _i1.RouteConfig(EditContactAddressInfoFormRoute.name,
            path: '/edit-contact-address-info-form-page'),
        _i1.RouteConfig(EditWorkInfoFormRoute.name,
            path: '/edit-work-info-form-page'),
        _i1.RouteConfig(EditAcademicInfoFormRoute.name,
            path: '/edit-academic-info-form-page'),
        _i1.RouteConfig(EditQualificationInfoFormRoute.name,
            path: '/edit-qualification-info-form-page'),
        _i1.RouteConfig(EditOtherInfoFormRoute.name,
            path: '/edit-other-info-form-page'),
        _i1.RouteConfig(NewsDetailRoute.name, path: '/news-detail-page'),
        _i1.RouteConfig(AppWebViewRoute.name, path: '/app-web-view-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i1.RouteConfig(PartnerServicesRoute.name,
            path: '/partner-services-page'),
        _i1.RouteConfig(ServicesDetailRoute.name,
            path: '/services-detail-page'),
        _i1.RouteConfig(JapaneseMannerRoute.name,
            path: '/japanese-manner-page'),
        _i1.RouteConfig(JapaneseMannerDetailRoute.name,
            path: '/japanese-manner-detail-page'),
        _i1.RouteConfig(AlertsRoute.name, path: '/alerts-page'),
        _i1.RouteConfig(AlertsTabRoute.name, path: '/alerts-tab-page'),
        _i1.RouteConfig(AlertDetailRoute.name, path: '/alert-detail-page'),
        _i1.RouteConfig(AddBalanceRoute.name, path: '/add-balance-page'),
        _i1.RouteConfig(StripePaymentCardSelectionRoute.name,
            path: '/stripe-payment-card-selection-page'),
        _i1.RouteConfig(StripeNewCardPaymentRoute.name,
            path: '/stripe-new-card-payment-page'),
        _i1.RouteConfig(StripeSaveCardPaymentRoute.name,
            path: '/stripe-save-card-payment-page'),
        _i1.RouteConfig(EsewaTopupRoute.name, path: '/esewa-topup-page'),
        _i1.RouteConfig(BannerDetailRoute.name, path: '/banner-detail-page'),
        _i1.RouteConfig(PdfViewerRoute.name, path: '/pdf-viewer-page'),
        _i1.RouteConfig(TopUpRoute.name, path: '/top-up-page'),
        _i1.RouteConfig(PartnerServicePaymentRoute.name,
            path: '/partner-service-payment-page'),
        _i1.RouteConfig(TransactionRoute.name, path: '/transaction-page'),
        _i1.RouteConfig(TransactionDetailRoute.name,
            path: '/transaction-detail-page'),
        _i1.RouteConfig(TransactionDetailFromAPi.name,
            path: '/transaction-detail-from-aPi'),
        _i1.RouteConfig(NotificationListRoute.name,
            path: '/notification-list-page'),
        _i1.RouteConfig(BuyPackageRoute.name, path: '/buy-package-page'),
        _i1.RouteConfig(CouponRoute.name, path: '/coupon-page'),
        _i1.RouteConfig(NotificationDetailRoute.name,
            path: '/notification-detail-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-page');

  static const String name = 'LoginRoute';
}

class ForgotPasswordRoute extends _i1.PageRouteInfo {
  const ForgotPasswordRoute() : super(name, path: '/forgot-password-page');

  static const String name = 'ForgotPasswordRoute';
}

class VerifyUserRoute extends _i1.PageRouteInfo<VerifyUserRouteArgs> {
  VerifyUserRoute({_i2.Key? key, required String email})
      : super(name,
            path: '/verify-user-page',
            args: VerifyUserRouteArgs(key: key, email: email));

  static const String name = 'VerifyUserRoute';
}

class VerifyUserRouteArgs {
  const VerifyUserRouteArgs({this.key, required this.email});

  final _i2.Key? key;

  final String email;
}

class SignupRoute extends _i1.PageRouteInfo {
  const SignupRoute() : super(name, path: '/signup-page');

  static const String name = 'SignupRoute';
}

class TabBarRoute extends _i1.PageRouteInfo {
  const TabBarRoute() : super(name, path: '/tab-bar-page');

  static const String name = 'TabBarRoute';
}

class EditBasicInfoFormRoute
    extends _i1.PageRouteInfo<EditBasicInfoFormRouteArgs> {
  EditBasicInfoFormRoute(
      {_i2.Key? key,
      required _i41.PersonalInfo info,
      required List<String> listOfNationality,
      required List<String> listOfProfession,
      required String lang})
      : super(name,
            path: '/edit-basic-info-form-page',
            args: EditBasicInfoFormRouteArgs(
                key: key,
                info: info,
                listOfNationality: listOfNationality,
                listOfProfession: listOfProfession,
                lang: lang));

  static const String name = 'EditBasicInfoFormRoute';
}

class EditBasicInfoFormRouteArgs {
  const EditBasicInfoFormRouteArgs(
      {this.key,
      required this.info,
      required this.listOfNationality,
      required this.listOfProfession,
      required this.lang});

  final _i2.Key? key;

  final _i41.PersonalInfo info;

  final List<String> listOfNationality;

  final List<String> listOfProfession;

  final String lang;
}

class EditCurrentAddressInfoFormRoute
    extends _i1.PageRouteInfo<EditCurrentAddressInfoFormRouteArgs> {
  EditCurrentAddressInfoFormRoute(
      {_i2.Key? key,
      required _i41.PersonalInfo info,
      required String lang,
      required List<String> prefecture,
      required List<String> provinces})
      : super(name,
            path: '/edit-current-address-info-form-page',
            args: EditCurrentAddressInfoFormRouteArgs(
                key: key,
                info: info,
                lang: lang,
                prefecture: prefecture,
                provinces: provinces));

  static const String name = 'EditCurrentAddressInfoFormRoute';
}

class EditCurrentAddressInfoFormRouteArgs {
  const EditCurrentAddressInfoFormRouteArgs(
      {this.key,
      required this.info,
      required this.lang,
      required this.prefecture,
      required this.provinces});

  final _i2.Key? key;

  final _i41.PersonalInfo info;

  final String lang;

  final List<String> prefecture;

  final List<String> provinces;
}

class EditContactAddressInfoFormRoute
    extends _i1.PageRouteInfo<EditContactAddressInfoFormRouteArgs> {
  EditContactAddressInfoFormRoute(
      {_i2.Key? key,
      required _i41.PersonalInfo info,
      required String lang,
      required List<String> prefecture,
      required List<String> provinces})
      : super(name,
            path: '/edit-contact-address-info-form-page',
            args: EditContactAddressInfoFormRouteArgs(
                key: key,
                info: info,
                lang: lang,
                prefecture: prefecture,
                provinces: provinces));

  static const String name = 'EditContactAddressInfoFormRoute';
}

class EditContactAddressInfoFormRouteArgs {
  const EditContactAddressInfoFormRouteArgs(
      {this.key,
      required this.info,
      required this.lang,
      required this.prefecture,
      required this.provinces});

  final _i2.Key? key;

  final _i41.PersonalInfo info;

  final String lang;

  final List<String> prefecture;

  final List<String> provinces;
}

class EditWorkInfoFormRoute
    extends _i1.PageRouteInfo<EditWorkInfoFormRouteArgs> {
  EditWorkInfoFormRoute(
      {_i2.Key? key,
      required _i42.WorkHistory info,
      required List<String> typeOfCompanyList,
      required String lang})
      : super(name,
            path: '/edit-work-info-form-page',
            args: EditWorkInfoFormRouteArgs(
                key: key,
                info: info,
                typeOfCompanyList: typeOfCompanyList,
                lang: lang));

  static const String name = 'EditWorkInfoFormRoute';
}

class EditWorkInfoFormRouteArgs {
  const EditWorkInfoFormRouteArgs(
      {this.key,
      required this.info,
      required this.typeOfCompanyList,
      required this.lang});

  final _i2.Key? key;

  final _i42.WorkHistory info;

  final List<String> typeOfCompanyList;

  final String lang;
}

class EditAcademicInfoFormRoute
    extends _i1.PageRouteInfo<EditAcademicInfoFormRouteArgs> {
  EditAcademicInfoFormRoute(
      {_i2.Key? key,
      required _i43.AcademicHistory info,
      required List<String> listOfSubjects,
      required String lang})
      : super(name,
            path: '/edit-academic-info-form-page',
            args: EditAcademicInfoFormRouteArgs(
                key: key,
                info: info,
                listOfSubjects: listOfSubjects,
                lang: lang));

  static const String name = 'EditAcademicInfoFormRoute';
}

class EditAcademicInfoFormRouteArgs {
  const EditAcademicInfoFormRouteArgs(
      {this.key,
      required this.info,
      required this.listOfSubjects,
      required this.lang});

  final _i2.Key? key;

  final _i43.AcademicHistory info;

  final List<String> listOfSubjects;

  final String lang;
}

class EditQualificationInfoFormRoute
    extends _i1.PageRouteInfo<EditQualificationInfoFormRouteArgs> {
  EditQualificationInfoFormRoute(
      {_i2.Key? key,
      required _i44.QualificationHistory info,
      required String lang})
      : super(name,
            path: '/edit-qualification-info-form-page',
            args: EditQualificationInfoFormRouteArgs(
                key: key, info: info, lang: lang));

  static const String name = 'EditQualificationInfoFormRoute';
}

class EditQualificationInfoFormRouteArgs {
  const EditQualificationInfoFormRouteArgs(
      {this.key, required this.info, required this.lang});

  final _i2.Key? key;

  final _i44.QualificationHistory info;

  final String lang;
}

class EditOtherInfoFormRoute
    extends _i1.PageRouteInfo<EditOtherInfoFormRouteArgs> {
  EditOtherInfoFormRoute(
      {_i2.Key? key,
      required _i41.PersonalInfo info,
      required List<String> listOfLanguages,
      required List<String> listOfHobbies,
      required List<String> listOfSkills,
      required String lang})
      : super(name,
            path: '/edit-other-info-form-page',
            args: EditOtherInfoFormRouteArgs(
                key: key,
                info: info,
                listOfLanguages: listOfLanguages,
                listOfHobbies: listOfHobbies,
                listOfSkills: listOfSkills,
                lang: lang));

  static const String name = 'EditOtherInfoFormRoute';
}

class EditOtherInfoFormRouteArgs {
  const EditOtherInfoFormRouteArgs(
      {this.key,
      required this.info,
      required this.listOfLanguages,
      required this.listOfHobbies,
      required this.listOfSkills,
      required this.lang});

  final _i2.Key? key;

  final _i41.PersonalInfo info;

  final List<String> listOfLanguages;

  final List<String> listOfHobbies;

  final List<String> listOfSkills;

  final String lang;
}

class NewsDetailRoute extends _i1.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({_i2.Key? key, required _i45.NewsItem newsItem})
      : super(name,
            path: '/news-detail-page',
            args: NewsDetailRouteArgs(key: key, newsItem: newsItem));

  static const String name = 'NewsDetailRoute';
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({this.key, required this.newsItem});

  final _i2.Key? key;

  final _i45.NewsItem newsItem;
}

class AppWebViewRoute extends _i1.PageRouteInfo<AppWebViewRouteArgs> {
  AppWebViewRoute({_i2.Key? key, required String url, required String title})
      : super(name,
            path: '/app-web-view-page',
            args: AppWebViewRouteArgs(key: key, url: url, title: title));

  static const String name = 'AppWebViewRoute';
}

class AppWebViewRouteArgs {
  const AppWebViewRouteArgs({this.key, required this.url, required this.title});

  final _i2.Key? key;

  final String url;

  final String title;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

class PartnerServicesRoute extends _i1.PageRouteInfo<PartnerServicesRouteArgs> {
  PartnerServicesRoute({_i2.Key? key, String? categoryName})
      : super(name,
            path: '/partner-services-page',
            args:
                PartnerServicesRouteArgs(key: key, categoryName: categoryName));

  static const String name = 'PartnerServicesRoute';
}

class PartnerServicesRouteArgs {
  const PartnerServicesRouteArgs({this.key, this.categoryName});

  final _i2.Key? key;

  final String? categoryName;
}

class ServicesDetailRoute extends _i1.PageRouteInfo<ServicesDetailRouteArgs> {
  ServicesDetailRoute({_i2.Key? key, required _i46.Services services})
      : super(name,
            path: '/services-detail-page',
            args: ServicesDetailRouteArgs(key: key, services: services));

  static const String name = 'ServicesDetailRoute';
}

class ServicesDetailRouteArgs {
  const ServicesDetailRouteArgs({this.key, required this.services});

  final _i2.Key? key;

  final _i46.Services services;
}

class JapaneseMannerRoute extends _i1.PageRouteInfo<JapaneseMannerRouteArgs> {
  JapaneseMannerRoute({_i2.Key? key, String? categoryName})
      : super(name,
            path: '/japanese-manner-page',
            args:
                JapaneseMannerRouteArgs(key: key, categoryName: categoryName));

  static const String name = 'JapaneseMannerRoute';
}

class JapaneseMannerRouteArgs {
  const JapaneseMannerRouteArgs({this.key, this.categoryName});

  final _i2.Key? key;

  final String? categoryName;
}

class JapaneseMannerDetailRoute
    extends _i1.PageRouteInfo<JapaneseMannerDetailRouteArgs> {
  JapaneseMannerDetailRoute(
      {_i2.Key? key, required _i47.JapaneseManner japaneseManner})
      : super(name,
            path: '/japanese-manner-detail-page',
            args: JapaneseMannerDetailRouteArgs(
                key: key, japaneseManner: japaneseManner));

  static const String name = 'JapaneseMannerDetailRoute';
}

class JapaneseMannerDetailRouteArgs {
  const JapaneseMannerDetailRouteArgs({this.key, required this.japaneseManner});

  final _i2.Key? key;

  final _i47.JapaneseManner japaneseManner;
}

class AlertsRoute extends _i1.PageRouteInfo {
  const AlertsRoute() : super(name, path: '/alerts-page');

  static const String name = 'AlertsRoute';
}

class AlertsTabRoute extends _i1.PageRouteInfo {
  const AlertsTabRoute() : super(name, path: '/alerts-tab-page');

  static const String name = 'AlertsTabRoute';
}

class AlertDetailRoute extends _i1.PageRouteInfo<AlertDetailRouteArgs> {
  AlertDetailRoute({_i2.Key? key, required _i48.Alert alert})
      : super(name,
            path: '/alert-detail-page',
            args: AlertDetailRouteArgs(key: key, alert: alert));

  static const String name = 'AlertDetailRoute';
}

class AlertDetailRouteArgs {
  const AlertDetailRouteArgs({this.key, required this.alert});

  final _i2.Key? key;

  final _i48.Alert alert;
}

class AddBalanceRoute extends _i1.PageRouteInfo<AddBalanceRouteArgs> {
  AddBalanceRoute(
      {_i2.Key? key, required double conversionRate, required bool isVerified})
      : super(name,
            path: '/add-balance-page',
            args: AddBalanceRouteArgs(
                key: key,
                conversionRate: conversionRate,
                isVerified: isVerified));

  static const String name = 'AddBalanceRoute';
}

class AddBalanceRouteArgs {
  const AddBalanceRouteArgs(
      {this.key, required this.conversionRate, required this.isVerified});

  final _i2.Key? key;

  final double conversionRate;

  final bool isVerified;
}

class StripePaymentCardSelectionRoute
    extends _i1.PageRouteInfo<StripePaymentCardSelectionRouteArgs> {
  StripePaymentCardSelectionRoute(
      {_i2.Key? key,
      required String balance,
      required List<_i49.CreditCard> cards})
      : super(name,
            path: '/stripe-payment-card-selection-page',
            args: StripePaymentCardSelectionRouteArgs(
                key: key, balance: balance, cards: cards));

  static const String name = 'StripePaymentCardSelectionRoute';
}

class StripePaymentCardSelectionRouteArgs {
  const StripePaymentCardSelectionRouteArgs(
      {this.key, required this.balance, required this.cards});

  final _i2.Key? key;

  final String balance;

  final List<_i49.CreditCard> cards;
}

class StripeNewCardPaymentRoute
    extends _i1.PageRouteInfo<StripeNewCardPaymentRouteArgs> {
  StripeNewCardPaymentRoute({_i2.Key? key, required String balance})
      : super(name,
            path: '/stripe-new-card-payment-page',
            args: StripeNewCardPaymentRouteArgs(key: key, balance: balance));

  static const String name = 'StripeNewCardPaymentRoute';
}

class StripeNewCardPaymentRouteArgs {
  const StripeNewCardPaymentRouteArgs({this.key, required this.balance});

  final _i2.Key? key;

  final String balance;
}

class StripeSaveCardPaymentRoute
    extends _i1.PageRouteInfo<StripeSaveCardPaymentRouteArgs> {
  StripeSaveCardPaymentRoute(
      {_i2.Key? key, required String balance, required _i49.CreditCard card})
      : super(name,
            path: '/stripe-save-card-payment-page',
            args: StripeSaveCardPaymentRouteArgs(
                key: key, balance: balance, card: card));

  static const String name = 'StripeSaveCardPaymentRoute';
}

class StripeSaveCardPaymentRouteArgs {
  const StripeSaveCardPaymentRouteArgs(
      {this.key, required this.balance, required this.card});

  final _i2.Key? key;

  final String balance;

  final _i49.CreditCard card;
}

class EsewaTopupRoute extends _i1.PageRouteInfo<EsewaTopupRouteArgs> {
  EsewaTopupRoute(
      {_i2.Key? key,
      required _i49.PaymentMethod method,
      required double conversionRate,
      required bool isVerified,
      required double balance})
      : super(name,
            path: '/esewa-topup-page',
            args: EsewaTopupRouteArgs(
                key: key,
                method: method,
                conversionRate: conversionRate,
                isVerified: isVerified,
                balance: balance));

  static const String name = 'EsewaTopupRoute';
}

class EsewaTopupRouteArgs {
  const EsewaTopupRouteArgs(
      {this.key,
      required this.method,
      required this.conversionRate,
      required this.isVerified,
      required this.balance});

  final _i2.Key? key;

  final _i49.PaymentMethod method;

  final double conversionRate;

  final bool isVerified;

  final double balance;
}

class BannerDetailRoute extends _i1.PageRouteInfo {
  const BannerDetailRoute() : super(name, path: '/banner-detail-page');

  static const String name = 'BannerDetailRoute';
}

class PdfViewerRoute extends _i1.PageRouteInfo<PdfViewerRouteArgs> {
  PdfViewerRoute({_i2.Key? key, required String pdfUrl, required String title})
      : super(name,
            path: '/pdf-viewer-page',
            args: PdfViewerRouteArgs(key: key, pdfUrl: pdfUrl, title: title));

  static const String name = 'PdfViewerRoute';
}

class PdfViewerRouteArgs {
  const PdfViewerRouteArgs(
      {this.key, required this.pdfUrl, required this.title});

  final _i2.Key? key;

  final String pdfUrl;

  final String title;
}

class TopUpRoute extends _i1.PageRouteInfo<TopUpRouteArgs> {
  TopUpRoute(
      {_i2.Key? key,
      required double balance,
      required double conversionRate,
      required int index,
      required List<_i50.UtilityPaymentsModel> paymentData})
      : super(name,
            path: '/top-up-page',
            args: TopUpRouteArgs(
                key: key,
                balance: balance,
                conversionRate: conversionRate,
                index: index,
                paymentData: paymentData));

  static const String name = 'TopUpRoute';
}

class TopUpRouteArgs {
  const TopUpRouteArgs(
      {this.key,
      required this.balance,
      required this.conversionRate,
      required this.index,
      required this.paymentData});

  final _i2.Key? key;

  final double balance;

  final double conversionRate;

  final int index;

  final List<_i50.UtilityPaymentsModel> paymentData;
}

class PartnerServicePaymentRoute
    extends _i1.PageRouteInfo<PartnerServicePaymentRouteArgs> {
  PartnerServicePaymentRoute({_i2.Key? key, required String title})
      : super(name,
            path: '/partner-service-payment-page',
            args: PartnerServicePaymentRouteArgs(key: key, title: title));

  static const String name = 'PartnerServicePaymentRoute';
}

class PartnerServicePaymentRouteArgs {
  const PartnerServicePaymentRouteArgs({this.key, required this.title});

  final _i2.Key? key;

  final String title;
}

class TransactionRoute extends _i1.PageRouteInfo {
  const TransactionRoute() : super(name, path: '/transaction-page');

  static const String name = 'TransactionRoute';
}

class TransactionDetailRoute
    extends _i1.PageRouteInfo<TransactionDetailRouteArgs> {
  TransactionDetailRoute({_i2.Key? key, required _i51.TransactionItem item})
      : super(name,
            path: '/transaction-detail-page',
            args: TransactionDetailRouteArgs(key: key, item: item));

  static const String name = 'TransactionDetailRoute';
}

class TransactionDetailRouteArgs {
  const TransactionDetailRouteArgs({this.key, required this.item});

  final _i2.Key? key;

  final _i51.TransactionItem item;
}

class TransactionDetailFromAPi
    extends _i1.PageRouteInfo<TransactionDetailFromAPiArgs> {
  TransactionDetailFromAPi({_i2.Key? key, required int id})
      : super(name,
            path: '/transaction-detail-from-aPi',
            args: TransactionDetailFromAPiArgs(key: key, id: id));

  static const String name = 'TransactionDetailFromAPi';
}

class TransactionDetailFromAPiArgs {
  const TransactionDetailFromAPiArgs({this.key, required this.id});

  final _i2.Key? key;

  final int id;
}

class NotificationListRoute extends _i1.PageRouteInfo {
  const NotificationListRoute() : super(name, path: '/notification-list-page');

  static const String name = 'NotificationListRoute';
}

class BuyPackageRoute extends _i1.PageRouteInfo<BuyPackageRouteArgs> {
  BuyPackageRoute(
      {_i2.Key? key,
      required _i52.ServicePackage package,
      required _i46.Services services})
      : super(name,
            path: '/buy-package-page',
            args: BuyPackageRouteArgs(
                key: key, package: package, services: services));

  static const String name = 'BuyPackageRoute';
}

class BuyPackageRouteArgs {
  const BuyPackageRouteArgs(
      {this.key, required this.package, required this.services});

  final _i2.Key? key;

  final _i52.ServicePackage package;

  final _i46.Services services;
}

class CouponRoute extends _i1.PageRouteInfo {
  const CouponRoute() : super(name, path: '/coupon-page');

  static const String name = 'CouponRoute';
}

class NotificationDetailRoute
    extends _i1.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute(
      {_i2.Key? key, required _i53.NotificationItem notification})
      : super(name,
            path: '/notification-detail-page',
            args: NotificationDetailRouteArgs(
                key: key, notification: notification));

  static const String name = 'NotificationDetailRoute';
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({this.key, required this.notification});

  final _i2.Key? key;

  final _i53.NotificationItem notification;
}
