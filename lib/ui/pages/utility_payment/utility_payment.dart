import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/utility_payments/data/constants/constant.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class UtilityPamentWidget extends StatelessWidget {
  final List<UtilityPaymentsModel> paymentData;

  const UtilityPamentWidget({
    Key? key,
    required this.paymentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Utility Payment"),
          const SizedBox(height: 6),
          ShadowBoxWidget(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.zero,
            child: GridView.count(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 20,
              childAspectRatio: 1 / 0.86,
              children: paymentData
                  .map(
                    (e) => GridItem(
                      paymentData: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final UtilityPaymentsModel paymentData;

  const GridItem({
    Key? key,
    required this.paymentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _baseURL = getIt<ConfigReader>().baseURL;
    return InkWell(
      onTap: () {
        final type = paymentData.paymentType ?? '';

        switch (type) {
          case UtilityPayementType.balanceTopup:
            context.pushRoute(
              TopUpRoute(payData: paymentData),
            );
            break;

          case UtilityPayementType.mirai:
            context.pushRoute(
              PartnerServicePaymentRoute(payData: paymentData),
            );
            break;

          case UtilityPayementType.electricity:
            context.pushRoute(
              NEAPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.khanepani:
            context.pushRoute(
              KhanepaniPaymentRoute(payData: paymentData),
            );
            break;

          //TV section start
          case UtilityPayementType.merotv:
            context.pushRoute(
              TVPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.dishhome:
            context.pushRoute(
              TVPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.simtv:
            context.pushRoute(
              TVPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.prabhutv:
            context.pushRoute(
              TVPaymentRoute(payData: paymentData),
            );
            break;
          //Tv Section end

          //ISP start
          case UtilityPayementType.worldlink:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.vianet:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;

          case UtilityPayementType.prabhunet:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );

            break;
          case UtilityPayementType.arrownet:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.loopnetwork:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.pals:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.broadlink:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;
          case UtilityPayementType.websurfer:
            context.pushRoute(
              ISPPaymentRoute(payData: paymentData),
            );
            break;
          //ISP end

          default:
        }
      },
      child: Column(
        children: [
          if (paymentData.image != null)
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Palette.dividerColor,
                ),
              ),
              child: CachedNetworkImage(
                  imageUrl: _baseURL + paymentData.image!,
                  fit: BoxFit.fitHeight,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Container(
                        color: Palette.primaryBackground,
                        height: 10,
                        child: Center(
                          child: CircularProgressIndicator(
                              color: Palette.primary,
                              value: downloadProgress.progress),
                        ),
                      ),
                  errorWidget: (_, __, ___) {
                    return Image.asset(
                      'assets/images/navigation_bar/u1.png',
                      fit: BoxFit.cover,
                    );
                  }),
            ),
          const SizedBox(height: 3),
          Text(
            paymentData.name ?? '',
            textScaleFactor: 0.82,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
