class RewardPointItem {
  int? id;
  String? user;
  String? moduleName;
  double? rewardPoint;
  String? createdAt;

  RewardPointItem({
    this.id,
    this.user,
    this.moduleName,
    this.rewardPoint,
    this.createdAt,
  });

  RewardPointItem.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    user = json['user'] as String?;
    moduleName = json['module_name'] as String?;
    rewardPoint = json['reward_point'] as double?;
    createdAt = json['created_at'] as String?;
  }
}
