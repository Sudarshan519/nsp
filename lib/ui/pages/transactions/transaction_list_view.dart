import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/transactions/transaction.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:auto_route/auto_route.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20),
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        separatorBuilder: (context, index) => const Divider(
          indent: 12,
          endIndent: 12,
        ),
        itemBuilder: (BuildContext context, int index) {
          return TransactionViewItem(
              transaction: Transaction(
            placeName: 'Katsushika, Tokyo',
            activity: 'Purchase',
            day: 'Yesterday',
            amount: '600',
            date: DateTime.now(),
            long: 85.32,
            lat: 27.71,
          ));
        },
      ),
    );
  }
}

class TransactionViewItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionViewItem({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(12),
      onTap: () =>
          context.pushRoute(TransactionDetailRoute(transaction: transaction)),
      leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: Palette.primary,
          ),
          child: const Icon(
            Icons.bus_alert_sharp,
            color: Colors.white,
          )),
      title: Text(
        transaction.placeName,
        textScaleFactor: 0.9,
        style: const TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        '${transaction.activity}\n${transaction.day}',
        textScaleFactor: 0.85,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '¥ ${transaction.amount}',
            style:
                TextStyle(fontWeight: FontWeight.w700, color: Palette.primary),
          ),
          const Icon(Icons.chevron_right_outlined)
        ],
      ),
    );
  }
}
