import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/ads/data/data_source/ads_remote_datasource.dart';
import 'package:wallet_app/features/ads/data/models/ad_model.dart';
import 'package:wallet_app/features/ads/domain/repositories/ads_repository.dart';

@LazySingleton(as: AdsRepository)
class AdsRepositoryImpl implements AdsRepository {
  final AdsRemoteDataSource dataSource;

  AdsRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, AdsModel>>getAds() async {
    try {
      return Right(await dataSource.getAds());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
