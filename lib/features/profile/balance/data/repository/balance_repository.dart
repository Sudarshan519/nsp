import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/profile/balance/data/datasource/balance_remote_data_source.dart';
import 'package:wallet_app/features/profile/balance/domain/entities/user_balance.dart';
import 'package:wallet_app/features/profile/balance/domain/repository/balance_repository.dart';

@LazySingleton(as: BalanceRepository)
class BalanceRepositoryImpl implements BalanceRepository {
  final BalanceRemoteDataSource dataSource;
  final Logger logger;

  BalanceRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, UserBalance>> getBalance() async {
    try {
      return Right(await dataSource.getBalance());
    } on ServerException catch (ex) {
      logger.log(
        className: "BalanceRepository",
        functionName: "getBalance()",
        errorText: "Error on getting balance data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
