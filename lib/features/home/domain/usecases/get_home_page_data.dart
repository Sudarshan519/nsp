import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/home/domain/repositories/home_repository.dart';

@lazySingleton
class GetHomePageData extends UsecaseStream<ApiFailure, List, NoParams> {
  final HomeReporisitory repository;

  GetHomePageData({
    @required this.repository,
  }) : assert(repository != null);

  @override
  Stream<Either<ApiFailure, List>> call(NoParams params) {
    return repository.getHomePageData();
  }
}
