import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/news/domain/entity/news.dart';

abstract class NewsRepositoryProtocol {
  Future<Either<ApiFailure, News>> getNewsFromRemote({
    @required String page,
  });
  Future<Either<ApiFailure, News>> getNewsFromLocalStorage();
}
