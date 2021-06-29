import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PushNotificationManager {
  late FirebaseMessaging _firebaseMessaging;

  String _token = "";

  String get fireBaseToken {
    return _token;
  }

  BuildContext? _context;

  // ignore: avoid_setters_without_getters
  set context(BuildContext context) {
    _context = context;
  }

  Future initialise() async {
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

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      'This channel is used for important notifications.', // description
      importance: Importance.max,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    FirebaseMessaging.onMessage.listen(
      (message) {
        final RemoteNotification? notification = message.notification;
        final AndroidNotification? android = message.notification?.android;

        // If `onMessage` is triggered with a notification, construct our own
        // local notification to show to users using the created channel.
        if (notification != null && android != null) {
          flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                icon: android.smallIcon ?? 'notification_logo',
                // other properties...
              ),
            ),
          );
        }
      },
    );
  }
}
