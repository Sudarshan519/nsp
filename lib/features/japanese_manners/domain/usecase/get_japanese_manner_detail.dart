import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/domain/repositories/japanese_manner_repository.dart';

@singleton
class GetJapaneseMannerDetail
    extends Usecase<ApiFailure, JapaneseManner, GetJapaneseMannerDetailParams> {
  final JapaneseMannerRepository repository;
  final NetworkInfo networkInfo;

  GetJapaneseMannerDetail({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, JapaneseManner>> call(
      GetJapaneseMannerDetailParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getJapaneseMannerDetail(params.id);
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetJapaneseMannerDetailParams {
  final int id;

  GetJapaneseMannerDetailParams({
    required this.id,
  });
}
