import 'package:wallet_app/features/ads/domain/enity/ad.dart';

class AdsModel extends Ads {
  AdsModel({
    required Admob? admob,
    required WalletAd? walletAd,
    required FacebookAd? facebookAd,
  }) : super(admob: admob, facebookAd: facebookAd, walletAd: walletAd);

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
      admob: json['admob'] != null
          ? Admob.fromJson(json['admob'] as Map<String, dynamic>)
          : null,
      walletAd: json['walletAd'] != null
          ? WalletAd.fromJson(json['walletAd'] as Map<String, dynamic>)
          : null,
      facebookAd: json['facebookAd'] != null
          ? FacebookAd.fromJson(json['facebookAd'] as Map<String, dynamic>)
          : null);
}
