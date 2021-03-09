// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/resume/domain/entities/personal_info.dart';
import '../pages/auth/forgot_password_screen.dart';
import '../pages/auth/login_screen.dart';
import '../pages/auth/register_screen.dart';
import '../pages/auth/validate_user_screen.dart';
import '../pages/resume/resume_tab_pages/about/edit_basic_info.dart';
import '../pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import '../pages/resume/resume_tab_pages/address/edit_address_info.dart';
import '../pages/resume/resume_tab_pages/work/edit_work_info.dart';
import '../pages/splash/splash_screen.dart';
import '../pages/tab_bar/tab_bar_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String loginPage = '/login-page';
  static const String forgotPasswordPage = '/forgot-password-page';
  static const String verifyUserPage = '/verify-user-page';
  static const String signupPage = '/signup-page';
  static const String tabBarScreen = '/tab-bar-screen';
  static const String editBasicInfoForm = '/edit-basic-info-form';
  static const String editAddressInfoForm = '/edit-address-info-form';
  static const String editWorkInfoForm = '/edit-work-info-form';
  static const String editAcademicInfoForm = '/edit-academic-info-form';
  static const all = <String>{
    splashScreen,
    loginPage,
    forgotPasswordPage,
    verifyUserPage,
    signupPage,
    tabBarScreen,
    editBasicInfoForm,
    editAddressInfoForm,
    editWorkInfoForm,
    editAcademicInfoForm,
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
    RouteDef(Routes.editAddressInfoForm, page: EditAddressInfoForm),
    RouteDef(Routes.editWorkInfoForm, page: EditWorkInfoForm),
    RouteDef(Routes.editAcademicInfoForm, page: EditAcademicInfoForm),
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
        ),
        settings: data,
      );
    },
    EditAddressInfoForm: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const EditAddressInfoForm(),
        settings: data,
      );
    },
    EditWorkInfoForm: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const EditWorkInfoForm(),
        settings: data,
      );
    },
    EditAcademicInfoForm: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const EditAcademicInfoForm(),
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
  }) =>
      push<dynamic>(
        Routes.editBasicInfoForm,
        arguments: EditBasicInfoFormArguments(key: key, info: info),
      );

  Future<dynamic> pushEditAddressInfoForm() =>
      push<dynamic>(Routes.editAddressInfoForm);

  Future<dynamic> pushEditWorkInfoForm() =>
      push<dynamic>(Routes.editWorkInfoForm);

  Future<dynamic> pushEditAcademicInfoForm() =>
      push<dynamic>(Routes.editAcademicInfoForm);
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
  EditBasicInfoFormArguments({this.key, @required this.info});
}
