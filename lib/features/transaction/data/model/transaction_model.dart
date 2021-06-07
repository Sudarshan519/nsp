import 'dart:convert';

import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/transaction/data/model/transaction_item_model.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/injections/injection.dart';

TransactionModel? transactionModelFromJson(String str) {
  try {
    return TransactionModel.fromJson(json.decode(str) as Map<String, dynamic>);
  } catch (ex) {
    final logger = getIt<Logger>();

    logger.log(
      className: "transactionModelFromJson",
      functionName: "transactionModelFromJson()",
      errorText: "Error decoding string json into transaction model object",
      errorMessage: ex.toString(),
    );
    return null;
    // return null if the current str json cannot be parsed.
    // basic error message is shown to the user.
  }
}

class TransactionModel extends Transaction {
  TransactionModel({required List<TransactionItem>? statements})
      : super(statements: statements);

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        statements: json["data"] != null
            ? List<TransactionItemModel>.from((json["data"] as Iterable).map(
                (x) =>
                    TransactionItemModel.fromJson(x as Map<String, dynamic>)))
            : null,
      );
}
