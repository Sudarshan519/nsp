import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';

abstract class CouponRepository {
  Future<Either<ApiFailure, List<CouponCode>>> getCoupons();
}
