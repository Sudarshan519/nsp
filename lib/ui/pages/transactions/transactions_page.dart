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
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: Scrollbar(
        child: Column(
          children: [
            const BalanceWidget(),
            const SizedBox(height: 20),
            body(),
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            BNPJCard(),
            SizedBox(height: 20),
            Text(
              'Latest Transactions',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TransactionListPage()
          ],
        ),
      ),
    );
  }
}
