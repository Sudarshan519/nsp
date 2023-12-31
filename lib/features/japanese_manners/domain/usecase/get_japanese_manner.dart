import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_list.dart';
import 'package:wallet_app/features/japanese_manners/domain/repositories/japanese_manner_repository.dart';

@singleton
class GetJapaneseManner
    extends Usecase<ApiFailure, JapaneseMannerList, GetJapaneseMannerParams> {
  final JapaneseMannerRepository repository;
  final NetworkInfo networkInfo;

  GetJapaneseManner({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, JapaneseMannerList>> call(
      GetJapaneseMannerParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getJapaneseManner(
        category: params.category,
        page: params.page,
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetJapaneseMannerParams {
  final JapaneseMannerCategory category;
  final String page;

  GetJapaneseMannerParams({
    required this.category,
    required this.page,
  });
}
