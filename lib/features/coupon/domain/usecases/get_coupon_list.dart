import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/domain/repositories/coupon_repository.dart';

@lazySingleton
class GetCouponList extends Usecase<ApiFailure, List<CouponCode>, NoParams> {
  final NetworkInfo networkInfo;
  final CouponRepository repository;

  GetCouponList({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, List<CouponCode>>> call(NoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.getCoupons();
  }
}
