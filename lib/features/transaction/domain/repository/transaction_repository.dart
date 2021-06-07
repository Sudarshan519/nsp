import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/transaction/data/model/transaction_model.dart';

abstract class TransactionRepository {
  Future<Either<ApiFailure, TransactionModel?>> getTransaction();
}
