import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/domain/repositories/coupon_repository.dart';

@lazySingleton
class VerifyCoupon extends Usecase<ApiFailure, CouponCode, VerifyCouponParams> {
  final NetworkInfo networkInfo;
  final CouponRepository repository;

  VerifyCoupon({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, CouponCode>> call(VerifyCouponParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.couponCode.isEmpty) {
      return const Left(ApiFailure.serverError(
        message: "Coupon code cannot be empty",
      ));
    }

    return repository.verifyCoupon(
      couponCode: params.couponCode,
      productType: params.productType,
      productId: params.productId,
    );
  }
}

class VerifyCouponParams {
  VerifyCouponParams({
    required this.couponCode,
    required this.productType,
    required this.productId,
  });

  final String couponCode;
  final String productType;
  final int productId;
}
