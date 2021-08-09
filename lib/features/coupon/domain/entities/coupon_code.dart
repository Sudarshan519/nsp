import 'package:wallet_app/utils/time_ago/time_ago.dart' as date_time;

class CouponCode {
  CouponCode({
    required this.id,
    required this.title,
    required this.couponCode,
    required this.productType,
    required this.productId,
    required this.termsConditions,
    required this.description,
    required this.startDate,
    required this.expiryDate,
    required this.couponType,
    required this.cashback,
    required this.rewardPoint,
    required this.isActive,
    required this.isReward,
    required this.createdAt,
    required this.updatedAt,
    required this.updatedBy,
  });

  final int? id;
  final String? title;
  final String? couponCode;
  final String? productType;
  final int? productId;
  final String? termsConditions;
  final String? description;
  final String? startDate;
  final String? expiryDate;
  final dynamic couponType;
  final String? cashback;
  final String? rewardPoint;
  final bool? isActive;
  final bool? isReward;
  final String? createdAt;
  final String? updatedAt;
  final int? updatedBy;

  String get formattedstartDate {
    final dateObj = date_time.convertToDate(startDate ?? '');
    if (dateObj != null) {
      return date_time.dateFormat(dateObj);
    }
    return '';
  }

  String get formattedExpiryDate {
    final dateObj = date_time.convertToDate(expiryDate ?? '');
    if (dateObj != null) {
      return date_time.dateFormat(dateObj);
    }
    return '';
  }

  /// If [isReward] is true, the  [rewardPoint] is treated as flat point
  ///
  /// else [rewardPoint] is calculated on the basis of [amount]
  double getActualRewardPoint(double amount) {
    final point = double.parse(rewardPoint ?? '0.0');
    if (isReward ?? false) {
      return point;
    } else {
      return point / 100 * amount;
    }
  }
}
