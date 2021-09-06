import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_points.dart';
import 'package:wallet_app/features/reward_points/domain/repository/reward_point_repository.dart';

@lazySingleton
class GetRewardPoints
    implements Usecase<ApiFailure, RewardPoints, GetRewardPointsParams> {
  final RewardPointRepository repository;
  final NetworkInfo networkInfo;

  GetRewardPoints({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, RewardPoints>> call(
      GetRewardPointsParams params) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getRewardPoints(params);
      return remoteData.fold(
        (failure) {
          return Left(failure);
        },
        (data) {
          return Right(data);
        },
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetRewardPointsParams {
  final String? page;

  GetRewardPointsParams({
    required this.page,
  });
}
