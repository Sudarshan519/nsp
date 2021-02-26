import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/injections/injection.dart';

import 'app/wallet_app.dart';
import 'utils/config_reader.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

//TODO: change it to get it
  await FlutterDownloader.initialize();

  /// for registering the factory.
  await Future.delayed(const Duration(seconds: 2));
  await getIt<ConfigReader>().initialize();
  runApp(WalletApp());
}
