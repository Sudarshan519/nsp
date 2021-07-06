import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/ime_pay/ime_pay_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/esewa/esewa_topup_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/khalti/khalti_topup_page.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({
    Key? key,
    required this.paymentMethods,
    required this.creditCards,
    required this.balance,
    required this.conversionRate,
    required this.isVerified,
  }) : super(key: key);

  final List<PaymentMethod> paymentMethods;
  final List<CreditCard> creditCards;
  final String balance;
  final double conversionRate;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      // This creates two columns with two items in each column
      children: List.generate(
        paymentMethods.length,
        (index) {
          if (!(paymentMethods[index].isActive ?? true)) {
            return const SizedBox.shrink();
          }

          return InkWell(
            onTap: () {
              onPaymentSelected(context, index);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    height: 20,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      top: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Palette.dividerColor,
                      ),
                    ),
                    child: Image.network(
                      paymentMethods[index].logo ?? '',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  paymentMethods[index].name ?? '',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future onPaymentSelected(BuildContext context, int index) async {
    final paymentMethod = paymentMethods[index];
    final balanceParsed =
        double.parse(balance.split(' ').last.replaceAll(',', ""));
    switch (paymentMethod.type) {
      case "stripe":
        context.pushRoute(
          StripePaymentCardSelectionRoute(
            balance: balance,
            cards: creditCards,
          ),
        );
        break;
      case "esewa":
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          builder: (BuildContext context) {
            return EsewaTopupPage(
                method: paymentMethod,
                conversionRate: conversionRate,
                balance: balanceParsed,
                isVerified: isVerified);
          },
        );
        break;
      case "ime_pay":
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          builder: (BuildContext context) {
            return ImePayTopupPage(
                method: paymentMethod,
                conversionRate: conversionRate,
                balance: balanceParsed,
                isVerified: isVerified);
          },
        );
        break;
      case "khalti":
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          builder: (BuildContext context) {
            return KhaltiTopupPage(
                method: paymentMethod,
                conversionRate: conversionRate,
                balance: balanceParsed,
                isVerified: isVerified);
          },
        );
        break;
      default:
    }
  }
}
