import 'package:wallet_app/features/reward_points/domain/entity/reward_point_item.dart';

class RewardPoints {
  final List<RewardPointItem>? rewardPoints;
  final String? usage;

  RewardPoints({this.rewardPoints, this.usage});
}
