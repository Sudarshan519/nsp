import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@lazySingleton
class GetListOfCityFromPrefectures
    implements
        Usecase<ApiFailure, List<String>, GetListOfCityFromPrefecturesParams> {
  final LocationInformationRepositoryProtocol repository;

  GetListOfCityFromPrefectures({
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, List<String>>> call(
      GetListOfCityFromPrefecturesParams params) async {
    final result = await repository.getListOfCities(
      country: params.country,
      nameOfPrefecture: params.prefecture,
      lang: params.lang,
    );

    return result.fold(
      (failure) => Left(failure),
      (data) {
        data.removeWhere((value) => value == null);
        return Right(data);
      },
    );
  }
}

class GetListOfCityFromPrefecturesParams {
  GetListOfCityFromPrefecturesParams({
    required this.country,
    required this.prefecture,
    required this.lang,
  });

  final String country;
  final String prefecture;
  final String lang;
}
