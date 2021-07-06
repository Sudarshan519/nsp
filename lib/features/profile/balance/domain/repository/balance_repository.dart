import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/profile/balance/domain/entities/user_balance.dart';

abstract class BalanceRepository {
  Future<Either<ApiFailure, UserBalance>> getBalance();
}
