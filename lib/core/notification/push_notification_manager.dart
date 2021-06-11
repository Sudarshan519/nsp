import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PushNotificationManager {
  late FirebaseMessaging _firebaseMessaging;

  String _token = "";

  String get fireBaseToken {
    return _token;
  }

  Future initialise() async {
    _firebaseMessaging = FirebaseMessaging.instance;
    _firebaseMessaging.requestPermission();

    _token = await _firebaseMessaging.getToken() ?? '';
    print("FirebaseMessaging token: $_token");

    _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);
  }
}
