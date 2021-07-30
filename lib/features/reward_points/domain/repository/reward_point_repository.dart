import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_points.dart';
import 'package:wallet_app/features/reward_points/domain/use_case/get_reward_points.dart';

abstract class RewardPointRepository {
  Future<Either<ApiFailure, RewardPoints>> getRewardPoints(
      GetRewardPointsParams params);
}
