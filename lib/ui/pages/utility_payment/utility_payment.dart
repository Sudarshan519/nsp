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
  final double balance;
  final double conversionRate;
  final List<UtilityPaymentsModel> paymentData;

  const UtilityPamentWidget({
    Key? key,
    required this.balance,
    required this.conversionRate,
    required this.paymentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Utility Payment"),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            margin: EdgeInsets.zero,
            child: GridView.count(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              // childAspectRatio: 7 / 7,
              children: paymentData
                  .map(
                    (e) => GridItem(
                      index: paymentData.indexOf(e),
                      balance: balance,
                      conversionRate: conversionRate,
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
  final double balance;
  final double conversionRate;
  final List<UtilityPaymentsModel> paymentData;

  const GridItem(
      {Key? key,
      required this.index,
      required this.balance,
      required this.conversionRate,
      required this.paymentData})
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
              balance: balance,
              conversionRate: conversionRate,
              paymentData: paymentData,
            ),
          );
        }

        if (type.toLowerCase() == 'mirai') {
          context.pushRoute(
            PartnerServicePaymentRoute(title: paymentData[index].name ?? ''),
          );
        }
      },
      child: Column(
        children: [
          if (paymentData[index].image != null)
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Palette.dividerColor,
                ),
              ),
              child: Center(
                child: Image.network(
                  _baseURL + paymentData[index].image!,
                  height: 46,
                ),
              ),
            ),
          const SizedBox(height: 3),
          Text(
            paymentData[index].name ?? '',
            textScaleFactor: 0.84,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
