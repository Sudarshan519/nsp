import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
              childAspectRatio: 1 / 0.82,
              children: paymentData
                  .map(
                    (e) => GridItem(
                      index: paymentData.indexOf(e),
                      paymentData: paymentData,
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
  final int index;
  final List<UtilityPaymentsModel> paymentData;

  const GridItem({Key? key, required this.index, required this.paymentData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _baseURL = getIt<ConfigReader>().baseURL;
    return InkWell(
      onTap: () {
        final type = paymentData[index].paymentType ?? '';
        if (type.toLowerCase() == 'topup_balance') {
          context.pushRoute(
            TopUpRoute(
              index: index,
              paymentData: paymentData,
            ),
          );
        }

        if (type.toLowerCase() == 'mirai') {
          context.pushRoute(
            PartnerServicePaymentRoute(payData: paymentData[index]),
          );
        }
      },
      child: Column(
        children: [
          if (paymentData[index].image != null)
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Palette.dividerColor,
                ),
              ),
              child: CachedNetworkImage(
                  imageUrl: _baseURL + paymentData[index].image!,
                  fit: BoxFit.contain,
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
            paymentData[index].name ?? '',
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
