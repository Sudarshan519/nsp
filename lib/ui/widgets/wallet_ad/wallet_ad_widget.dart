import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:wallet_app/core/wallet_ad/wallet_ad_service.dart';
import 'package:wallet_app/features/ads/domain/enity/ad.dart';
import 'package:wallet_app/features/ads/presentation/get_ads/ads_bloc.dart';

class WalletAdWidget extends StatelessWidget {
  const WalletAdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.09;

    Widget _googleAd(Admob? admob) {
      if (admob != null && (admob.banner?.status ?? false)) {
        return Container(
          height: height,
          color: Colors.transparent,
          child: AdWidget(
            ad: WalletAdService.creategoogleAd(
                bannerId: admob.banner?.name ?? '',
                onSuccess: (ad) {
                  context.read<AdsBloc>().add(AdsEvent.refreshAd(
                        seconds: admob.getRefreshTime(),
                      ));
                },
                onError: (err) {
                  debugPrint(err.toString());

                  context
                      .read<AdsBloc>()
                      .add(const AdsEvent.refreshAd(seconds: 0));
                }),
          ),
        );
      }
      return const SizedBox();
    }

    return BlocConsumer<AdsBloc, AdsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.map(
          initial: (i) => const SizedBox(),
          hidden: (h) => const SizedBox(),
          loading: (val) => const SizedBox(),
          loaded: (val) {
            // context
            //     .read<AdsBloc>()
            //     .add(AdsEvent.refreshAd(seconds: val.ad.getRefreshTime()));

            switch (val.ad.runtimeType) {
              case Admob:
                final ad = val.ad as Admob;
                return _googleAd(ad);
              case FacebookAd:
                final ad = val.ad as FacebookAd;
                return WalletAdService.createfacebookAd(
                    id: ad.getAPIKey(),
                    onError: (val) {
                      context.read<AdsBloc>().add(const AdsEvent.refreshAd(
                            seconds: 0,
                          ));
                    },
                    onSuccess: () {
                      context.read<AdsBloc>().add(AdsEvent.refreshAd(
                            seconds: val.ad.getRefreshTime(),
                          ));
                    });

              default:
                return const SizedBox();
            }
          },
          failure: (f) => const SizedBox(),
        );
      },
    );
  }
}
