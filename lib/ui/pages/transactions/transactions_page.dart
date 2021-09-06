import 'package:flutter/material.dart';
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
      body: Column(
        children: const [
          BNPJCard(),
          TransactionListPage(),
        ],
      ),
    );
  }
}
