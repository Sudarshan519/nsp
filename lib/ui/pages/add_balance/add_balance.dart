import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'widget/balance_widgets.dart';
import 'widget/payment_options.dart';

class AddBalancePage extends StatelessWidget {
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
        children: [
          const BalanceWidget(
            user: null,
          ),
          const SizedBox(height: 10),
          ShadowBoxWidget(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: PaymentOptions(),
          ),
        ],
      ),
    );
  }
}
