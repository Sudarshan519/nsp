import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';

class CouponCodeModel extends CouponCode {
  CouponCodeModel({
    required int? id,
    required String? title,
    required String? couponCode,
    required String? productType,
    required int? productId,
    required String? termsConditions,
    required String? description,
    required String? startDate,
    required String? expiryDate,
    required dynamic couponType,
    required String? cashback,
    required int? rewardPoint,
    required bool? isActive,
    required String? createdAt,
    required String? updatedAt,
    required int? updatedBy,
  }) : super(
          id: id,
          title: title,
          couponCode: couponCode,
          productType: productType,
          productId: productId,
          termsConditions: termsConditions,
          description: description,
          startDate: startDate,
          expiryDate: expiryDate,
          couponType: couponType,
          cashback: cashback,
          rewardPoint: rewardPoint,
          isActive: isActive,
          createdAt: createdAt,
          updatedAt: updatedAt,
          updatedBy: updatedBy,
        );

  factory CouponCodeModel.fromJson(Map<String, dynamic> json) =>
      CouponCodeModel(
        id: json["id"] == null ? null : json["id"] as int?,
        title: json["title"] == null ? null : json["title"] as String?,
        couponCode:
            json["coupon_code"] == null ? null : json["coupon_code"] as String?,
        productType: json["product_type"] == null
            ? null
            : json["product_type"] as String?,
        productId:
            json["product_id"] == null ? null : json["product_id"] as int?,
        termsConditions: json["terms_conditions"] == null
            ? null
            : json["terms_conditions"] as String?,
        description:
            json["description"] == null ? null : json["description"] as String?,
        startDate:
            json["start_date"] == null ? null : json["start_date"] as String?,
        expiryDate:
            json["expiry_date"] == null ? null : json["expiry_date"] as String?,
        couponType: json["coupon_type"],
        cashback: json["cashback"] == null ? null : json["cashback"] as String?,
        rewardPoint:
            json["reward_point"] == null ? null : json["reward_point"] as int?,
        isActive: json["is_active"] == null ? null : json["is_active"] as bool?,
        createdAt:
            json["created_at"] == null ? null : json["created_at"] as String?,
        updatedAt:
            json["updated_at"] == null ? null : json["updated_at"] as String?,
        updatedBy:
            json["updated_by"] == null ? null : json["updated_by"] as int?,
      );
}
