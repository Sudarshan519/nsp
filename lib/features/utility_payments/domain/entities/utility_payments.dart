class UtilityPayment {
  int? id;
  String? name;
  String? image;
  double? cashbackPer;
  double? rewardPoint;
  bool? isActive;
  String? paymentType;
  String? createdAt;
  String? updatedAt;

  UtilityPayment({
    required this.id,
    required this.name,
    this.image,
    this.cashbackPer,
    this.rewardPoint,
    this.isActive,
    this.paymentType,
    this.createdAt,
    this.updatedAt,
  });
}
