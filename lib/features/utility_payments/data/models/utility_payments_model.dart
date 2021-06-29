import 'package:wallet_app/features/utility_payments/domain/entities/utility_payments.dart';

class UtilityPaymentsModel extends UtilityPayment {
  const UtilityPaymentsModel({
    required int? id,
    required String? name,
    required String? image,
    required double? cashbackPer,
    required double? rewardPoint,
    required bool? isActive,
    required String? paymentType,
    required String? createdAt,
    required String? updatedAt,
  }) : super(
          id: id,
          name: name,
          image: image,
          cashbackPer: cashbackPer,
          rewardPoint: rewardPoint,
          isActive: isActive,
          paymentType: paymentType,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory UtilityPaymentsModel.fromJson(Map<String, dynamic> json) =>
      UtilityPaymentsModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        cashbackPer: json['cashback_per'] as double?,
        rewardPoint: json['reward_point'] as double?,
        isActive: json['is_active'] as bool?,
        paymentType: json['payment_type'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
      );
}
