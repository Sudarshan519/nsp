import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';

///Also known as Statement
///
class Transaction {
  final List<TransactionItem>? statements;

  Transaction({this.statements});
}
