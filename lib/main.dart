import 'package:flutter/material.dart';

import 'app/wallet_app.dart';

// ignore: avoid_void_async
void main() async {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Palette.primary,
  //   statusBarBrightness: Brightness.light,
  // ));
  // WidgetsFlutterBinding.ensureInitialized();
  // configureInjection(Environment.prod);

  /// for registering the factory.
  await Future.delayed(const Duration(seconds: 2));
  runApp(WalletApp());
}
