// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/japanese_manners/domain/entities/japanese_manner.dart';
import '../../features/news/domain/entity/news_item.dart';
import '../../features/partner_services/domain/entities/services.dart';
import '../../features/resume/domain/entities/academic_history.dart';
import '../../features/resume/domain/entities/personal_info.dart';
import '../../features/resume/domain/entities/qualification_history.dart';
import '../../features/resume/domain/entities/work_history.dart';
import '../pages/auth/forgot_password_screen.dart';
import '../pages/auth/login_screen.dart';
import '../pages/auth/register_screen.dart';
import '../pages/auth/validate_user_screen.dart';
import '../pages/home/detail_pages/japanese_manner_detail.dart';
import '../pages/home/detail_pages/service_detail.dart';
import '../pages/japanese_manner/japanese_manner_page.dart';
import '../pages/news/detail_page/news_detail.dart';
import '../pages/partner_services/partner_services.dart';
import '../pages/profile_page/profile_page.dart';
import '../pages/resume/resume_tab_pages/about/edit_basic_info.dart';
import '../pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import '../pages/resume/resume_tab_pages/address/contact_address/edit_contact_address_info.dart';
import '../pages/resume/resume_tab_pages/address/current_address/edit_current_address_info.dart';
import '../pages/resume/resume_tab_pages/other/edit_other_info.dart';
import '../pages/resume/resume_tab_pages/qualification/edit_qualification_info.dart';
import '../pages/resume/resume_tab_pages/work/edit_work_info.dart';
import '../pages/splash/splash_screen.dart';
import '../pages/tab_bar/tab_bar_screen.dart';
import '../pages/webview/app_web_view.dart';

class Routes {
  static const String splashScreen = '/';
  static const String loginPage = '/login-page';
  static const String forgotPasswordPage = '/forgot-password-page';
  static const String verifyUserPage = '/verify-user-page';
  static const String signupPage = '/signup-page';
  static const String tabBarScreen = '/tab-bar-screen';
  static const String editBasicInfoForm = '/edit-basic-info-form';
  static const String editCurrentAddressInfoForm =
      '/edit-current-address-info-form';
  static const String editContactAddressInfoForm =
      '/edit-contact-address-info-form';
  static const String editWorkInfoForm = '/edit-work-info-form';
  static const String editAcademicInfoForm = '/edit-academic-info-form';
  static const String editQualificationInfoForm =
      '/edit-qualification-info-form';
  static const String editOtherInfoForm = '/edit-other-info-form';
  static const String servicesDetail = '/services-detail';
  static const String japaneseMannerDetailPage = '/japanese-manner-detail-page';
  static const String newsDetail = '/news-detail';
  static const String appWebView = '/app-web-view';
  static const String profilePage = '/profile-page';
  static const String partnerServicesPage = '/partner-services-page';
  static const String japaneseMannerPage = '/japanese-manner-page';
  static const all = <String>{
    splashScreen,
    loginPage,
    forgotPasswordPage,
    verifyUserPage,
    signupPage,
    tabBarScreen,
    editBasicInfoForm,
    editCurrentAddressInfoForm,
    editContactAddressInfoForm,
    editWorkInfoForm,
    editAcademicInfoForm,
    editQualificationInfoForm,
    editOtherInfoForm,
    servicesDetail,
    japaneseMannerDetailPage,
    newsDetail,
    appWebView,
    profilePage,
    partnerServicesPage,
    japaneseMannerPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.forgotPasswordPage, page: ForgotPasswordPage),
    RouteDef(Routes.verifyUserPage, page: VerifyUserPage),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.tabBarScreen, page: TabBarScreen),
    RouteDef(Routes.editBasicInfoForm, page: EditBasicInfoForm),
    RouteDef(Routes.editCurrentAddressInfoForm,
        page: EditCurrentAddressInfoForm),
    RouteDef(Routes.editContactAddressInfoForm,
        page: EditContactAddressInfoForm),
    RouteDef(Routes.editWorkInfoForm, page: EditWorkInfoForm),
    RouteDef(Routes.editAcademicInfoForm, page: EditAcademicInfoForm),
    RouteDef(Routes.editQualificationInfoForm, page: EditQualificationInfoForm),
    RouteDef(Routes.editOtherInfoForm, page: EditOtherInfoForm),
    RouteDef(Routes.servicesDetail, page: ServicesDetail),
    RouteDef(Routes.japaneseMannerDetailPage, page: JapaneseMannerDetailPage),
    RouteDef(Routes.newsDetail, page: NewsDetail),
    RouteDef(Routes.appWebView, page: AppWebView),
    RouteDef(Routes.profilePage, page: ProfilePage),
    RouteDef(Routes.partnerServicesPage, page: PartnerServicesPage),
    RouteDef(Routes.japaneseMannerPage, page: JapaneseMannerPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    ForgotPasswordPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordPage(),
        settings: data,
      );
    },
    VerifyUserPage: (data) {
      final args = data.getArgs<VerifyUserPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => VerifyUserPage(
          key: args.key,
          email: args.email,
        ),
        settings: data,
      );
    },
    SignupPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupPage(),
        settings: data,
      );
    },
    TabBarScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TabBarScreen(),
        settings: data,
      );
    },
    EditBasicInfoForm: (data) {
      final args = data.getArgs<EditBasicInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditBasicInfoForm(
          key: args.key,
          info: args.info,
          listOfNationality: args.listOfNationality,
          listOfProfession: args.listOfProfession,
          lang: args.lang,
        ),
        settings: data,
      );
    },
    EditCurrentAddressInfoForm: (data) {
      final args =
          data.getArgs<EditCurrentAddressInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditCurrentAddressInfoForm(
          key: args.key,
          info: args.info,
          lang: args.lang,
          prefecture: args.prefecture,
          provinces: args.provinces,
        ),
        settings: data,
      );
    },
    EditContactAddressInfoForm: (data) {
      final args =
          data.getArgs<EditContactAddressInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditContactAddressInfoForm(
          key: args.key,
          info: args.info,
          lang: args.lang,
          prefecture: args.prefecture,
          provinces: args.provinces,
        ),
        settings: data,
      );
    },
    EditWorkInfoForm: (data) {
      final args = data.getArgs<EditWorkInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditWorkInfoForm(
          key: args.key,
          info: args.info,
          typeOfCompanyList: args.typeOfCompanyList,
          lang: args.lang,
        ),
        settings: data,
      );
    },
    EditAcademicInfoForm: (data) {
      final args = data.getArgs<EditAcademicInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditAcademicInfoForm(
          key: args.key,
          info: args.info,
          listOfSubjects: args.listOfSubjects,
          lang: args.lang,
        ),
        settings: data,
      );
    },
    EditQualificationInfoForm: (data) {
      final args =
          data.getArgs<EditQualificationInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditQualificationInfoForm(
          key: args.key,
          info: args.info,
          lang: args.lang,
        ),
        settings: data,
      );
    },
    EditOtherInfoForm: (data) {
      final args = data.getArgs<EditOtherInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditOtherInfoForm(
          key: args.key,
          info: args.info,
          listOfLanguages: args.listOfLanguages,
          listOfHobbies: args.listOfHobbies,
          listOfSkills: args.listOfSkills,
          lang: args.lang,
        ),
        settings: data,
      );
    },
    ServicesDetail: (data) {
      final args = data.getArgs<ServicesDetailArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ServicesDetail(
          key: args.key,
          services: args.services,
        ),
        settings: data,
      );
    },
    JapaneseMannerDetailPage: (data) {
      final args =
          data.getArgs<JapaneseMannerDetailPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => JapaneseMannerDetailPage(
          key: args.key,
          japaneseManner: args.japaneseManner,
        ),
        settings: data,
      );
    },
    NewsDetail: (data) {
      final args = data.getArgs<NewsDetailArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewsDetail(
          key: args.key,
          newsItem: args.newsItem,
        ),
        settings: data,
      );
    },
    AppWebView: (data) {
      final args = data.getArgs<AppWebViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AppWebView(
          key: args.key,
          url: args.url,
          title: args.title,
        ),
        settings: data,
      );
    },
    ProfilePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfilePage(),
        settings: data,
      );
    },
    PartnerServicesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PartnerServicesPage(),
        settings: data,
      );
    },
    JapaneseMannerPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => JapaneseMannerPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushForgotPasswordPage() =>
      push<dynamic>(Routes.forgotPasswordPage);

  Future<dynamic> pushVerifyUserPage({
    Key key,
    @required String email,
  }) =>
      push<dynamic>(
        Routes.verifyUserPage,
        arguments: VerifyUserPageArguments(key: key, email: email),
      );

  Future<dynamic> pushSignupPage() => push<dynamic>(Routes.signupPage);

  Future<dynamic> pushTabBarScreen() => push<dynamic>(Routes.tabBarScreen);

  Future<dynamic> pushEditBasicInfoForm({
    Key key,
    @required PersonalInfo info,
    @required List<String> listOfNationality,
    @required List<String> listOfProfession,
    @required String lang,
  }) =>
      push<dynamic>(
        Routes.editBasicInfoForm,
        arguments: EditBasicInfoFormArguments(
            key: key,
            info: info,
            listOfNationality: listOfNationality,
            listOfProfession: listOfProfession,
            lang: lang),
      );

  Future<dynamic> pushEditCurrentAddressInfoForm({
    Key key,
    @required PersonalInfo info,
    @required String lang,
    @required List<String> prefecture,
    @required List<String> provinces,
  }) =>
      push<dynamic>(
        Routes.editCurrentAddressInfoForm,
        arguments: EditCurrentAddressInfoFormArguments(
            key: key,
            info: info,
            lang: lang,
            prefecture: prefecture,
            provinces: provinces),
      );

  Future<dynamic> pushEditContactAddressInfoForm({
    Key key,
    @required PersonalInfo info,
    @required String lang,
    @required List<String> prefecture,
    @required List<String> provinces,
  }) =>
      push<dynamic>(
        Routes.editContactAddressInfoForm,
        arguments: EditContactAddressInfoFormArguments(
            key: key,
            info: info,
            lang: lang,
            prefecture: prefecture,
            provinces: provinces),
      );

  Future<dynamic> pushEditWorkInfoForm({
    Key key,
    @required WorkHistory info,
    @required List<String> typeOfCompanyList,
    @required String lang,
  }) =>
      push<dynamic>(
        Routes.editWorkInfoForm,
        arguments: EditWorkInfoFormArguments(
            key: key,
            info: info,
            typeOfCompanyList: typeOfCompanyList,
            lang: lang),
      );

  Future<dynamic> pushEditAcademicInfoForm({
    Key key,
    @required AcademicHistory info,
    @required List<String> listOfSubjects,
    @required String lang,
  }) =>
      push<dynamic>(
        Routes.editAcademicInfoForm,
        arguments: EditAcademicInfoFormArguments(
            key: key, info: info, listOfSubjects: listOfSubjects, lang: lang),
      );

  Future<dynamic> pushEditQualificationInfoForm({
    Key key,
    @required QualificationHistory info,
    @required String lang,
  }) =>
      push<dynamic>(
        Routes.editQualificationInfoForm,
        arguments: EditQualificationInfoFormArguments(
            key: key, info: info, lang: lang),
      );

  Future<dynamic> pushEditOtherInfoForm({
    Key key,
    @required PersonalInfo info,
    @required List<String> listOfLanguages,
    @required List<String> listOfHobbies,
    @required List<String> listOfSkills,
    @required String lang,
  }) =>
      push<dynamic>(
        Routes.editOtherInfoForm,
        arguments: EditOtherInfoFormArguments(
            key: key,
            info: info,
            listOfLanguages: listOfLanguages,
            listOfHobbies: listOfHobbies,
            listOfSkills: listOfSkills,
            lang: lang),
      );

  Future<dynamic> pushServicesDetail({
    Key key,
    @required Services services,
  }) =>
      push<dynamic>(
        Routes.servicesDetail,
        arguments: ServicesDetailArguments(key: key, services: services),
      );

  Future<dynamic> pushJapaneseMannerDetailPage({
    Key key,
    @required JapaneseManner japaneseManner,
  }) =>
      push<dynamic>(
        Routes.japaneseMannerDetailPage,
        arguments: JapaneseMannerDetailPageArguments(
            key: key, japaneseManner: japaneseManner),
      );

  Future<dynamic> pushNewsDetail({
    Key key,
    @required NewsItem newsItem,
  }) =>
      push<dynamic>(
        Routes.newsDetail,
        arguments: NewsDetailArguments(key: key, newsItem: newsItem),
      );

  Future<dynamic> pushAppWebView({
    Key key,
    @required String url,
    @required String title,
  }) =>
      push<dynamic>(
        Routes.appWebView,
        arguments: AppWebViewArguments(key: key, url: url, title: title),
      );

  Future<dynamic> pushProfilePage() => push<dynamic>(Routes.profilePage);

  Future<dynamic> pushPartnerServicesPage() =>
      push<dynamic>(Routes.partnerServicesPage);

  Future<dynamic> pushJapaneseMannerPage() =>
      push<dynamic>(Routes.japaneseMannerPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// VerifyUserPage arguments holder class
class VerifyUserPageArguments {
  final Key key;
  final String email;
  VerifyUserPageArguments({this.key, @required this.email});
}

/// EditBasicInfoForm arguments holder class
class EditBasicInfoFormArguments {
  final Key key;
  final PersonalInfo info;
  final List<String> listOfNationality;
  final List<String> listOfProfession;
  final String lang;
  EditBasicInfoFormArguments(
      {this.key,
      @required this.info,
      @required this.listOfNationality,
      @required this.listOfProfession,
      @required this.lang});
}

/// EditCurrentAddressInfoForm arguments holder class
class EditCurrentAddressInfoFormArguments {
  final Key key;
  final PersonalInfo info;
  final String lang;
  final List<String> prefecture;
  final List<String> provinces;
  EditCurrentAddressInfoFormArguments(
      {this.key,
      @required this.info,
      @required this.lang,
      @required this.prefecture,
      @required this.provinces});
}

/// EditContactAddressInfoForm arguments holder class
class EditContactAddressInfoFormArguments {
  final Key key;
  final PersonalInfo info;
  final String lang;
  final List<String> prefecture;
  final List<String> provinces;
  EditContactAddressInfoFormArguments(
      {this.key,
      @required this.info,
      @required this.lang,
      @required this.prefecture,
      @required this.provinces});
}

/// EditWorkInfoForm arguments holder class
class EditWorkInfoFormArguments {
  final Key key;
  final WorkHistory info;
  final List<String> typeOfCompanyList;
  final String lang;
  EditWorkInfoFormArguments(
      {this.key,
      @required this.info,
      @required this.typeOfCompanyList,
      @required this.lang});
}

/// EditAcademicInfoForm arguments holder class
class EditAcademicInfoFormArguments {
  final Key key;
  final AcademicHistory info;
  final List<String> listOfSubjects;
  final String lang;
  EditAcademicInfoFormArguments(
      {this.key,
      @required this.info,
      @required this.listOfSubjects,
      @required this.lang});
}

/// EditQualificationInfoForm arguments holder class
class EditQualificationInfoFormArguments {
  final Key key;
  final QualificationHistory info;
  final String lang;
  EditQualificationInfoFormArguments(
      {this.key, @required this.info, @required this.lang});
}

/// EditOtherInfoForm arguments holder class
class EditOtherInfoFormArguments {
  final Key key;
  final PersonalInfo info;
  final List<String> listOfLanguages;
  final List<String> listOfHobbies;
  final List<String> listOfSkills;
  final String lang;
  EditOtherInfoFormArguments(
      {this.key,
      @required this.info,
      @required this.listOfLanguages,
      @required this.listOfHobbies,
      @required this.listOfSkills,
      @required this.lang});
}

/// ServicesDetail arguments holder class
class ServicesDetailArguments {
  final Key key;
  final Services services;
  ServicesDetailArguments({this.key, @required this.services});
}

/// JapaneseMannerDetailPage arguments holder class
class JapaneseMannerDetailPageArguments {
  final Key key;
  final JapaneseManner japaneseManner;
  JapaneseMannerDetailPageArguments({this.key, @required this.japaneseManner});
}

/// NewsDetail arguments holder class
class NewsDetailArguments {
  final Key key;
  final NewsItem newsItem;
  NewsDetailArguments({this.key, @required this.newsItem});
}

/// AppWebView arguments holder class
class AppWebViewArguments {
  final Key key;
  final String url;
  final String title;
  AppWebViewArguments({this.key, @required this.url, @required this.title});
}
