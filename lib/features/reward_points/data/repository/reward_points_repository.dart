import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/reward_points/data/datasource/reward_points_remote_data_source.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_points.dart';
import 'package:wallet_app/features/reward_points/domain/repository/reward_point_repository.dart';
import 'package:wallet_app/features/reward_points/domain/use_case/get_reward_points.dart';

@LazySingleton(as: RewardPointRepository)
class RewardPointRepositoryImpl implements RewardPointRepository {
  final RewardPointsRemoteDataSource dataSource;
  final Logger logger;

  RewardPointRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, RewardPoints>> getRewardPoints(
      GetRewardPointsParams params) async {
    try {
      return Right(await dataSource.getRewardPoints(params));
    } on ServerException catch (ex) {
      logger.log(
        className: "RewardPointRepository",
        functionName: "getRewardPoints()",
        errorText: "Error on getting reward point data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
