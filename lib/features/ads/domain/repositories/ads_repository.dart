import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/ads/data/models/ad_model.dart';

abstract class AdsRepository {
  Future<Either<ApiFailure, AdsModel>> getAds();
}
