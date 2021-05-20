// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/alerts/domain/entity/alert_model.dart' as _i33;
import '../../features/japanese_manners/domain/entities/japanese_manner.dart'
    as _i32;
import '../../features/news/domain/entity/news_item.dart' as _i30;
import '../../features/partner_services/domain/entities/services.dart' as _i31;
import '../../features/resume/domain/entities/academic_history.dart' as _i28;
import '../../features/resume/domain/entities/personal_info.dart' as _i26;
import '../../features/resume/domain/entities/qualification_history.dart'
    as _i29;
import '../../features/resume/domain/entities/work_history.dart' as _i27;
import '../pages/alerts/alerts_page.dart' as _i23;
import '../pages/alerts/alerts_tab_page.dart' as _i24;
import '../pages/alerts/detail/alert_detail_page.dart' as _i25;
import '../pages/auth/forgot_password_screen.dart' as _i5;
import '../pages/auth/login_screen.dart' as _i4;
import '../pages/auth/register_screen.dart' as _i7;
import '../pages/auth/validate_user_screen.dart' as _i6;
import '../pages/japanese_manner/japanese_manner_detail.dart' as _i22;
import '../pages/japanese_manner/japanese_manner_page.dart' as _i21;
import '../pages/news/detail_page/news_detail.dart' as _i16;
import '../pages/partner_services/partner_services.dart' as _i19;
import '../pages/partner_services/service_detail.dart' as _i20;
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
        _i1.RouteConfig(AlertDetailRoute.name, path: '/alert-detail-page')
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
      required _i26.PersonalInfo info,
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

  final _i26.PersonalInfo info;

  final List<String> listOfNationality;

  final List<String> listOfProfession;

  final String lang;
}

class EditCurrentAddressInfoFormRoute
    extends _i1.PageRouteInfo<EditCurrentAddressInfoFormRouteArgs> {
  EditCurrentAddressInfoFormRoute(
      {_i2.Key? key,
      required _i26.PersonalInfo info,
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

  final _i26.PersonalInfo info;

  final String lang;

  final List<String> prefecture;

  final List<String> provinces;
}

class EditContactAddressInfoFormRoute
    extends _i1.PageRouteInfo<EditContactAddressInfoFormRouteArgs> {
  EditContactAddressInfoFormRoute(
      {_i2.Key? key,
      required _i26.PersonalInfo info,
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

  final _i26.PersonalInfo info;

  final String lang;

  final List<String> prefecture;

  final List<String> provinces;
}

class EditWorkInfoFormRoute
    extends _i1.PageRouteInfo<EditWorkInfoFormRouteArgs> {
  EditWorkInfoFormRoute(
      {_i2.Key? key,
      required _i27.WorkHistory info,
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

  final _i27.WorkHistory info;

  final List<String> typeOfCompanyList;

  final String lang;
}

class EditAcademicInfoFormRoute
    extends _i1.PageRouteInfo<EditAcademicInfoFormRouteArgs> {
  EditAcademicInfoFormRoute(
      {_i2.Key? key,
      required _i28.AcademicHistory info,
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

  final _i28.AcademicHistory info;

  final List<String> listOfSubjects;

  final String lang;
}

class EditQualificationInfoFormRoute
    extends _i1.PageRouteInfo<EditQualificationInfoFormRouteArgs> {
  EditQualificationInfoFormRoute(
      {_i2.Key? key,
      required _i29.QualificationHistory info,
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

  final _i29.QualificationHistory info;

  final String lang;
}

class EditOtherInfoFormRoute
    extends _i1.PageRouteInfo<EditOtherInfoFormRouteArgs> {
  EditOtherInfoFormRoute(
      {_i2.Key? key,
      required _i26.PersonalInfo info,
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

  final _i26.PersonalInfo info;

  final List<String> listOfLanguages;

  final List<String> listOfHobbies;

  final List<String> listOfSkills;

  final String lang;
}

class NewsDetailRoute extends _i1.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({_i2.Key? key, required _i30.NewsItem newsItem})
      : super(name,
            path: '/news-detail-page',
            args: NewsDetailRouteArgs(key: key, newsItem: newsItem));

  static const String name = 'NewsDetailRoute';
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({this.key, required this.newsItem});

  final _i2.Key? key;

  final _i30.NewsItem newsItem;
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
  PartnerServicesRoute({_i2.Key? key, String categoryName})
      : super(name,
            path: '/partner-services-page',
            args:
                PartnerServicesRouteArgs(key: key, categoryName: categoryName));

  static const String name = 'PartnerServicesRoute';
}

class PartnerServicesRouteArgs {
  const PartnerServicesRouteArgs({this.key, this.categoryName});

  final _i2.Key? key;

  final String categoryName;
}

class ServicesDetailRoute extends _i1.PageRouteInfo<ServicesDetailRouteArgs> {
  ServicesDetailRoute({_i2.Key? key, required _i31.Services services})
      : super(name,
            path: '/services-detail-page',
            args: ServicesDetailRouteArgs(key: key, services: services));

  static const String name = 'ServicesDetailRoute';
}

class ServicesDetailRouteArgs {
  const ServicesDetailRouteArgs({this.key, required this.services});

  final _i2.Key? key;

  final _i31.Services services;
}

class JapaneseMannerRoute extends _i1.PageRouteInfo<JapaneseMannerRouteArgs> {
  JapaneseMannerRoute({_i2.Key? key, String categoryName})
      : super(name,
            path: '/japanese-manner-page',
            args:
                JapaneseMannerRouteArgs(key: key, categoryName: categoryName));

  static const String name = 'JapaneseMannerRoute';
}

class JapaneseMannerRouteArgs {
  const JapaneseMannerRouteArgs({this.key, this.categoryName});

  final _i2.Key? key;

  final String categoryName;
}

class JapaneseMannerDetailRoute
    extends _i1.PageRouteInfo<JapaneseMannerDetailRouteArgs> {
  JapaneseMannerDetailRoute(
      {_i2.Key? key, required _i32.JapaneseManner japaneseManner})
      : super(name,
            path: '/japanese-manner-detail-page',
            args: JapaneseMannerDetailRouteArgs(
                key: key, japaneseManner: japaneseManner));

  static const String name = 'JapaneseMannerDetailRoute';
}

class JapaneseMannerDetailRouteArgs {
  const JapaneseMannerDetailRouteArgs({this.key, required this.japaneseManner});

  final _i2.Key? key;

  final _i32.JapaneseManner japaneseManner;
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
  AlertDetailRoute({_i2.Key? key, required _i33.Alert alert})
      : super(name,
            path: '/alert-detail-page',
            args: AlertDetailRouteArgs(key: key, alert: alert));

  static const String name = 'AlertDetailRoute';
}

class AlertDetailRouteArgs {
  const AlertDetailRouteArgs({this.key, required this.alert});

  final _i2.Key? key;

  final _i33.Alert alert;
}
