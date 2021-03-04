import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/home/domain/entities/home_response.dart';

abstract class HomeReporisitory {
  Stream<Either<ApiFailure, HomeResponse>> getHomePageData();
}
