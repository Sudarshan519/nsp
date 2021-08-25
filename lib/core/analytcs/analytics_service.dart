import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';

import 'firebase_event_constants.dart';

// ignore: avoid_classes_with_only_static_members
class AnalyticsService {
  static final FirebaseAnalytics _analytics = FirebaseAnalytics();

  static String _previousEvent = '';

  static FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  static Future setScreen(String screenName) async {
    await _log(screenName);
    // await _analytics.setCurrentScreen(screenName: screenName);
  }

  static Future setUserId(String userID) async {
    await _analytics.setUserId(userID);
  }

  static Future setUserVal(String key, String val) async {
    await _analytics.setUserProperty(name: key, value: val);
  }

  static Future logEvent(
    FirebaseEvents event, {
    Map<String, Object?>? params,
    bool isSuccess = false,
  }) async {
    String eventId = event.toString().split('.').last;
    if (isSuccess) {
      eventId = eventId + '_SUCCESS';
    }
    await _log(eventId, params: params);
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

  static Future _log(String eventId, {Map<String, Object?>? params}) async {
    //preventing duplicate event which happen consicutively in 5 sec time
    if (eventId == _previousEvent) {
      return;
    }
    debugPrint(
        '${'EVENT: $eventId '}${params != null ? params.toString() : ''}');
    _previousEvent = eventId;
    await _analytics.logEvent(name: eventId, parameters: params);

    //resetting after 5 seconds
    Future.delayed(const Duration(seconds: 5), () => _previousEvent = '');
  }
}
