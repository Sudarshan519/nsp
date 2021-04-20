import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/injections/injection.dart';

import 'app/wallet_app.dart';
import 'utils/config_reader.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  /// for registering the factory.
  await Future.delayed(const Duration(seconds: 4));
  await getIt<ConfigReader>().initialize();
  await FlutterDownloader.initialize(
    debug: getIt<ConfigReader>()
        .isDebugApp, // optional: set false to disable printing logs to console
  );
  runApp(WalletApp());
}
