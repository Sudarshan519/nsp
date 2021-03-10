// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/resume/domain/entities/academic_history.dart';
import '../../features/resume/domain/entities/personal_info.dart';
import '../../features/resume/domain/entities/qualification_history.dart';
import '../../features/resume/domain/entities/work_history.dart';
import '../../features/resume/presentation/update_academic_info/actor/update_academic_info_actor_bloc.dart';
import '../../features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import '../../features/resume/presentation/update_personal_info/actor/update_personal_info_actor_bloc.dart';
import '../../features/resume/presentation/update_qualification_info_actor/update_qualification_info_actor_bloc.dart';
import '../../features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import '../pages/auth/forgot_password_screen.dart';
import '../pages/auth/login_screen.dart';
import '../pages/auth/register_screen.dart';
import '../pages/auth/validate_user_screen.dart';
import '../pages/resume/resume_tab_pages/about/edit_basic_info.dart';
import '../pages/resume/resume_tab_pages/academics/edit_academic_info.dart';
import '../pages/resume/resume_tab_pages/address/edit_address_info.dart';
import '../pages/resume/resume_tab_pages/other/edit_other_info.dart';
import '../pages/resume/resume_tab_pages/qualification/edit_qualification_info.dart';
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
  static const String editQualificationInfoForm =
      '/edit-qualification-info-form';
  static const String editOtherInfoForm = '/edit-other-info-form';
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
    editQualificationInfoForm,
    editOtherInfoForm,
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
    RouteDef(Routes.editQualificationInfoForm, page: EditQualificationInfoForm),
    RouteDef(Routes.editOtherInfoForm, page: EditOtherInfoForm),
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
          actorBloc: args.actorBloc,
        ),
        settings: data,
      );
    },
    EditAddressInfoForm: (data) {
      final args = data.getArgs<EditAddressInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditAddressInfoForm(
          key: args.key,
          info: args.info,
          actorBloc: args.actorBloc,
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
          actorBloc: args.actorBloc,
        ),
        settings: data,
      );
    },
    EditAcademicInfoForm: (data) {
      final args = data.getArgs<EditAcademicInfoFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditAcademicInfoForm(
          key: args.key,
          actorBloc: args.actorBloc,
          info: args.info,
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
          actorBloc: args.actorBloc,
          info: args.info,
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
          actorBloc: args.actorBloc,
        ),
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
    @required UpdatePersonalInfoActorBloc actorBloc,
  }) =>
      push<dynamic>(
        Routes.editBasicInfoForm,
        arguments: EditBasicInfoFormArguments(
            key: key, info: info, actorBloc: actorBloc),
      );

  Future<dynamic> pushEditAddressInfoForm({
    Key key,
    @required PersonalInfo info,
    @required UpdateAddressInfoActorBloc actorBloc,
  }) =>
      push<dynamic>(
        Routes.editAddressInfoForm,
        arguments: EditAddressInfoFormArguments(
            key: key, info: info, actorBloc: actorBloc),
      );

  Future<dynamic> pushEditWorkInfoForm({
    Key key,
    @required WorkHistory info,
    @required UpdateWorkInfoActorBloc actorBloc,
  }) =>
      push<dynamic>(
        Routes.editWorkInfoForm,
        arguments: EditWorkInfoFormArguments(
            key: key, info: info, actorBloc: actorBloc),
      );

  Future<dynamic> pushEditAcademicInfoForm({
    Key key,
    @required UpdateAcademicInfoActorBloc actorBloc,
    @required AcademicHistory info,
  }) =>
      push<dynamic>(
        Routes.editAcademicInfoForm,
        arguments: EditAcademicInfoFormArguments(
            key: key, actorBloc: actorBloc, info: info),
      );

  Future<dynamic> pushEditQualificationInfoForm({
    Key key,
    @required UpdateQualificationInfoActorBloc actorBloc,
    @required QualificationHistory info,
  }) =>
      push<dynamic>(
        Routes.editQualificationInfoForm,
        arguments: EditQualificationInfoFormArguments(
            key: key, actorBloc: actorBloc, info: info),
      );

  Future<dynamic> pushEditOtherInfoForm({
    Key key,
    @required PersonalInfo info,
    @required UpdatePersonalInfoActorBloc actorBloc,
  }) =>
      push<dynamic>(
        Routes.editOtherInfoForm,
        arguments: EditOtherInfoFormArguments(
            key: key, info: info, actorBloc: actorBloc),
      );
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
  final UpdatePersonalInfoActorBloc actorBloc;
  EditBasicInfoFormArguments(
      {this.key, @required this.info, @required this.actorBloc});
}

/// EditAddressInfoForm arguments holder class
class EditAddressInfoFormArguments {
  final Key key;
  final PersonalInfo info;
  final UpdateAddressInfoActorBloc actorBloc;
  EditAddressInfoFormArguments(
      {this.key, @required this.info, @required this.actorBloc});
}

/// EditWorkInfoForm arguments holder class
class EditWorkInfoFormArguments {
  final Key key;
  final WorkHistory info;
  final UpdateWorkInfoActorBloc actorBloc;
  EditWorkInfoFormArguments(
      {this.key, @required this.info, @required this.actorBloc});
}

/// EditAcademicInfoForm arguments holder class
class EditAcademicInfoFormArguments {
  final Key key;
  final UpdateAcademicInfoActorBloc actorBloc;
  final AcademicHistory info;
  EditAcademicInfoFormArguments(
      {this.key, @required this.actorBloc, @required this.info});
}

/// EditQualificationInfoForm arguments holder class
class EditQualificationInfoFormArguments {
  final Key key;
  final UpdateQualificationInfoActorBloc actorBloc;
  final QualificationHistory info;
  EditQualificationInfoFormArguments(
      {this.key, @required this.actorBloc, @required this.info});
}

/// EditOtherInfoForm arguments holder class
class EditOtherInfoFormArguments {
  final Key key;
  final PersonalInfo info;
  final UpdatePersonalInfoActorBloc actorBloc;
  EditOtherInfoFormArguments(
      {this.key, @required this.info, @required this.actorBloc});
}
