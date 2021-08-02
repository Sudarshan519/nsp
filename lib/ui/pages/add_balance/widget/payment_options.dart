import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/ime_pay/ime_pay_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/esewa/esewa_topup_page.dart';
import 'package:wallet_app/ui/pages/add_balance/payment_page/khalti/khalti_topup_page.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({
    Key? key,
    required this.paymentMethods,
    required this.creditCards,
    required this.balance,
    required this.conversionRate,
    required this.isVerified,
    required this.userId,
  }) : super(key: key);

  final List<PaymentMethod> paymentMethods;
  final List<CreditCard> creditCards;
  final double balance;
  final double conversionRate;
  final bool isVerified;
  final String userId;

  @override
  _PaymentOptionsState createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  late List<CreditCard> _creditCards;

  @override
  void initState() {
    // TODO: implement initState
    _creditCards = widget.creditCards;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      // This creates two columns with two items in each column
      children: List.generate(
        widget.paymentMethods.length,
        (index) {
          if (!(widget.paymentMethods[index].isActive ?? true)) {
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
                      widget.paymentMethods[index].logo ?? '',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.paymentMethods[index].name ?? '',
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
    final paymentMethod = widget.paymentMethods[index];

    switch (paymentMethod.type) {
      case "stripe":
        context.pushRoute(
          StripePaymentCardSelectionRoute(
            cards: _creditCards,
            deleteCard: (id) {
              _creditCards.removeWhere((element) => element.id == id);
            },
          ),
        );
        break;
      case "esewa":
        AnalyticsService.logEvent(FirebaseEvents.ESEWA_PAGE,
            params: {'test_key': 'test_val'});
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
                userId: widget.userId,
                conversionRate: widget.conversionRate,
                balance: widget.balance,
                isVerified: widget.isVerified);
          },
        );
        break;
      case "ime_pay":
        AnalyticsService.logEvent(FirebaseEvents.IME_PAY_PAGE);

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
                userId: widget.userId,
                conversionRate: widget.conversionRate,
                balance: widget.balance,
                isVerified: widget.isVerified);
          },
        );
        break;
      case "khalti":
        AnalyticsService.logEvent(FirebaseEvents.KHALTI_PAGE);
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
                userId: widget.userId,
                method: paymentMethod,
                conversionRate: widget.conversionRate,
                balance: widget.balance,
                isVerified: widget.isVerified);
          },
        );
        break;
      default:
    }
  }
}
