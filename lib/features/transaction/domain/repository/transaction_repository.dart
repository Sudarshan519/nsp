import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction.dart';

abstract class TransactionRepository {
  Future<Either<ApiFailure, Transaction>> getTransaction();
}
