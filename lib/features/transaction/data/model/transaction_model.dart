import 'dart:convert';

import 'package:wallet_app/features/transaction/data/model/transaction_item_model.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';

TransactionModel transactionModelFromJson(String str) =>
    TransactionModel.fromJson(json.decode(str) as Map<String, dynamic>);

class TransactionModel extends Transaction {
  TransactionModel({
    required List<TransactionItem>? statements,
  }) : super(statements: statements);

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    final key = json.containsKey('statements') ? 'statements' : 'statement';
    return TransactionModel(
      statements: json[key] != null
          ? List<TransactionItemModel>.from((json[key] as Iterable).map(
              (x) => TransactionItemModel.fromJson(x as Map<String, dynamic>)))
          : null,
    );
  }
}
