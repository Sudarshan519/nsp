import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/coupon/data/datasource/coupon_remote_datasource.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/domain/repositories/coupon_repository.dart';

@LazySingleton(as: CouponRepository)
class CouponRepositoryImpl implements CouponRepository {
  final CouponRemoteDataSource dataSource;

  CouponRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, List<CouponCode>>> getCoupons() async {
    try {
      return Right(await dataSource.getCoupons());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
