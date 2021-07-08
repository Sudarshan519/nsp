import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class Palette {
  static Color white = HexColor.fromHex('#ffffff');
  static Color black = HexColor.fromHex('#000000');
  static Color primaryBackground = HexColor.fromHex('#efefef');

  static Color dividerColor = HexColor.fromHex('#E3E3E3');

  static Color formEditPencilColor = HexColor.fromHex("#9A9A9A");

  static Color primary = HexColor.fromHex('#E7AB00');
  static Color accent = HexColor.fromHex('#5663FF');

  static Color containerColor = HexColor.fromHex('#F1F1F1');

  static Color primaryButtonColor = HexColor.fromHex('#E7AB00');
  static Color switchButtonColor = HexColor.fromHex('#FAD200');
  static Color blackTextColor = HexColor.fromHex('#2C2D2F');
  static Color textFieldPlaceholderColor = HexColor.fromHex('#8C8C8C');

  static Color appGreenColor = HexColor.fromHex('#13D219');
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
