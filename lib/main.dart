import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/injections/injection.dart';

import 'app/wallet_app.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  /// for registering the factory.
  await Future.delayed(const Duration(seconds: 2));
  runApp(WalletApp());
}
