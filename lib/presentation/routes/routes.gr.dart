// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/auth/forgot_password_screen.dart';
import '../pages/auth/login_screen.dart';
import '../pages/auth/register_screen.dart';
import '../pages/tab_bar/tab_bar_screen.dart';

class Routes {
  static const String loginPage = '/';
  static const String forgotPasswordPage = '/forgot-password-page';
  static const String signupPage = '/signup-page';
  static const String tabBarScreen = '/tab-bar-screen';
  static const all = <String>{
    loginPage,
    forgotPasswordPage,
    signupPage,
    tabBarScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.forgotPasswordPage, page: ForgotPasswordPage),
    RouteDef(Routes.signupPage, page: SignupPage),
    RouteDef(Routes.tabBarScreen, page: TabBarScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
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
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushForgotPasswordPage() =>
      push<dynamic>(Routes.forgotPasswordPage);

  Future<dynamic> pushSignupPage() => push<dynamic>(Routes.signupPage);

  Future<dynamic> pushTabBarScreen() => push<dynamic>(Routes.tabBarScreen);
}
