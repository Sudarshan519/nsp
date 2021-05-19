import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture_and_city_from_postal_code.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@lazySingleton
class GetPrefectureCityFromPostalCode {
  final LocationInformationRepositoryProtocol repository;

  GetPrefectureCityFromPostalCode({
    required this.repository,
  });

  Future<Either<ApiFailure, List<PrefectureAndCityFromPostalCode>>> call(
      String postalcode) async {
    final result =
        await repository.getPrefectureAndCityFromPostalCode(postalcode);

    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data),
    );
  }
}
