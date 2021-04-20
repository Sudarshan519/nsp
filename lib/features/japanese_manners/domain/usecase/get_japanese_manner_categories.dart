import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/repositories/japanese_manner_repository.dart';

@singleton
class GetJapaneseMannerCategories
    extends Usecase<ApiFailure, List<JapaneseMannerCategory>, NoParams> {
  final JapaneseMannerRepository repository;
  final NetworkInfo networkInfo;

  GetJapaneseMannerCategories({
    @required this.repository,
    @required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<JapaneseMannerCategory>>> call(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getJapaneseMannerCategories();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
