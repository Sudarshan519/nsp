// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i62;
import 'package:flutter/foundation.dart' as _i77;
import 'package:flutter/material.dart' as _i63;
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart'
    as _i74;
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart'
    as _i78;
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart'
    as _i64;
import 'package:wallet_app/features/news/domain/entity/news_item.dart' as _i76;
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart'
    as _i68;
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart'
    as _i65;
import 'package:wallet_app/features/partner_services/domain/entities/services.dart'
    as _i66;
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart'
    as _i69;
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart'
    as _i70;
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart'
    as _i72;
import 'package:wallet_app/features/resume/domain/entities/work_history.dart'
    as _i71;
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart'
    as _i75;
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart'
    as _i67;
import 'package:wallet_app/ui/pages/add_balance/add_balance.dart' as _i15;
import 'package:wallet_app/ui/pages/add_balance/payment_page/esewa/esewa_topup_page.dart'
    as _i11;
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/stripe_card_selection_page.dart'
    as _i14;
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/stripe_new_card_payment_page.dart'
    as _i12;
import 'package:wallet_app/ui/pages/add_balance/payment_page/stripe/stripe_save_card_payment_page.dart'
    as _i13;
import 'package:wallet_app/ui/pages/alerts/alert_settings/alert_prefecture_chooser.dart'
    as _i48;
import 'package:wallet_app/ui/pages/alerts/alert_settings/alert_setting_page.dart'
    as _i47;
import 'package:wallet_app/ui/pages/alerts/alerts_page.dart' as _i49;
import 'package:wallet_app/ui/pages/alerts/alerts_tab_page.dart' as _i46;
import 'package:wallet_app/ui/pages/alerts/detail/alert_detail_page.dart'
    as _i45;
import 'package:wallet_app/ui/pages/auth/forgot_password_screen.dart' as _i26;
import 'package:wallet_app/ui/pages/auth/login_screen.dart' as _i25;
import 'package:wallet_app/ui/pages/auth/register_screen.dart' as _i24;
import 'package:wallet_app/ui/pages/auth/validate_user_screen.dart' as _i23;
import 'package:wallet_app/ui/pages/banner_detail_page/banner_detail_page.dart'
    as _i29;
import 'package:wallet_app/ui/pages/coupons/coupon_page.dart' as _i50;
import 'package:wallet_app/ui/pages/home/constant/home_item_type.dart' as _i73;
import 'package:wallet_app/ui/pages/japanese_manner/japanese_manner_detail.dart'
    as _i61;
import 'package:wallet_app/ui/pages/japanese_manner/japanese_manner_page.dart'
    as _i60;
import 'package:wallet_app/ui/pages/more/more_screen.dart' as _i43;
import 'package:wallet_app/ui/pages/news/detail_page/news_detail.dart' as _i53;
import 'package:wallet_app/ui/pages/notification/notification_detail_page.dart'
    as _i28;
import 'package:wallet_app/ui/pages/notification/notification_list.dart'
    as _i27;
import 'package:wallet_app/ui/pages/partner_services/buy_package.dart' as _i17;
import 'package:wallet_app/ui/pages/partner_services/partner_service_payment/partner_service_payment.dart'
    as _i20;
import 'package:wallet_app/ui/pages/partner_services/partner_services.dart'
    as _i18;
import 'package:wallet_app/ui/pages/partner_services/service_detail.dart'
    as _i19;
import 'package:wallet_app/ui/pages/pdf_viewer/pdf_viewer.dart' as _i21;
import 'package:wallet_app/ui/pages/profile_page/profile_page.dart' as _i1;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/about/about_page.dart'
    as _i35;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/about/edit_basic_info.dart'
    as _i34;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/academics/academics_page.dart'
    as _i30;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/academics/edit_academic_info.dart'
    as _i31;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/address/address_page.dart'
    as _i38;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/address/contact_address/edit_contact_address_info.dart'
    as _i37;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/address/current_address/edit_current_address_info.dart'
    as _i39;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/other/edit_other_info.dart'
    as _i33;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/other/other_info.dart'
    as _i32;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/qualification/edit_qualification_info.dart'
    as _i40;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/qualification/qualification_page.dart'
    as _i41;
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/work/edit_work_info.dart'
    as _i36;
import 'package:wallet_app/ui/pages/reward_point/reward_point_home.dart'
    as _i22;
import 'package:wallet_app/ui/pages/search/search_home.dart' as _i44;
import 'package:wallet_app/ui/pages/settings/about_us/about_us.dart' as _i8;
import 'package:wallet_app/ui/pages/settings/change_password/change_password_page.dart'
    as _i7;
import 'package:wallet_app/ui/pages/settings/contact_us.dart/contact_us_page.dart'
    as _i3;
import 'package:wallet_app/ui/pages/settings/device_management/user_devices_page.dart'
    as _i2;
import 'package:wallet_app/ui/pages/settings/security/security_page.dart'
    as _i6;
import 'package:wallet_app/ui/pages/settings/security/set_mpin_page.dart'
    as _i5;
import 'package:wallet_app/ui/pages/settings/security/verify_number.dart'
    as _i4;
import 'package:wallet_app/ui/pages/settings/settings_page.dart' as _i9;
import 'package:wallet_app/ui/pages/splash/splash_screen.dart' as _i10;
import 'package:wallet_app/ui/pages/tab_bar/tab_bar_screen.dart' as _i16;
import 'package:wallet_app/ui/pages/transactions/transaction_detail_page.dart'
    as _i52;
import 'package:wallet_app/ui/pages/transactions/transactions_page.dart'
    as _i51;
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/electricity/nea_page.dart'
    as _i58;
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/internet/payment/isp_payment_page.dart'
    as _i57;
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/khanepani/khanepani_page.dart'
    as _i54;
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/topup/topup_page.dart'
    as _i55;
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/tv/payment/tv_payment_page.dart'
    as _i56;
import 'package:wallet_app/ui/pages/utility_payment/utility_payment.dart'
    as _i59;
import 'package:wallet_app/ui/pages/webview/app_web_view.dart' as _i42;

abstract class $AppRouter extends _i62.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i62.PageFactory> pagesMap = {
    ProfileRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ProfilePage(),
      );
    },
    UserDevicesListRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UserDevicesListPage(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ContactUsPage(),
      );
    },
    VerifyNumberRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.VerifyNumberPage(),
      );
    },
    SetMpinRoute.name: (routeData) {
      final args = routeData.argsAs<SetMpinRouteArgs>(
          orElse: () => const SetMpinRouteArgs());
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SetMpinPage(key: args.key),
      );
    },
    SecurityRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SecurityPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ChangePasswordPage(key: args.key),
      );
    },
    AboutUsRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.AboutUsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SplashPage(),
      );
    },
    EsewaTopupRoute.name: (routeData) {
      final args = routeData.argsAs<EsewaTopupRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.EsewaTopupPage(
          key: args.key,
          method: args.method,
          userId: args.userId,
          conversionRate: args.conversionRate,
          isVerified: args.isVerified,
          balance: args.balance,
        ),
      );
    },
    StripeNewCardPaymentRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.StripeNewCardPaymentPage(),
      );
    },
    StripeSaveCardPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<StripeSaveCardPaymentRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.StripeSaveCardPaymentPage(
          key: args.key,
          card: args.card,
        ),
      );
    },
    StripePaymentCardSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<StripePaymentCardSelectionRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.StripePaymentCardSelectionPage(
          key: args.key,
          cards: args.cards,
          deleteCard: args.deleteCard,
        ),
      );
    },
    AddBalanceRoute.name: (routeData) {
      final args = routeData.argsAs<AddBalanceRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.AddBalancePage(
          key: args.key,
          conversionRate: args.conversionRate,
          isVerified: args.isVerified,
        ),
      );
    },
    TabBarRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.TabBarPage(),
      );
    },
    BuyPackageRoute.name: (routeData) {
      final args = routeData.argsAs<BuyPackageRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.BuyPackagePage(
          key: args.key,
          package: args.package,
          services: args.services,
          cashBackPercent: args.cashBackPercent,
          rewardPoint: args.rewardPoint,
        ),
      );
    },
    PartnerServicesRoute.name: (routeData) {
      final args = routeData.argsAs<PartnerServicesRouteArgs>(
          orElse: () => const PartnerServicesRouteArgs());
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.PartnerServicesPage(
          key: args.key,
          categoryName: args.categoryName,
        ),
      );
    },
    ServiceDetailFromAPIRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailFromAPIRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ServiceDetailFromAPIPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ServicesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ServicesDetailRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ServicesDetailPage(
          key: args.key,
          services: args.services,
        ),
      );
    },
    PartnerServicePaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PartnerServicePaymentRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.PartnerServicePaymentPage(
          key: args.key,
          payData: args.payData,
        ),
      );
    },
    PdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewerRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.PdfViewerPage(
          key: args.key,
          pdfUrl: args.pdfUrl,
          title: args.title,
        ),
      );
    },
    RewardPointsHomeRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.RewardPointsHomePage(),
      );
    },
    VerifyUserRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyUserRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.VerifyUserPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    SignupRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.SignupPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.LoginPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.ForgotPasswordPage(),
      );
    },
    NotificationListRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.NotificationListPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.NotificationDetailPage(
          key: args.key,
          notification: args.notification,
          onMoreDetailPressed: args.onMoreDetailPressed,
        ),
      );
    },
    BannerDetailRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.BannerDetailPage(),
      );
    },
    AcademicsRoute.name: (routeData) {
      final args = routeData.argsAs<AcademicsRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.AcademicsPage(
          key: args.key,
          academics: args.academics,
          listOfSubjects: args.listOfSubjects,
          lang: args.lang,
        ),
      );
    },
    EditAcademicInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditAcademicInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.EditAcademicInfoFormPage(
          key: args.key,
          info: args.info,
          listOfSubjects: args.listOfSubjects,
          lang: args.lang,
        ),
      );
    },
    OtherInfo.name: (routeData) {
      final args = routeData.argsAs<OtherInfoArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.OtherInfo(
          key: args.key,
          info: args.info,
          listOfLanguages: args.listOfLanguages,
          listOfHobbies: args.listOfHobbies,
          listOfSkills: args.listOfSkills,
          lang: args.lang,
        ),
      );
    },
    EditOtherInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditOtherInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.EditOtherInfoFormPage(
          key: args.key,
          info: args.info,
          listOfLanguages: args.listOfLanguages,
          listOfHobbies: args.listOfHobbies,
          listOfSkills: args.listOfSkills,
          lang: args.lang,
        ),
      );
    },
    EditBasicInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditBasicInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i34.EditBasicInfoFormPage(
          key: args.key,
          info: args.info,
          listOfNationality: args.listOfNationality,
          listOfProfession: args.listOfProfession,
          lang: args.lang,
        ),
      );
    },
    AboutRoute.name: (routeData) {
      final args = routeData.argsAs<AboutRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i35.AboutPage(
          key: args.key,
          info: args.info,
          listOfNationality: args.listOfNationality,
          listOfProfession: args.listOfProfession,
          lang: args.lang,
        ),
      );
    },
    EditWorkInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditWorkInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i36.EditWorkInfoFormPage(
          key: args.key,
          info: args.info,
          typeOfCompanyList: args.typeOfCompanyList,
          lang: args.lang,
        ),
      );
    },
    EditContactAddressInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditContactAddressInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i37.EditContactAddressInfoFormPage(
          key: args.key,
          info: args.info,
          lang: args.lang,
          prefecture: args.prefecture,
          provinces: args.provinces,
          countries: args.countries,
        ),
      );
    },
    AddressRoute.name: (routeData) {
      final args = routeData.argsAs<AddressRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i38.AddressPage(
          key: args.key,
          info: args.info,
          prefecture: args.prefecture,
          provinces: args.provinces,
          lang: args.lang,
          countries: args.countries,
        ),
      );
    },
    EditCurrentAddressInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditCurrentAddressInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i39.EditCurrentAddressInfoFormPage(
          key: args.key,
          info: args.info,
          lang: args.lang,
          prefecture: args.prefecture,
          provinces: args.provinces,
          countries: args.countries,
        ),
      );
    },
    EditQualificationInfoFormRoute.name: (routeData) {
      final args = routeData.argsAs<EditQualificationInfoFormRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i40.EditQualificationInfoFormPage(
          key: args.key,
          info: args.info,
          lang: args.lang,
        ),
      );
    },
    QualificationRoute.name: (routeData) {
      final args = routeData.argsAs<QualificationRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i41.QualificationPage(
          key: args.key,
          qualifications: args.qualifications,
          lang: args.lang,
        ),
      );
    },
    AppWebViewRoute.name: (routeData) {
      final args = routeData.argsAs<AppWebViewRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i42.AppWebViewPage(
          key: args.key,
          url: args.url,
          title: args.title,
          urlListner: args.urlListner,
        ),
      );
    },
    MoreRoute.name: (routeData) {
      final args =
          routeData.argsAs<MoreRouteArgs>(orElse: () => const MoreRouteArgs());
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i43.MorePage(key: args.key),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i44.SearchPage(
          key: args.key,
          type: args.type,
        ),
      );
    },
    AlertDetailFomApiRoute.name: (routeData) {
      final args = routeData.argsAs<AlertDetailFomApiRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i45.AlertDetailFomApiPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AlertDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AlertDetailRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i45.AlertDetailPage(
          key: args.key,
          alert: args.alert,
        ),
      );
    },
    AlertsTabRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i46.AlertsTabPage(),
      );
    },
    AlertSettingsRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i47.AlertSettingsPage(),
      );
    },
    AlertPrefectureChooserRoute.name: (routeData) {
      final args = routeData.argsAs<AlertPrefectureChooserRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i48.AlertPrefectureChooserPage(
            selectMultiplePrefectures: args.selectMultiplePrefectures),
      );
    },
    AlertsRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i49.AlertsPage(),
      );
    },
    CouponRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i50.CouponPage(),
      );
    },
    TransactionRoute.name: (routeData) {
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i51.TransactionPage(),
      );
    },
    TransactionDetailFromAPiRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionDetailFromAPiRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i52.TransactionDetailFromAPiPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    TransactionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionDetailRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i52.TransactionDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    NewsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i53.NewsDetailPage(
          key: args.key,
          newsItem: args.newsItem,
        ),
      );
    },
    KhanepaniPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<KhanepaniPaymentRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i54.KhanepaniPaymentPage(
          key: args.key,
          payData: args.payData,
        ),
      );
    },
    TopUpRoute.name: (routeData) {
      final args = routeData.argsAs<TopUpRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i55.TopUpPage(
          key: args.key,
          payData: args.payData,
        ),
      );
    },
    TVPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<TVPaymentRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i56.TVPaymentPage(
          key: args.key,
          payData: args.payData,
        ),
      );
    },
    ISPPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<ISPPaymentRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i57.ISPPaymentPage(
          key: args.key,
          payData: args.payData,
          isPhoneRequired: args.isPhoneRequired,
          isCustomerIdRequired: args.isCustomerIdRequired,
          isAmountRequired: args.isAmountRequired,
        ),
      );
    },
    NEAPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<NEAPaymentRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i58.NEAPaymentPage(
          key: args.key,
          payData: args.payData,
        ),
      );
    },
    UtilityPamentWidget.name: (routeData) {
      final args = routeData.argsAs<UtilityPamentWidgetArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i59.UtilityPamentWidget(
          key: args.key,
          paymentData: args.paymentData,
          onViewLess: args.onViewLess,
        ),
      );
    },
    JapaneseMannerRoute.name: (routeData) {
      final args = routeData.argsAs<JapaneseMannerRouteArgs>(
          orElse: () => const JapaneseMannerRouteArgs());
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i60.JapaneseMannerPage(
          key: args.key,
          categoryName: args.categoryName,
        ),
      );
    },
    JPMannerDetailFromAPiRoute.name: (routeData) {
      final args = routeData.argsAs<JPMannerDetailFromAPiRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i61.JPMannerDetailFromAPiPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    JapaneseMannerDetailRoute.name: (routeData) {
      final args = routeData.argsAs<JapaneseMannerDetailRouteArgs>();
      return _i62.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i61.JapaneseMannerDetailPage(
          key: args.key,
          japaneseManner: args.japaneseManner,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ProfilePage]
class ProfileRoute extends _i62.PageRouteInfo<void> {
  const ProfileRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UserDevicesListPage]
class UserDevicesListRoute extends _i62.PageRouteInfo<void> {
  const UserDevicesListRoute({List<_i62.PageRouteInfo>? children})
      : super(
          UserDevicesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDevicesListRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ContactUsPage]
class ContactUsRoute extends _i62.PageRouteInfo<void> {
  const ContactUsRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i4.VerifyNumberPage]
class VerifyNumberRoute extends _i62.PageRouteInfo<void> {
  const VerifyNumberRoute({List<_i62.PageRouteInfo>? children})
      : super(
          VerifyNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyNumberRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SetMpinPage]
class SetMpinRoute extends _i62.PageRouteInfo<SetMpinRouteArgs> {
  SetMpinRoute({
    _i63.Key? key,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          SetMpinRoute.name,
          args: SetMpinRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SetMpinRoute';

  static const _i62.PageInfo<SetMpinRouteArgs> page =
      _i62.PageInfo<SetMpinRouteArgs>(name);
}

class SetMpinRouteArgs {
  const SetMpinRouteArgs({this.key});

  final _i63.Key? key;

  @override
  String toString() {
    return 'SetMpinRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.SecurityPage]
class SecurityRoute extends _i62.PageRouteInfo<void> {
  const SecurityRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SecurityRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecurityRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChangePasswordPage]
class ChangePasswordRoute extends _i62.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i63.Key? key,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i62.PageInfo<ChangePasswordRouteArgs> page =
      _i62.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final _i63.Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.AboutUsPage]
class AboutUsRoute extends _i62.PageRouteInfo<void> {
  const AboutUsRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AboutUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutUsRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i62.PageRouteInfo<void> {
  const SettingsRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i62.PageRouteInfo<void> {
  const SplashRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EsewaTopupPage]
class EsewaTopupRoute extends _i62.PageRouteInfo<EsewaTopupRouteArgs> {
  EsewaTopupRoute({
    _i63.Key? key,
    required _i64.PaymentMethod method,
    required String userId,
    required double conversionRate,
    required bool isVerified,
    required double balance,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EsewaTopupRoute.name,
          args: EsewaTopupRouteArgs(
            key: key,
            method: method,
            userId: userId,
            conversionRate: conversionRate,
            isVerified: isVerified,
            balance: balance,
          ),
          initialChildren: children,
        );

  static const String name = 'EsewaTopupRoute';

  static const _i62.PageInfo<EsewaTopupRouteArgs> page =
      _i62.PageInfo<EsewaTopupRouteArgs>(name);
}

class EsewaTopupRouteArgs {
  const EsewaTopupRouteArgs({
    this.key,
    required this.method,
    required this.userId,
    required this.conversionRate,
    required this.isVerified,
    required this.balance,
  });

  final _i63.Key? key;

  final _i64.PaymentMethod method;

  final String userId;

  final double conversionRate;

  final bool isVerified;

  final double balance;

  @override
  String toString() {
    return 'EsewaTopupRouteArgs{key: $key, method: $method, userId: $userId, conversionRate: $conversionRate, isVerified: $isVerified, balance: $balance}';
  }
}

/// generated route for
/// [_i12.StripeNewCardPaymentPage]
class StripeNewCardPaymentRoute extends _i62.PageRouteInfo<void> {
  const StripeNewCardPaymentRoute({List<_i62.PageRouteInfo>? children})
      : super(
          StripeNewCardPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'StripeNewCardPaymentRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i13.StripeSaveCardPaymentPage]
class StripeSaveCardPaymentRoute
    extends _i62.PageRouteInfo<StripeSaveCardPaymentRouteArgs> {
  StripeSaveCardPaymentRoute({
    _i63.Key? key,
    required _i64.CreditCard card,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          StripeSaveCardPaymentRoute.name,
          args: StripeSaveCardPaymentRouteArgs(
            key: key,
            card: card,
          ),
          initialChildren: children,
        );

  static const String name = 'StripeSaveCardPaymentRoute';

  static const _i62.PageInfo<StripeSaveCardPaymentRouteArgs> page =
      _i62.PageInfo<StripeSaveCardPaymentRouteArgs>(name);
}

class StripeSaveCardPaymentRouteArgs {
  const StripeSaveCardPaymentRouteArgs({
    this.key,
    required this.card,
  });

  final _i63.Key? key;

  final _i64.CreditCard card;

  @override
  String toString() {
    return 'StripeSaveCardPaymentRouteArgs{key: $key, card: $card}';
  }
}

/// generated route for
/// [_i14.StripePaymentCardSelectionPage]
class StripePaymentCardSelectionRoute
    extends _i62.PageRouteInfo<StripePaymentCardSelectionRouteArgs> {
  StripePaymentCardSelectionRoute({
    _i63.Key? key,
    required List<_i64.CreditCard> cards,
    required dynamic Function(int) deleteCard,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          StripePaymentCardSelectionRoute.name,
          args: StripePaymentCardSelectionRouteArgs(
            key: key,
            cards: cards,
            deleteCard: deleteCard,
          ),
          initialChildren: children,
        );

  static const String name = 'StripePaymentCardSelectionRoute';

  static const _i62.PageInfo<StripePaymentCardSelectionRouteArgs> page =
      _i62.PageInfo<StripePaymentCardSelectionRouteArgs>(name);
}

class StripePaymentCardSelectionRouteArgs {
  const StripePaymentCardSelectionRouteArgs({
    this.key,
    required this.cards,
    required this.deleteCard,
  });

  final _i63.Key? key;

  final List<_i64.CreditCard> cards;

  final dynamic Function(int) deleteCard;

  @override
  String toString() {
    return 'StripePaymentCardSelectionRouteArgs{key: $key, cards: $cards, deleteCard: $deleteCard}';
  }
}

/// generated route for
/// [_i15.AddBalancePage]
class AddBalanceRoute extends _i62.PageRouteInfo<AddBalanceRouteArgs> {
  AddBalanceRoute({
    _i63.Key? key,
    required double conversionRate,
    required bool isVerified,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AddBalanceRoute.name,
          args: AddBalanceRouteArgs(
            key: key,
            conversionRate: conversionRate,
            isVerified: isVerified,
          ),
          initialChildren: children,
        );

  static const String name = 'AddBalanceRoute';

  static const _i62.PageInfo<AddBalanceRouteArgs> page =
      _i62.PageInfo<AddBalanceRouteArgs>(name);
}

class AddBalanceRouteArgs {
  const AddBalanceRouteArgs({
    this.key,
    required this.conversionRate,
    required this.isVerified,
  });

  final _i63.Key? key;

  final double conversionRate;

  final bool isVerified;

  @override
  String toString() {
    return 'AddBalanceRouteArgs{key: $key, conversionRate: $conversionRate, isVerified: $isVerified}';
  }
}

/// generated route for
/// [_i16.TabBarPage]
class TabBarRoute extends _i62.PageRouteInfo<void> {
  const TabBarRoute({List<_i62.PageRouteInfo>? children})
      : super(
          TabBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabBarRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i17.BuyPackagePage]
class BuyPackageRoute extends _i62.PageRouteInfo<BuyPackageRouteArgs> {
  BuyPackageRoute({
    _i63.Key? key,
    required _i65.ServicePackage package,
    required _i66.Services services,
    required double cashBackPercent,
    required double rewardPoint,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          BuyPackageRoute.name,
          args: BuyPackageRouteArgs(
            key: key,
            package: package,
            services: services,
            cashBackPercent: cashBackPercent,
            rewardPoint: rewardPoint,
          ),
          initialChildren: children,
        );

  static const String name = 'BuyPackageRoute';

  static const _i62.PageInfo<BuyPackageRouteArgs> page =
      _i62.PageInfo<BuyPackageRouteArgs>(name);
}

class BuyPackageRouteArgs {
  const BuyPackageRouteArgs({
    this.key,
    required this.package,
    required this.services,
    required this.cashBackPercent,
    required this.rewardPoint,
  });

  final _i63.Key? key;

  final _i65.ServicePackage package;

  final _i66.Services services;

  final double cashBackPercent;

  final double rewardPoint;

  @override
  String toString() {
    return 'BuyPackageRouteArgs{key: $key, package: $package, services: $services, cashBackPercent: $cashBackPercent, rewardPoint: $rewardPoint}';
  }
}

/// generated route for
/// [_i18.PartnerServicesPage]
class PartnerServicesRoute
    extends _i62.PageRouteInfo<PartnerServicesRouteArgs> {
  PartnerServicesRoute({
    _i63.Key? key,
    String? categoryName,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          PartnerServicesRoute.name,
          args: PartnerServicesRouteArgs(
            key: key,
            categoryName: categoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'PartnerServicesRoute';

  static const _i62.PageInfo<PartnerServicesRouteArgs> page =
      _i62.PageInfo<PartnerServicesRouteArgs>(name);
}

class PartnerServicesRouteArgs {
  const PartnerServicesRouteArgs({
    this.key,
    this.categoryName,
  });

  final _i63.Key? key;

  final String? categoryName;

  @override
  String toString() {
    return 'PartnerServicesRouteArgs{key: $key, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i19.ServiceDetailFromAPIPage]
class ServiceDetailFromAPIRoute
    extends _i62.PageRouteInfo<ServiceDetailFromAPIRouteArgs> {
  ServiceDetailFromAPIRoute({
    _i63.Key? key,
    required int id,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ServiceDetailFromAPIRoute.name,
          args: ServiceDetailFromAPIRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceDetailFromAPIRoute';

  static const _i62.PageInfo<ServiceDetailFromAPIRouteArgs> page =
      _i62.PageInfo<ServiceDetailFromAPIRouteArgs>(name);
}

class ServiceDetailFromAPIRouteArgs {
  const ServiceDetailFromAPIRouteArgs({
    this.key,
    required this.id,
  });

  final _i63.Key? key;

  final int id;

  @override
  String toString() {
    return 'ServiceDetailFromAPIRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i19.ServicesDetailPage]
class ServicesDetailRoute extends _i62.PageRouteInfo<ServicesDetailRouteArgs> {
  ServicesDetailRoute({
    _i63.Key? key,
    required _i66.Services services,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ServicesDetailRoute.name,
          args: ServicesDetailRouteArgs(
            key: key,
            services: services,
          ),
          initialChildren: children,
        );

  static const String name = 'ServicesDetailRoute';

  static const _i62.PageInfo<ServicesDetailRouteArgs> page =
      _i62.PageInfo<ServicesDetailRouteArgs>(name);
}

class ServicesDetailRouteArgs {
  const ServicesDetailRouteArgs({
    this.key,
    required this.services,
  });

  final _i63.Key? key;

  final _i66.Services services;

  @override
  String toString() {
    return 'ServicesDetailRouteArgs{key: $key, services: $services}';
  }
}

/// generated route for
/// [_i20.PartnerServicePaymentPage]
class PartnerServicePaymentRoute
    extends _i62.PageRouteInfo<PartnerServicePaymentRouteArgs> {
  PartnerServicePaymentRoute({
    _i63.Key? key,
    required _i67.UtilityPaymentsModel payData,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          PartnerServicePaymentRoute.name,
          args: PartnerServicePaymentRouteArgs(
            key: key,
            payData: payData,
          ),
          initialChildren: children,
        );

  static const String name = 'PartnerServicePaymentRoute';

  static const _i62.PageInfo<PartnerServicePaymentRouteArgs> page =
      _i62.PageInfo<PartnerServicePaymentRouteArgs>(name);
}

class PartnerServicePaymentRouteArgs {
  const PartnerServicePaymentRouteArgs({
    this.key,
    required this.payData,
  });

  final _i63.Key? key;

  final _i67.UtilityPaymentsModel payData;

  @override
  String toString() {
    return 'PartnerServicePaymentRouteArgs{key: $key, payData: $payData}';
  }
}

/// generated route for
/// [_i21.PdfViewerPage]
class PdfViewerRoute extends _i62.PageRouteInfo<PdfViewerRouteArgs> {
  PdfViewerRoute({
    _i63.Key? key,
    required String pdfUrl,
    required String title,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          PdfViewerRoute.name,
          args: PdfViewerRouteArgs(
            key: key,
            pdfUrl: pdfUrl,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewerRoute';

  static const _i62.PageInfo<PdfViewerRouteArgs> page =
      _i62.PageInfo<PdfViewerRouteArgs>(name);
}

class PdfViewerRouteArgs {
  const PdfViewerRouteArgs({
    this.key,
    required this.pdfUrl,
    required this.title,
  });

  final _i63.Key? key;

  final String pdfUrl;

  final String title;

  @override
  String toString() {
    return 'PdfViewerRouteArgs{key: $key, pdfUrl: $pdfUrl, title: $title}';
  }
}

/// generated route for
/// [_i22.RewardPointsHomePage]
class RewardPointsHomeRoute extends _i62.PageRouteInfo<void> {
  const RewardPointsHomeRoute({List<_i62.PageRouteInfo>? children})
      : super(
          RewardPointsHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RewardPointsHomeRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i23.VerifyUserPage]
class VerifyUserRoute extends _i62.PageRouteInfo<VerifyUserRouteArgs> {
  VerifyUserRoute({
    _i63.Key? key,
    required String email,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          VerifyUserRoute.name,
          args: VerifyUserRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyUserRoute';

  static const _i62.PageInfo<VerifyUserRouteArgs> page =
      _i62.PageInfo<VerifyUserRouteArgs>(name);
}

class VerifyUserRouteArgs {
  const VerifyUserRouteArgs({
    this.key,
    required this.email,
  });

  final _i63.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifyUserRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i24.SignupPage]
class SignupRoute extends _i62.PageRouteInfo<void> {
  const SignupRoute({List<_i62.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i25.LoginPage]
class LoginRoute extends _i62.PageRouteInfo<void> {
  const LoginRoute({List<_i62.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i26.ForgotPasswordPage]
class ForgotPasswordRoute extends _i62.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i62.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i27.NotificationListPage]
class NotificationListRoute extends _i62.PageRouteInfo<void> {
  const NotificationListRoute({List<_i62.PageRouteInfo>? children})
      : super(
          NotificationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationListRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i28.NotificationDetailPage]
class NotificationDetailRoute
    extends _i62.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i63.Key? key,
    required _i68.NotificationItem notification,
    Function? onMoreDetailPressed,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            notification: notification,
            onMoreDetailPressed: onMoreDetailPressed,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i62.PageInfo<NotificationDetailRouteArgs> page =
      _i62.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.notification,
    this.onMoreDetailPressed,
  });

  final _i63.Key? key;

  final _i68.NotificationItem notification;

  final Function? onMoreDetailPressed;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, notification: $notification, onMoreDetailPressed: $onMoreDetailPressed}';
  }
}

/// generated route for
/// [_i29.BannerDetailPage]
class BannerDetailRoute extends _i62.PageRouteInfo<void> {
  const BannerDetailRoute({List<_i62.PageRouteInfo>? children})
      : super(
          BannerDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'BannerDetailRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i30.AcademicsPage]
class AcademicsRoute extends _i62.PageRouteInfo<AcademicsRouteArgs> {
  AcademicsRoute({
    _i63.Key? key,
    required List<_i69.AcademicHistory> academics,
    required List<String> listOfSubjects,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AcademicsRoute.name,
          args: AcademicsRouteArgs(
            key: key,
            academics: academics,
            listOfSubjects: listOfSubjects,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'AcademicsRoute';

  static const _i62.PageInfo<AcademicsRouteArgs> page =
      _i62.PageInfo<AcademicsRouteArgs>(name);
}

class AcademicsRouteArgs {
  const AcademicsRouteArgs({
    this.key,
    required this.academics,
    required this.listOfSubjects,
    required this.lang,
  });

  final _i63.Key? key;

  final List<_i69.AcademicHistory> academics;

  final List<String> listOfSubjects;

  final String lang;

  @override
  String toString() {
    return 'AcademicsRouteArgs{key: $key, academics: $academics, listOfSubjects: $listOfSubjects, lang: $lang}';
  }
}

/// generated route for
/// [_i31.EditAcademicInfoFormPage]
class EditAcademicInfoFormRoute
    extends _i62.PageRouteInfo<EditAcademicInfoFormRouteArgs> {
  EditAcademicInfoFormRoute({
    _i63.Key? key,
    required _i69.AcademicHistory info,
    required List<String> listOfSubjects,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditAcademicInfoFormRoute.name,
          args: EditAcademicInfoFormRouteArgs(
            key: key,
            info: info,
            listOfSubjects: listOfSubjects,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'EditAcademicInfoFormRoute';

  static const _i62.PageInfo<EditAcademicInfoFormRouteArgs> page =
      _i62.PageInfo<EditAcademicInfoFormRouteArgs>(name);
}

class EditAcademicInfoFormRouteArgs {
  const EditAcademicInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.listOfSubjects,
    required this.lang,
  });

  final _i63.Key? key;

  final _i69.AcademicHistory info;

  final List<String> listOfSubjects;

  final String lang;

  @override
  String toString() {
    return 'EditAcademicInfoFormRouteArgs{key: $key, info: $info, listOfSubjects: $listOfSubjects, lang: $lang}';
  }
}

/// generated route for
/// [_i32.OtherInfo]
class OtherInfo extends _i62.PageRouteInfo<OtherInfoArgs> {
  OtherInfo({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required List<String> listOfLanguages,
    required List<String> listOfHobbies,
    required List<String> listOfSkills,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          OtherInfo.name,
          args: OtherInfoArgs(
            key: key,
            info: info,
            listOfLanguages: listOfLanguages,
            listOfHobbies: listOfHobbies,
            listOfSkills: listOfSkills,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'OtherInfo';

  static const _i62.PageInfo<OtherInfoArgs> page =
      _i62.PageInfo<OtherInfoArgs>(name);
}

class OtherInfoArgs {
  const OtherInfoArgs({
    this.key,
    required this.info,
    required this.listOfLanguages,
    required this.listOfHobbies,
    required this.listOfSkills,
    required this.lang,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final List<String> listOfLanguages;

  final List<String> listOfHobbies;

  final List<String> listOfSkills;

  final String lang;

  @override
  String toString() {
    return 'OtherInfoArgs{key: $key, info: $info, listOfLanguages: $listOfLanguages, listOfHobbies: $listOfHobbies, listOfSkills: $listOfSkills, lang: $lang}';
  }
}

/// generated route for
/// [_i33.EditOtherInfoFormPage]
class EditOtherInfoFormRoute
    extends _i62.PageRouteInfo<EditOtherInfoFormRouteArgs> {
  EditOtherInfoFormRoute({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required List<String> listOfLanguages,
    required List<String> listOfHobbies,
    required List<String> listOfSkills,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditOtherInfoFormRoute.name,
          args: EditOtherInfoFormRouteArgs(
            key: key,
            info: info,
            listOfLanguages: listOfLanguages,
            listOfHobbies: listOfHobbies,
            listOfSkills: listOfSkills,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'EditOtherInfoFormRoute';

  static const _i62.PageInfo<EditOtherInfoFormRouteArgs> page =
      _i62.PageInfo<EditOtherInfoFormRouteArgs>(name);
}

class EditOtherInfoFormRouteArgs {
  const EditOtherInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.listOfLanguages,
    required this.listOfHobbies,
    required this.listOfSkills,
    required this.lang,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final List<String> listOfLanguages;

  final List<String> listOfHobbies;

  final List<String> listOfSkills;

  final String lang;

  @override
  String toString() {
    return 'EditOtherInfoFormRouteArgs{key: $key, info: $info, listOfLanguages: $listOfLanguages, listOfHobbies: $listOfHobbies, listOfSkills: $listOfSkills, lang: $lang}';
  }
}

/// generated route for
/// [_i34.EditBasicInfoFormPage]
class EditBasicInfoFormRoute
    extends _i62.PageRouteInfo<EditBasicInfoFormRouteArgs> {
  EditBasicInfoFormRoute({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required List<String> listOfNationality,
    required List<String> listOfProfession,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditBasicInfoFormRoute.name,
          args: EditBasicInfoFormRouteArgs(
            key: key,
            info: info,
            listOfNationality: listOfNationality,
            listOfProfession: listOfProfession,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'EditBasicInfoFormRoute';

  static const _i62.PageInfo<EditBasicInfoFormRouteArgs> page =
      _i62.PageInfo<EditBasicInfoFormRouteArgs>(name);
}

class EditBasicInfoFormRouteArgs {
  const EditBasicInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.listOfNationality,
    required this.listOfProfession,
    required this.lang,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final List<String> listOfNationality;

  final List<String> listOfProfession;

  final String lang;

  @override
  String toString() {
    return 'EditBasicInfoFormRouteArgs{key: $key, info: $info, listOfNationality: $listOfNationality, listOfProfession: $listOfProfession, lang: $lang}';
  }
}

/// generated route for
/// [_i35.AboutPage]
class AboutRoute extends _i62.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required List<String> listOfNationality,
    required List<String> listOfProfession,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AboutRoute.name,
          args: AboutRouteArgs(
            key: key,
            info: info,
            listOfNationality: listOfNationality,
            listOfProfession: listOfProfession,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i62.PageInfo<AboutRouteArgs> page =
      _i62.PageInfo<AboutRouteArgs>(name);
}

class AboutRouteArgs {
  const AboutRouteArgs({
    this.key,
    required this.info,
    required this.listOfNationality,
    required this.listOfProfession,
    required this.lang,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final List<String> listOfNationality;

  final List<String> listOfProfession;

  final String lang;

  @override
  String toString() {
    return 'AboutRouteArgs{key: $key, info: $info, listOfNationality: $listOfNationality, listOfProfession: $listOfProfession, lang: $lang}';
  }
}

/// generated route for
/// [_i36.EditWorkInfoFormPage]
class EditWorkInfoFormRoute
    extends _i62.PageRouteInfo<EditWorkInfoFormRouteArgs> {
  EditWorkInfoFormRoute({
    _i63.Key? key,
    required _i71.WorkHistory info,
    required List<String> typeOfCompanyList,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditWorkInfoFormRoute.name,
          args: EditWorkInfoFormRouteArgs(
            key: key,
            info: info,
            typeOfCompanyList: typeOfCompanyList,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'EditWorkInfoFormRoute';

  static const _i62.PageInfo<EditWorkInfoFormRouteArgs> page =
      _i62.PageInfo<EditWorkInfoFormRouteArgs>(name);
}

class EditWorkInfoFormRouteArgs {
  const EditWorkInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.typeOfCompanyList,
    required this.lang,
  });

  final _i63.Key? key;

  final _i71.WorkHistory info;

  final List<String> typeOfCompanyList;

  final String lang;

  @override
  String toString() {
    return 'EditWorkInfoFormRouteArgs{key: $key, info: $info, typeOfCompanyList: $typeOfCompanyList, lang: $lang}';
  }
}

/// generated route for
/// [_i37.EditContactAddressInfoFormPage]
class EditContactAddressInfoFormRoute
    extends _i62.PageRouteInfo<EditContactAddressInfoFormRouteArgs> {
  EditContactAddressInfoFormRoute({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required String lang,
    required List<String> prefecture,
    required List<String> provinces,
    required List<String> countries,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditContactAddressInfoFormRoute.name,
          args: EditContactAddressInfoFormRouteArgs(
            key: key,
            info: info,
            lang: lang,
            prefecture: prefecture,
            provinces: provinces,
            countries: countries,
          ),
          initialChildren: children,
        );

  static const String name = 'EditContactAddressInfoFormRoute';

  static const _i62.PageInfo<EditContactAddressInfoFormRouteArgs> page =
      _i62.PageInfo<EditContactAddressInfoFormRouteArgs>(name);
}

class EditContactAddressInfoFormRouteArgs {
  const EditContactAddressInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.lang,
    required this.prefecture,
    required this.provinces,
    required this.countries,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final String lang;

  final List<String> prefecture;

  final List<String> provinces;

  final List<String> countries;

  @override
  String toString() {
    return 'EditContactAddressInfoFormRouteArgs{key: $key, info: $info, lang: $lang, prefecture: $prefecture, provinces: $provinces, countries: $countries}';
  }
}

/// generated route for
/// [_i38.AddressPage]
class AddressRoute extends _i62.PageRouteInfo<AddressRouteArgs> {
  AddressRoute({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required List<String> prefecture,
    required List<String> provinces,
    required String lang,
    required List<String> countries,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AddressRoute.name,
          args: AddressRouteArgs(
            key: key,
            info: info,
            prefecture: prefecture,
            provinces: provinces,
            lang: lang,
            countries: countries,
          ),
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static const _i62.PageInfo<AddressRouteArgs> page =
      _i62.PageInfo<AddressRouteArgs>(name);
}

class AddressRouteArgs {
  const AddressRouteArgs({
    this.key,
    required this.info,
    required this.prefecture,
    required this.provinces,
    required this.lang,
    required this.countries,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final List<String> prefecture;

  final List<String> provinces;

  final String lang;

  final List<String> countries;

  @override
  String toString() {
    return 'AddressRouteArgs{key: $key, info: $info, prefecture: $prefecture, provinces: $provinces, lang: $lang, countries: $countries}';
  }
}

/// generated route for
/// [_i39.EditCurrentAddressInfoFormPage]
class EditCurrentAddressInfoFormRoute
    extends _i62.PageRouteInfo<EditCurrentAddressInfoFormRouteArgs> {
  EditCurrentAddressInfoFormRoute({
    _i63.Key? key,
    required _i70.PersonalInfo info,
    required String lang,
    required List<String> prefecture,
    required List<String> provinces,
    required List<String> countries,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditCurrentAddressInfoFormRoute.name,
          args: EditCurrentAddressInfoFormRouteArgs(
            key: key,
            info: info,
            lang: lang,
            prefecture: prefecture,
            provinces: provinces,
            countries: countries,
          ),
          initialChildren: children,
        );

  static const String name = 'EditCurrentAddressInfoFormRoute';

  static const _i62.PageInfo<EditCurrentAddressInfoFormRouteArgs> page =
      _i62.PageInfo<EditCurrentAddressInfoFormRouteArgs>(name);
}

class EditCurrentAddressInfoFormRouteArgs {
  const EditCurrentAddressInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.lang,
    required this.prefecture,
    required this.provinces,
    required this.countries,
  });

  final _i63.Key? key;

  final _i70.PersonalInfo info;

  final String lang;

  final List<String> prefecture;

  final List<String> provinces;

  final List<String> countries;

  @override
  String toString() {
    return 'EditCurrentAddressInfoFormRouteArgs{key: $key, info: $info, lang: $lang, prefecture: $prefecture, provinces: $provinces, countries: $countries}';
  }
}

/// generated route for
/// [_i40.EditQualificationInfoFormPage]
class EditQualificationInfoFormRoute
    extends _i62.PageRouteInfo<EditQualificationInfoFormRouteArgs> {
  EditQualificationInfoFormRoute({
    _i63.Key? key,
    required _i72.QualificationHistory info,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          EditQualificationInfoFormRoute.name,
          args: EditQualificationInfoFormRouteArgs(
            key: key,
            info: info,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'EditQualificationInfoFormRoute';

  static const _i62.PageInfo<EditQualificationInfoFormRouteArgs> page =
      _i62.PageInfo<EditQualificationInfoFormRouteArgs>(name);
}

class EditQualificationInfoFormRouteArgs {
  const EditQualificationInfoFormRouteArgs({
    this.key,
    required this.info,
    required this.lang,
  });

  final _i63.Key? key;

  final _i72.QualificationHistory info;

  final String lang;

  @override
  String toString() {
    return 'EditQualificationInfoFormRouteArgs{key: $key, info: $info, lang: $lang}';
  }
}

/// generated route for
/// [_i41.QualificationPage]
class QualificationRoute extends _i62.PageRouteInfo<QualificationRouteArgs> {
  QualificationRoute({
    _i63.Key? key,
    required List<_i72.QualificationHistory> qualifications,
    required String lang,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          QualificationRoute.name,
          args: QualificationRouteArgs(
            key: key,
            qualifications: qualifications,
            lang: lang,
          ),
          initialChildren: children,
        );

  static const String name = 'QualificationRoute';

  static const _i62.PageInfo<QualificationRouteArgs> page =
      _i62.PageInfo<QualificationRouteArgs>(name);
}

class QualificationRouteArgs {
  const QualificationRouteArgs({
    this.key,
    required this.qualifications,
    required this.lang,
  });

  final _i63.Key? key;

  final List<_i72.QualificationHistory> qualifications;

  final String lang;

  @override
  String toString() {
    return 'QualificationRouteArgs{key: $key, qualifications: $qualifications, lang: $lang}';
  }
}

/// generated route for
/// [_i42.AppWebViewPage]
class AppWebViewRoute extends _i62.PageRouteInfo<AppWebViewRouteArgs> {
  AppWebViewRoute({
    _i63.Key? key,
    required String url,
    required String title,
    dynamic Function(String)? urlListner,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AppWebViewRoute.name,
          args: AppWebViewRouteArgs(
            key: key,
            url: url,
            title: title,
            urlListner: urlListner,
          ),
          initialChildren: children,
        );

  static const String name = 'AppWebViewRoute';

  static const _i62.PageInfo<AppWebViewRouteArgs> page =
      _i62.PageInfo<AppWebViewRouteArgs>(name);
}

class AppWebViewRouteArgs {
  const AppWebViewRouteArgs({
    this.key,
    required this.url,
    required this.title,
    this.urlListner,
  });

  final _i63.Key? key;

  final String url;

  final String title;

  final dynamic Function(String)? urlListner;

  @override
  String toString() {
    return 'AppWebViewRouteArgs{key: $key, url: $url, title: $title, urlListner: $urlListner}';
  }
}

/// generated route for
/// [_i43.MorePage]
class MoreRoute extends _i62.PageRouteInfo<MoreRouteArgs> {
  MoreRoute({
    _i63.Key? key,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          MoreRoute.name,
          args: MoreRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const _i62.PageInfo<MoreRouteArgs> page =
      _i62.PageInfo<MoreRouteArgs>(name);
}

class MoreRouteArgs {
  const MoreRouteArgs({this.key});

  final _i63.Key? key;

  @override
  String toString() {
    return 'MoreRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i44.SearchPage]
class SearchRoute extends _i62.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i63.Key? key,
    _i73.HomeItemType? type,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i62.PageInfo<SearchRouteArgs> page =
      _i62.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.type,
  });

  final _i63.Key? key;

  final _i73.HomeItemType? type;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [_i45.AlertDetailFomApiPage]
class AlertDetailFomApiRoute
    extends _i62.PageRouteInfo<AlertDetailFomApiRouteArgs> {
  AlertDetailFomApiRoute({
    _i63.Key? key,
    required String id,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AlertDetailFomApiRoute.name,
          args: AlertDetailFomApiRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'AlertDetailFomApiRoute';

  static const _i62.PageInfo<AlertDetailFomApiRouteArgs> page =
      _i62.PageInfo<AlertDetailFomApiRouteArgs>(name);
}

class AlertDetailFomApiRouteArgs {
  const AlertDetailFomApiRouteArgs({
    this.key,
    required this.id,
  });

  final _i63.Key? key;

  final String id;

  @override
  String toString() {
    return 'AlertDetailFomApiRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i45.AlertDetailPage]
class AlertDetailRoute extends _i62.PageRouteInfo<AlertDetailRouteArgs> {
  AlertDetailRoute({
    _i63.Key? key,
    required _i74.Alert alert,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AlertDetailRoute.name,
          args: AlertDetailRouteArgs(
            key: key,
            alert: alert,
          ),
          initialChildren: children,
        );

  static const String name = 'AlertDetailRoute';

  static const _i62.PageInfo<AlertDetailRouteArgs> page =
      _i62.PageInfo<AlertDetailRouteArgs>(name);
}

class AlertDetailRouteArgs {
  const AlertDetailRouteArgs({
    this.key,
    required this.alert,
  });

  final _i63.Key? key;

  final _i74.Alert alert;

  @override
  String toString() {
    return 'AlertDetailRouteArgs{key: $key, alert: $alert}';
  }
}

/// generated route for
/// [_i46.AlertsTabPage]
class AlertsTabRoute extends _i62.PageRouteInfo<void> {
  const AlertsTabRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AlertsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertsTabRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i47.AlertSettingsPage]
class AlertSettingsRoute extends _i62.PageRouteInfo<void> {
  const AlertSettingsRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AlertSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertSettingsRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i48.AlertPrefectureChooserPage]
class AlertPrefectureChooserRoute
    extends _i62.PageRouteInfo<AlertPrefectureChooserRouteArgs> {
  AlertPrefectureChooserRoute({
    required bool selectMultiplePrefectures,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          AlertPrefectureChooserRoute.name,
          args: AlertPrefectureChooserRouteArgs(
              selectMultiplePrefectures: selectMultiplePrefectures),
          initialChildren: children,
        );

  static const String name = 'AlertPrefectureChooserRoute';

  static const _i62.PageInfo<AlertPrefectureChooserRouteArgs> page =
      _i62.PageInfo<AlertPrefectureChooserRouteArgs>(name);
}

class AlertPrefectureChooserRouteArgs {
  const AlertPrefectureChooserRouteArgs(
      {required this.selectMultiplePrefectures});

  final bool selectMultiplePrefectures;

  @override
  String toString() {
    return 'AlertPrefectureChooserRouteArgs{selectMultiplePrefectures: $selectMultiplePrefectures}';
  }
}

/// generated route for
/// [_i49.AlertsPage]
class AlertsRoute extends _i62.PageRouteInfo<void> {
  const AlertsRoute({List<_i62.PageRouteInfo>? children})
      : super(
          AlertsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertsRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i50.CouponPage]
class CouponRoute extends _i62.PageRouteInfo<void> {
  const CouponRoute({List<_i62.PageRouteInfo>? children})
      : super(
          CouponRoute.name,
          initialChildren: children,
        );

  static const String name = 'CouponRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i51.TransactionPage]
class TransactionRoute extends _i62.PageRouteInfo<void> {
  const TransactionRoute({List<_i62.PageRouteInfo>? children})
      : super(
          TransactionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionRoute';

  static const _i62.PageInfo<void> page = _i62.PageInfo<void>(name);
}

/// generated route for
/// [_i52.TransactionDetailFromAPiPage]
class TransactionDetailFromAPiRoute
    extends _i62.PageRouteInfo<TransactionDetailFromAPiRouteArgs> {
  TransactionDetailFromAPiRoute({
    _i63.Key? key,
    required int id,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          TransactionDetailFromAPiRoute.name,
          args: TransactionDetailFromAPiRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'TransactionDetailFromAPiRoute';

  static const _i62.PageInfo<TransactionDetailFromAPiRouteArgs> page =
      _i62.PageInfo<TransactionDetailFromAPiRouteArgs>(name);
}

class TransactionDetailFromAPiRouteArgs {
  const TransactionDetailFromAPiRouteArgs({
    this.key,
    required this.id,
  });

  final _i63.Key? key;

  final int id;

  @override
  String toString() {
    return 'TransactionDetailFromAPiRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i52.TransactionDetailPage]
class TransactionDetailRoute
    extends _i62.PageRouteInfo<TransactionDetailRouteArgs> {
  TransactionDetailRoute({
    _i63.Key? key,
    required _i75.TransactionItem item,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          TransactionDetailRoute.name,
          args: TransactionDetailRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'TransactionDetailRoute';

  static const _i62.PageInfo<TransactionDetailRouteArgs> page =
      _i62.PageInfo<TransactionDetailRouteArgs>(name);
}

class TransactionDetailRouteArgs {
  const TransactionDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i63.Key? key;

  final _i75.TransactionItem item;

  @override
  String toString() {
    return 'TransactionDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i53.NewsDetailPage]
class NewsDetailRoute extends _i62.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({
    _i63.Key? key,
    required _i76.NewsItem newsItem,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          NewsDetailRoute.name,
          args: NewsDetailRouteArgs(
            key: key,
            newsItem: newsItem,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailRoute';

  static const _i62.PageInfo<NewsDetailRouteArgs> page =
      _i62.PageInfo<NewsDetailRouteArgs>(name);
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({
    this.key,
    required this.newsItem,
  });

  final _i63.Key? key;

  final _i76.NewsItem newsItem;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{key: $key, newsItem: $newsItem}';
  }
}

/// generated route for
/// [_i54.KhanepaniPaymentPage]
class KhanepaniPaymentRoute
    extends _i62.PageRouteInfo<KhanepaniPaymentRouteArgs> {
  KhanepaniPaymentRoute({
    _i63.Key? key,
    required _i67.UtilityPaymentsModel payData,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          KhanepaniPaymentRoute.name,
          args: KhanepaniPaymentRouteArgs(
            key: key,
            payData: payData,
          ),
          initialChildren: children,
        );

  static const String name = 'KhanepaniPaymentRoute';

  static const _i62.PageInfo<KhanepaniPaymentRouteArgs> page =
      _i62.PageInfo<KhanepaniPaymentRouteArgs>(name);
}

class KhanepaniPaymentRouteArgs {
  const KhanepaniPaymentRouteArgs({
    this.key,
    required this.payData,
  });

  final _i63.Key? key;

  final _i67.UtilityPaymentsModel payData;

  @override
  String toString() {
    return 'KhanepaniPaymentRouteArgs{key: $key, payData: $payData}';
  }
}

/// generated route for
/// [_i55.TopUpPage]
class TopUpRoute extends _i62.PageRouteInfo<TopUpRouteArgs> {
  TopUpRoute({
    _i63.Key? key,
    required _i67.UtilityPaymentsModel payData,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          TopUpRoute.name,
          args: TopUpRouteArgs(
            key: key,
            payData: payData,
          ),
          initialChildren: children,
        );

  static const String name = 'TopUpRoute';

  static const _i62.PageInfo<TopUpRouteArgs> page =
      _i62.PageInfo<TopUpRouteArgs>(name);
}

class TopUpRouteArgs {
  const TopUpRouteArgs({
    this.key,
    required this.payData,
  });

  final _i63.Key? key;

  final _i67.UtilityPaymentsModel payData;

  @override
  String toString() {
    return 'TopUpRouteArgs{key: $key, payData: $payData}';
  }
}

/// generated route for
/// [_i56.TVPaymentPage]
class TVPaymentRoute extends _i62.PageRouteInfo<TVPaymentRouteArgs> {
  TVPaymentRoute({
    _i63.Key? key,
    required _i67.UtilityPaymentsModel payData,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          TVPaymentRoute.name,
          args: TVPaymentRouteArgs(
            key: key,
            payData: payData,
          ),
          initialChildren: children,
        );

  static const String name = 'TVPaymentRoute';

  static const _i62.PageInfo<TVPaymentRouteArgs> page =
      _i62.PageInfo<TVPaymentRouteArgs>(name);
}

class TVPaymentRouteArgs {
  const TVPaymentRouteArgs({
    this.key,
    required this.payData,
  });

  final _i63.Key? key;

  final _i67.UtilityPaymentsModel payData;

  @override
  String toString() {
    return 'TVPaymentRouteArgs{key: $key, payData: $payData}';
  }
}

/// generated route for
/// [_i57.ISPPaymentPage]
class ISPPaymentRoute extends _i62.PageRouteInfo<ISPPaymentRouteArgs> {
  ISPPaymentRoute({
    _i63.Key? key,
    required _i67.UtilityPaymentsModel payData,
    bool? isPhoneRequired = false,
    bool? isCustomerIdRequired = false,
    bool? isAmountRequired = false,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          ISPPaymentRoute.name,
          args: ISPPaymentRouteArgs(
            key: key,
            payData: payData,
            isPhoneRequired: isPhoneRequired,
            isCustomerIdRequired: isCustomerIdRequired,
            isAmountRequired: isAmountRequired,
          ),
          initialChildren: children,
        );

  static const String name = 'ISPPaymentRoute';

  static const _i62.PageInfo<ISPPaymentRouteArgs> page =
      _i62.PageInfo<ISPPaymentRouteArgs>(name);
}

class ISPPaymentRouteArgs {
  const ISPPaymentRouteArgs({
    this.key,
    required this.payData,
    this.isPhoneRequired = false,
    this.isCustomerIdRequired = false,
    this.isAmountRequired = false,
  });

  final _i63.Key? key;

  final _i67.UtilityPaymentsModel payData;

  final bool? isPhoneRequired;

  final bool? isCustomerIdRequired;

  final bool? isAmountRequired;

  @override
  String toString() {
    return 'ISPPaymentRouteArgs{key: $key, payData: $payData, isPhoneRequired: $isPhoneRequired, isCustomerIdRequired: $isCustomerIdRequired, isAmountRequired: $isAmountRequired}';
  }
}

/// generated route for
/// [_i58.NEAPaymentPage]
class NEAPaymentRoute extends _i62.PageRouteInfo<NEAPaymentRouteArgs> {
  NEAPaymentRoute({
    _i63.Key? key,
    required _i67.UtilityPaymentsModel payData,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          NEAPaymentRoute.name,
          args: NEAPaymentRouteArgs(
            key: key,
            payData: payData,
          ),
          initialChildren: children,
        );

  static const String name = 'NEAPaymentRoute';

  static const _i62.PageInfo<NEAPaymentRouteArgs> page =
      _i62.PageInfo<NEAPaymentRouteArgs>(name);
}

class NEAPaymentRouteArgs {
  const NEAPaymentRouteArgs({
    this.key,
    required this.payData,
  });

  final _i63.Key? key;

  final _i67.UtilityPaymentsModel payData;

  @override
  String toString() {
    return 'NEAPaymentRouteArgs{key: $key, payData: $payData}';
  }
}

/// generated route for
/// [_i59.UtilityPamentWidget]
class UtilityPamentWidget extends _i62.PageRouteInfo<UtilityPamentWidgetArgs> {
  UtilityPamentWidget({
    _i77.Key? key,
    required List<_i67.UtilityPaymentsModel> paymentData,
    dynamic Function()? onViewLess,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          UtilityPamentWidget.name,
          args: UtilityPamentWidgetArgs(
            key: key,
            paymentData: paymentData,
            onViewLess: onViewLess,
          ),
          initialChildren: children,
        );

  static const String name = 'UtilityPamentWidget';

  static const _i62.PageInfo<UtilityPamentWidgetArgs> page =
      _i62.PageInfo<UtilityPamentWidgetArgs>(name);
}

class UtilityPamentWidgetArgs {
  const UtilityPamentWidgetArgs({
    this.key,
    required this.paymentData,
    this.onViewLess,
  });

  final _i77.Key? key;

  final List<_i67.UtilityPaymentsModel> paymentData;

  final dynamic Function()? onViewLess;

  @override
  String toString() {
    return 'UtilityPamentWidgetArgs{key: $key, paymentData: $paymentData, onViewLess: $onViewLess}';
  }
}

/// generated route for
/// [_i60.JapaneseMannerPage]
class JapaneseMannerRoute extends _i62.PageRouteInfo<JapaneseMannerRouteArgs> {
  JapaneseMannerRoute({
    _i63.Key? key,
    String? categoryName,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          JapaneseMannerRoute.name,
          args: JapaneseMannerRouteArgs(
            key: key,
            categoryName: categoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'JapaneseMannerRoute';

  static const _i62.PageInfo<JapaneseMannerRouteArgs> page =
      _i62.PageInfo<JapaneseMannerRouteArgs>(name);
}

class JapaneseMannerRouteArgs {
  const JapaneseMannerRouteArgs({
    this.key,
    this.categoryName,
  });

  final _i63.Key? key;

  final String? categoryName;

  @override
  String toString() {
    return 'JapaneseMannerRouteArgs{key: $key, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i61.JPMannerDetailFromAPiPage]
class JPMannerDetailFromAPiRoute
    extends _i62.PageRouteInfo<JPMannerDetailFromAPiRouteArgs> {
  JPMannerDetailFromAPiRoute({
    _i63.Key? key,
    required int id,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          JPMannerDetailFromAPiRoute.name,
          args: JPMannerDetailFromAPiRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'JPMannerDetailFromAPiRoute';

  static const _i62.PageInfo<JPMannerDetailFromAPiRouteArgs> page =
      _i62.PageInfo<JPMannerDetailFromAPiRouteArgs>(name);
}

class JPMannerDetailFromAPiRouteArgs {
  const JPMannerDetailFromAPiRouteArgs({
    this.key,
    required this.id,
  });

  final _i63.Key? key;

  final int id;

  @override
  String toString() {
    return 'JPMannerDetailFromAPiRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i61.JapaneseMannerDetailPage]
class JapaneseMannerDetailRoute
    extends _i62.PageRouteInfo<JapaneseMannerDetailRouteArgs> {
  JapaneseMannerDetailRoute({
    _i63.Key? key,
    required _i78.JapaneseManner japaneseManner,
    List<_i62.PageRouteInfo>? children,
  }) : super(
          JapaneseMannerDetailRoute.name,
          args: JapaneseMannerDetailRouteArgs(
            key: key,
            japaneseManner: japaneseManner,
          ),
          initialChildren: children,
        );

  static const String name = 'JapaneseMannerDetailRoute';

  static const _i62.PageInfo<JapaneseMannerDetailRouteArgs> page =
      _i62.PageInfo<JapaneseMannerDetailRouteArgs>(name);
}

class JapaneseMannerDetailRouteArgs {
  const JapaneseMannerDetailRouteArgs({
    this.key,
    required this.japaneseManner,
  });

  final _i63.Key? key;

  final _i78.JapaneseManner japaneseManner;

  @override
  String toString() {
    return 'JapaneseMannerDetailRouteArgs{key: $key, japaneseManner: $japaneseManner}';
  }
}
