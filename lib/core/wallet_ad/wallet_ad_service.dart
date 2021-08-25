import 'dart:io';

import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// ignore: avoid_classes_with_only_static_members
class WalletAdService {
  static String get testBannerAdUnitId => Platform.isAndroid
      ? "ca-app-pub-3940256099942544/6300978111" //android
      : "ca-app-pub-3940256099942544/2934735716"; //iOS

  static void init() {
    //google admob
    MobileAds.instance.initialize();

    //db6d3152-8ca2-40f8-adaf-590926de0bfe
    FacebookAudienceNetwork.init();
  }

  static BannerAd creategoogleAd(
      {required String bannerId,
      required Function(LoadAdError) onError,
      required Function(Ad) onSuccess}) {
    return BannerAd(
        size: AdSize.fullBanner,
        adUnitId: bannerId,
        listener: BannerAdListener(
          onAdClosed: (ad) {},
          onAdLoaded: (ad) {
            // debugPrint('=>Ad Loaded');
            onSuccess(ad);
          },
          onAdFailedToLoad: (ad, error) {
            // debugPrint('=>Failed to load google banner ad');
            ad.dispose();
            onError(error);
          },
        ),
        request: const AdRequest())
      ..load();
  }

  static Widget createfacebookAd(
      {required String id,
      required Function(dynamic) onError,
      required Function onSuccess}) {
    return FacebookBannerAd(
      // placementId: getUseablePlacementID(val.ads.facebookAd?.overlay?.name),
      placementId: _getUseablePlacementID(id),
      listener: (result, value) {
        switch (result) {
          case BannerAdResult.ERROR:
            // debugPrint("Error: $value");
            onError(value);

            break;
          case BannerAdResult.LOADED:
            // debugPrint("Loaded: $value");
            onSuccess();
            break;
          case BannerAdResult.CLICKED:
            // debugPrint("Clicked: $value");
            break;
          case BannerAdResult.LOGGING_IMPRESSION:
            // debugPrint("Logging Impression: $value");
            break;
        }
      },
    );
  }

  static String _getUseablePlacementID(String? idFromApi) {
    const String testId = 'IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID';
    // if (getIt<ConfigReader>().isDebugApp) {
    //   return testId;
    // } else

    if (idFromApi != null && idFromApi.isNotEmpty) {
      //return id
      return 'IMG_16_9_LINK#$idFromApi';
    } else {
      return testId;
    }
  }
}
