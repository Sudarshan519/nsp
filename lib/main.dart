import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/injections/injection.dart';

import 'app/wallet_app.dart';
import 'core/notification/push_notification_manager.dart';
import 'utils/config_reader.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  /// for registering the factory.
  await getIt<ConfigReader>().initialize();
  await FlutterDownloader.initialize(
    debug: getIt<ConfigReader>()
        .isDebugApp, // optional: set false to disable printing logs to console
  );

  // Notification setup
  await getIt<PushNotificationManager>().initialise();
  runApp(WalletApp());
}
