import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/transaction/data/datasource/transaction_remote_data_source.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/domain/repository/transaction_repository.dart';
import 'package:wallet_app/features/transaction/domain/usecase/get_transaction.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDataSource dataSource;
  final Logger logger;

  TransactionRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, Transaction>> getTransaction(
      GetTransactionParam params) async {
    try {
      return Right(await dataSource.getTransactions(params));
    } on ServerException catch (ex) {
      logger.log(
        className: "TransactionRepository",
        functionName: "getTransaction()",
        errorText: "Error on getting transaction data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, TransactionItem>> getIndividualTransaction(
      int txnId) async {
    try {
      final model = await dataSource.getIndividualTransaction(txnId);
      if (model.statements != null) {
        return Right(model.statements!.first);
      }
      throw const ServerError(message: 'Couldnot get transaction');
    } on ServerException catch (ex) {
      logger.log(
        className: "TransactionRepository",
        functionName: "getIndividualTransaction()",
        errorText:
            "Error on getting indiviual transaction of id $txnId data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
