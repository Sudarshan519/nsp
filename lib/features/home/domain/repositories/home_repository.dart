import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';

abstract class HomeReporisitory {
  Stream<Either<ApiFailure, List<dynamic>>> getHomePageData();
}
