import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/transactions/transaction_list_view.dart';
import 'package:wallet_app/ui/pages/transactions/bnpj_card.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transactions",
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
      body: Scrollbar(
        child: Column(
          children: [
            const BalanceWidget(balance: '1300'),
            body(),
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 20),
              BNPJCard(),
              SizedBox(height: 20),
              Text(
                'Latest Transactions',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TransactionBlocView()
            ],
          ),
        ),
      ),
    );
  }
}
