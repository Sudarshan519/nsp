import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/utility_payments/data/constants/constant.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

@RoutePage()
class UtilityPamentWidget extends StatefulWidget {
  final Function()? onViewLess;
  final List<UtilityPaymentsModel> paymentData;

  const UtilityPamentWidget({
    super.key,
    required this.paymentData,
    this.onViewLess,
  });

  @override
  _UtilityPamentWidgetState createState() => _UtilityPamentWidgetState();
}

class _UtilityPamentWidgetState extends State<UtilityPamentWidget> {
  bool _isExpanded = false;
  static const _itemThreshold = 6;
  bool get _canExpand => widget.paymentData.length > _itemThreshold;

  List<UtilityPaymentsModel> getItems() {
    if (!_canExpand || _isExpanded) {
      return widget.paymentData;
    } else {
      return widget.paymentData.sublist(0, _itemThreshold);
    }
  }

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
            child: Column(
              children: [
                GridView.count(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1 / 0.86,
                  children: getItems()
                      .map(
                        (e) => GridItem(
                          paymentData: e,
                        ),
                      )
                      .toList(),
                ),
                if (_canExpand)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 5),
                    child: CustomButton(
                        title: 'View ${_isExpanded ? 'Less' : 'More'}',
                        onTap: () {
                          if (_isExpanded) {
                            if (widget.onViewLess != null) {
                              widget.onViewLess!();
                            }
                          }
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        }),
                  )
              ],
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
            context.pushRoute(TopUpRoute(payData: paymentData));
            break;

          case UtilityPayementType.mirai:
            context.pushRoute(PartnerServicePaymentRoute(payData: paymentData));
            break;

          case UtilityPayementType.electricity:
            context.pushRoute(NEAPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.khanepani:
            context.pushRoute(KhanepaniPaymentRoute(payData: paymentData));
            break;

          //TV section start
          case UtilityPayementType.merotv:
            context.pushRoute(TVPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.dishhome:
            context.pushRoute(TVPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.simtv:
            context.pushRoute(TVPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.prabhutv:
            context.pushRoute(TVPaymentRoute(payData: paymentData));
            break;
          //Tv Section end

          //ISP start
          case UtilityPayementType.worldlink:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.vianet:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));
            break;

          case UtilityPayementType.prabhunet:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));

            break;
          case UtilityPayementType.arrownet:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.loopnetwork:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.pals:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.broadlink:
            context.pushRoute(ISPPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.skytv:
            context.pushRoute(TVPaymentRoute(payData: paymentData));
            break;
          case UtilityPayementType.websurfer:
            context.pushRoute(ISPPaymentRoute(
                payData: paymentData, isCustomerIdRequired: true));
            break;
          case UtilityPayementType.subisu:
            context.pushRoute(ISPPaymentRoute(
              payData: paymentData,
              isPhoneRequired: true,
              isAmountRequired: true,
            ));
            break;
          //ISP end

          default:
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // border: Border.all(
          //   color: Palette.dividerColor,
          // ),
        ),
        child: Column(
          children: [
            if (paymentData.image != null)
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Palette.dividerColor,
                  ),
                ),
                child: CachedNetworkImage(
                    imageUrl: _baseURL + paymentData.image!,
                    fit: BoxFit.contain,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Container(
                              color: Palette.primaryBackground,
                              height: 10,
                              child: Center(
                                child: CircularProgressIndicator(
                                    color: Palette.primary,
                                    value: downloadProgress.progress),
                              ),
                            ),
                    errorWidget: (_, __, ___) {
                      return const CircularProgressIndicator.adaptive();
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
      ),
    );
  }
}
