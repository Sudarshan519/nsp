import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/notification/navigate_notification.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/main.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

const AndroidNotificationChannel _androidChannel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description:
      'This channel is used for important notifications.', // description
  importance: Importance.max,
);
final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

@lazySingleton
class PushNotificationManager {
  String _token = "";

  String get fireBaseToken {
    return _token;
  }

  Future setToken() async {
    try {
      _token = await _firebaseMessaging.getToken() ?? '';
    } catch (ex) {
      print(ex.toString());
    }
  }

  Future initialise() async {
    await _localNotificationSetup();
    await _pushNotificationSetup();
  }

  Future removeToken() async {
    await _firebaseMessaging.deleteToken();
    _token = '';
    getIt<AuthLocalDataSource>().setFCMToken('');
  }

  Future _localNotificationSetup() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings(
      'notification_logo',
    );

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      // onSelectNotification: _selectNotification,
    );

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_androidChannel);

// when opening the app from the notification you need to check with the plugin if a notification opened the app.
//So basically in the first screen, after initialising the FlutterLocalNotificationsPlugin,
//check didNotificationLaunchApp and if true call your onSelectNotification method:

    final notificationAppLaunchDetails = await _flutterLocalNotificationsPlugin
        .getNotificationAppLaunchDetails();
    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      // _selectNotification(notificationAppLaunchDetails?.payload ?? '',
      //     didNotificationLaunchApp: true);
    }
  }

  Future _pushNotificationSetup() async {
    _firebaseMessaging.requestPermission();

    try {
      setToken();
    } catch (ex) {
      debugPrint(ex.toString());
      return;
    }

    try {
      var topic = Values.PushNotifTopicId;
      if (getIt<ConfigReader>().isDebugApp) {
        topic = topic + '_dev';
      }
      _firebaseMessaging.subscribeToTopic(topic);
    } catch (ex) {
      debugPrint(ex.toString());
      return;
    }

    _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);

    FirebaseMessaging.onMessage.listen(handleForegroundIncomingNotification);
    FirebaseMessaging.onMessageOpenedApp
        .listen(handleBackgroundIncomingNotification);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundIncomingNotification);

    // Get any messages which caused the application to open from a terminated state.
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      handleBackgroundIncomingNotification(initialMessage);
    }
  }

  void showNotification({
    required int id,
    required String title,
    required String body,
    Map<String, dynamic>? payload,
  }) {
    _flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        NotificationDetails(
          android: AndroidNotificationDetails(
              _androidChannel.id, _androidChannel.name,
              channelDescription: _androidChannel.description,
              // icon: android.smallIcon ?? 'notification_logo'
              icon: 'notification_logo'

              // other properties...
              ),
        ),
        payload: json.encode(body));
  }
}

Future _selectNotification(String? payload,
    {bool didNotificationLaunchApp = false}) async {
  if (didNotificationLaunchApp) {
    //if the app is started by clicking on the notification,
    //Wait for some time to ensure the app is initialized  well, then open notification
    await Future.delayed(const Duration(seconds: 1));
  }
  if (payload == null) return;
  try {
    final data = json.decode(payload);
    final type = (data['notification_type'] ?? data['type']) as String?;
    final id = data['product_id'] ?? '0';
    final image = data['banner'] as String?;
    final message = (data['message'] ?? data['body']) as String?;
    final title = data['title'] as String?;
    final redirect = data['redirect'] as String?;
    final utilType = data['Utility_type'] as String?;
    final key = appRouter.navigatorKey;
    if (key.currentContext != null && type != null) {
      navigate(
          key.currentContext!,
          NotificationItem(
              productId: int.parse(id as String),
              title: title,
              type: type,
              image: image,
              message: message,
              utilityType: utilType,
              redirectUrl: redirect),
          data: data as Map<String, dynamic>);
    }
  } catch (ex) {
    debugPrint('ERROR pasring notification jSON Data');
    debugPrint(ex.toString());
  }
}

Future<void> handleForegroundIncomingNotification(RemoteMessage message) async {
  final RemoteNotification? notification = message.notification;
  final AndroidNotification? android = message.notification?.android;

  // If `onMessage` is triggered with a notification, construct our own
  // local notification to show to users using the created channel.
  if (notification != null && android != null) {
    getIt<PushNotificationManager>().showNotification(
        id: notification.hashCode,
        title: notification.title ?? '',
        body: notification.body ?? '',
        payload: message.data);
    // _flutterLocalNotificationsPlugin.show(
    //     notification.hashCode,
    //     notification.title,
    //     notification.body,
    //     NotificationDetails(
    //       android: AndroidNotificationDetails(
    //         _androidChannel.id,
    //         _androidChannel.name,
    //         _androidChannel.description,
    //         icon: android.smallIcon ?? 'notification_logo',
    //
    //         // other properties...
    //       ),
    //     ),
    //     payload: json.encode(message.data));
  }
}

Future<void> handleBackgroundIncomingNotification(RemoteMessage message) async {
  _selectNotification(json.encode(message.data),
      didNotificationLaunchApp: true);
}
