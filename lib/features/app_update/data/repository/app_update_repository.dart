import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/app_update/data/data_source/app_update_remote_data_source.dart';
import 'package:wallet_app/features/app_update/domain/entities/app_update.dart';
import 'package:wallet_app/features/app_update/domain/repository/app_update_repository.dart';

@LazySingleton(as: AppUpdateRepository)
class AppUpdateRepositoryImpl implements AppUpdateRepository {
  final AppUpdateRemoteDataSource dataSource;
  final Logger logger;

  AppUpdateRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, AppUpdate>> getUpdateDetails() async {
    try {
      return Right(await dataSource.getUpdateData());
    } on ServerException catch (ex) {
      logger.log(
        className: "BalanceRepository",
        functionName: "AppUpdateRepository()",
        errorText: "Error on getting app update data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
