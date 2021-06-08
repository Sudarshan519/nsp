import 'package:flutter/material.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:auto_route/auto_route.dart';

class TransactionListView extends StatelessWidget {
  final List<TransactionItem> items;
  const TransactionListView({Key? key, required this.items}) : super(key: key);

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
        itemCount: items.length,
        separatorBuilder: (context, index) => const Divider(
          indent: 12,
          endIndent: 12,
        ),
        itemBuilder: (BuildContext context, int index) {
          final transaction = items[index];
          return TransactionViewItem(transaction: transaction);
        },
      ),
    );
  }
}

class TransactionViewItem extends StatelessWidget {
  final TransactionItem transaction;
  const TransactionViewItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(12),
      onTap: () => context.pushRoute(const TransactionDetailRoute()),
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
      title: const Text(
        'Tokyo, Japan',
        textScaleFactor: 0.9,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        'Purchase\n${transaction.createdAt}',
        textScaleFactor: 0.85,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${transaction.currency} ${transaction.topupAmount}',
            style:
                TextStyle(fontWeight: FontWeight.w700, color: Palette.primary),
          ),
          const Icon(Icons.chevron_right_outlined)
        ],
      ),
    );
  }
}
