import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';

abstract class BalanceRepository {
  Future<Either<ApiFailure, double>> getBalance();
}
