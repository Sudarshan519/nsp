import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/entity/country.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture_and_city_from_postal_code.dart';

abstract class LocationInformationRepositoryProtocol {
  Future<Either<ApiFailure, List<Country>>> getCountry();
  Future<Either<ApiFailure, List<PrefectureAndCityFromPostalCode>>>
      getPrefectureAndCityFromPostalCode(String postalCode);

  Future<Either<ApiFailure, List<String>>> getListOfCities({
    required String country,
    required String nameOfPrefecture,
    required String lang,
  });
}
