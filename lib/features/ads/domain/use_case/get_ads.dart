import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/ads/domain/enity/ad.dart';
import 'package:wallet_app/features/ads/domain/repositories/ads_repository.dart';

@lazySingleton
class GetAds extends Usecase<ApiFailure, Ads, NoParams> {
  final NetworkInfo networkInfo;
  final AdsRepository repository;

  GetAds({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Ads>> call(NoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.getAds();
  }
}
