import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({
    Key? key,
    required this.paymentMethods,
  }) : super(key: key);

  final List<PaymentMethod> paymentMethods;

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
    switch (paymentMethod.type) {
      case "stripe":
        context.pushRoute(StripePaymentCardSelectionRoute(balance: ""));
        break;
      case "esewa":
        // await _esewaPay(paymentMethod);
        context.pushRoute(EsewaTopupRoute(method: paymentMethod));
        break;
      case "ime-pay":
        break;
      case "khalti":
        break;
      default:
    }
  }
}
