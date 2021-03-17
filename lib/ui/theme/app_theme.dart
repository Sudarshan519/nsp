import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Palette.primary,
    cardColor: Colors.white,
    backgroundColor: Colors.grey,
    buttonColor: Palette.black,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Palette.black,
      ),
      headline2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Palette.black,
      ),
      headline3: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Palette.black,
      ),
      headline4: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Palette.black,
      ),
      headline5: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        color: Palette.black,
      ),
      headline6: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: Palette.black,
        decoration: TextDecoration.lineThrough,
      ),
    ),
  ),
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    cardColor: Colors.black,
    backgroundColor: Colors.black,
    buttonColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Palette.white,
      ),
      headline2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Palette.white,
      ),
      headline3: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Palette.white,
      ),
      headline4: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Palette.white,
      ),
      headline5: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        color: Palette.white,
      ),
      headline6: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: Palette.white,
        decoration: TextDecoration.lineThrough,
      ),
    ),
  ),
};

extension CustomColorScheme on ColorScheme {
  Color get tabbarBackgroundColor =>
      brightness == Brightness.light ? Palette.white : Palette.black;
  Color get tabbarSelectorColor =>
      brightness == Brightness.light ? Palette.primary : Palette.white;
  Color get tabbarSelectedImageColor =>
      brightness == Brightness.light ? Palette.primary : Palette.black;
  Color get tabbarUnSelectedColor =>
      brightness == Brightness.light ? Palette.black : Palette.white;

  Color get lightColorOnLightTheme =>
      brightness == Brightness.light ? Palette.white : Palette.black;
  Color get lightColorAlways => Palette.white;
  Color get darkColorAlyways => Palette.black;
  Color get darkColorOnLightTheme =>
      brightness == Brightness.light ? Palette.black : Palette.white;

  Color get buttonColor =>
      brightness == Brightness.light ? Palette.primary : Palette.black;
}
