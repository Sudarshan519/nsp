import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// ignore: avoid_classes_with_only_static_members
class AdMobService {
  //ca-app-pub-3940256099942544/6300978111 is test ad unitid for android
  //ca-app-pub-3940256099942544/2934735716 is test ad unitid for ios
  //
  static String get bannerAdUnitId => Platform.isAndroid
      ? "ca-app-pub-3940256099942544/6300978111" //android
      : "ca-app-pub-3940256099942544/2934735716"; //iOS

  static void init() => MobileAds.instance.initialize();

  static BannerAd createAd() {
    return BannerAd(
        size: AdSize.fullBanner,
        adUnitId: bannerAdUnitId,
        listener: BannerAdListener(
          onAdClosed: (ad) {},
          onAdLoaded: (ad) {
            debugPrint('=>Ad Loaded');
          },
          onAdFailedToLoad: (ad, error) {
            debugPrint('=>Failed to load google banner ad');
            ad.dispose();
          },
        ),
        request: const AdRequest())
      ..load();
  }
}
