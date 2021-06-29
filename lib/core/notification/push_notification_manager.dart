import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/notification/navigate_notification.dart';

@lazySingleton
class PushNotificationManager {
  late FirebaseMessaging _firebaseMessaging;
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  final AndroidNotificationChannel _androidChannel =
      const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.max,
  );

  String _token = "";

  String get fireBaseToken {
    return _token;
  }

  late BuildContext? _context;

  // ignore: avoid_setters_without_getters
  set context(BuildContext context) {
    _context = context;
  }

  Future initialise() async {
    await _localNotificationSetup();
    await _pushNotificationSetup();
  }

  Future _localNotificationSetup() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings(
      'notification_logo',
    );

    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: _selectNotification);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_androidChannel);
  }

  Future _pushNotificationSetup() async {
    _firebaseMessaging = FirebaseMessaging.instance;
    _firebaseMessaging.requestPermission();

    try {
      _token = await _firebaseMessaging.getToken() ?? '';
      debugPrint("FirebaseMessaging token: $_token");
    } catch (ex) {
      debugPrint(ex.toString());
      return;
    }

    try {
      _firebaseMessaging.subscribeToTopic('bnpjwallet');
    } catch (ex) {
      debugPrint(ex.toString());
      return;
    }

    _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);
    FirebaseMessaging.onMessage.listen(
      (message) {
        final RemoteNotification? notification = message.notification;
        final AndroidNotification? android = message.notification?.android;

        // If `onMessage` is triggered with a notification, construct our own
        // local notification to show to users using the created channel.
        if (notification != null && android != null) {
          _flutterLocalNotificationsPlugin.show(
              notification.hashCode,
              notification.title,
              notification.body,
              NotificationDetails(
                android: AndroidNotificationDetails(
                  _androidChannel.id,
                  _androidChannel.name,
                  _androidChannel.description,
                  icon: android.smallIcon ?? 'notification_logo',

                  // other properties...
                ),
              ),
              payload: json.encode(message.data));
        }
      },
    );
  }

  Future _selectNotification(String? payload) async {
    if (payload == null) return;
    final data = json.decode(payload);
    final type = data['notification_type'] as String?;
    final id = data['product_id'] as String?;
    if (_context != null && type != null && id != null) {
      //TODO: make context routeable to autoRoute
      navigate(_context!, type, int.parse(id));
    }
  }
}
