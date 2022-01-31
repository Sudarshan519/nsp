import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/app_update/update_service.dart';
import 'package:wallet_app/core/device_info/device_information_manager.dart';
import 'package:wallet_app/core/wallet_ad/wallet_ad_service.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

import 'app/wallet_app.dart';
import 'core/geo_location/geo_location.dart';
import 'core/notification/push_notification_manager.dart';
import 'core/payment_auth/payment_auth_service.dart';
import 'utils/config_reader.dart';

final appRouter = AppRouter();

Future main() async {
  await appInitializations();
  runApp(WalletApp());
}

Future appInitializations() async {
  HttpOverrides.global = MyHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();
  WalletAdService.init();
  DeviceInfoManager.init();
  await configureInjection(Environment.prod);

  /// for registering the factory.
  await getIt<ConfigReader>().initialize();
  await FlutterDownloader.initialize(
    debug: getIt<ConfigReader>()
        .isDebugApp, // optional: set false to disable printing logs to console
  );

  // Notification setup
  await Firebase.initializeApp();
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  await getIt<PushNotificationManager>().initialise();
  await getIt<GeoLocationManager>().initialise();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  PaymentAuthService.init();
  UpdateService.init();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
