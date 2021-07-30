import 'package:wallet_app/features/reward_points/domain/entity/reward_point_item.dart';

class RewardPointItemModel extends RewardPointItem {
  RewardPointItemModel({
    required int? id,
    required String? user,
    required String? moduleName,
    required double? rewardPoint,
    required String? createdAt,
  }) : super(
          id: id,
          user: user,
          moduleName: moduleName,
          createdAt: createdAt,
          rewardPoint: rewardPoint,
        );

  RewardPointItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    user = json['user'] as String?;
    moduleName = json['module_name'] as String?;
    rewardPoint = json['reward_point'] as double?;
    createdAt = json['created_at'] as String?;
  }
}
