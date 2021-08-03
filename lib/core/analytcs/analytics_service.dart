import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService {
  static final FirebaseAnalytics _analytics = FirebaseAnalytics();

  static String _previousEvent = '';

  static FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  static Future setScreen(String screenName) async {
    await _analytics.setCurrentScreen(screenName: screenName);
  }

  static Future setUserId(String userID) async {
    await _analytics.setUserId(userID);
  }

  static Future logEvent(String eventId, {Map<String, Object?>? params}) async {
    //preventing duplicate event logs
    if (eventId == _previousEvent) {
      return;
    }
    // debugPrint('EVENT: $eventId');
    _previousEvent = eventId;
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
