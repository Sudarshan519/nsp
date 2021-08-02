import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class AnalyticsService {
  static final FirebaseAnalytics _analytics = FirebaseAnalytics();

  static FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  // static Future log(String name) async {
  //   await _analytics.setCurrentScreen(screenName: name);
  // }

  static Future setUserId(String userID) async {
    await _analytics.setUserId(userID);
  }

  static Future logEvent(String eventId, {Map<String, Object?>? params}) async {
    await _analytics.logEvent(name: eventId, parameters: params);
  }

  static Future logIn() async {
    await _analytics.logLogin();
  }

  static Future search(String keyWord) async {
    await _analytics.logSearch(searchTerm: keyWord);
  }

  static Future signUp(String method) async {
    await _analytics.logSignUp(signUpMethod: method);
  }
}
