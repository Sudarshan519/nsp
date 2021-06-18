import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:wallet_app/core/admob/admob_service.dart';

class GoogleBannerAd extends StatelessWidget {
  const GoogleBannerAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        height: size.height * 0.1,
        // color: Colors.blue,
        child: AdWidget(ad: AdMobService.createAd()),
      ),
    );
  }
}
