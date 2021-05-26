import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class StripePaymentCardSelectionPage extends StatelessWidget {
  final double balance;

  const StripePaymentCardSelectionPage({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Load Money",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BalanceWidget(
            balance: balance,
          ),
          InkWell(
            onTap: () =>
                context.pushRoute(StripeNewCardPaymentRoute(balance: balance)),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 32.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  color: Palette.dividerColor,
                ),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/top_up/add-card.svg',
                    color: Palette.primary,
                    height: 25.0,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Top up from New Card',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
