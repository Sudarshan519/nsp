import 'dart:convert';

import 'package:wallet_app/features/reward_points/domain/entity/reward_point_item.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_points.dart';

import 'reward_point_item_model.dart';

RewardPointModel rewardPointFromJson(String str) =>
    RewardPointModel.fromJson(json.decode(str) as Map<String, dynamic>);

class RewardPointModel extends RewardPoints {
  RewardPointModel({
    required List<RewardPointItem>? rewardPoints,
    required String usage,
  }) : super(
          rewardPoints: rewardPoints,
          usage: usage,
        );

  factory RewardPointModel.fromJson(Map<String, dynamic> json) =>
      RewardPointModel(
          rewardPoints: json["reward_points"] != null
              ? List<RewardPointItem>.from((json["reward_points"] as Iterable)
                  .map((item) => RewardPointItemModel.fromJson(
                      item as Map<String, dynamic>)))
              : null,
          usage: (json['usage'] as String?) ?? '');
}
