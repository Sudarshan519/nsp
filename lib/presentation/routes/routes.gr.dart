// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/tab_bar/tab_bar_screen.dart';

class Routes {
  static const String tabBarScreen = '/';
  static const all = <String>{
    tabBarScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.tabBarScreen, page: TabBarScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
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
  Future<dynamic> pushTabBarScreen() => push<dynamic>(Routes.tabBarScreen);
}
