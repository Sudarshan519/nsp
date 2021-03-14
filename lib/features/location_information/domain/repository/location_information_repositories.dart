import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/entity/country.dart';
import 'package:wallet_app/features/location_information/domain/entity/japan_cities.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture.dart';

abstract class LocationInformationRepositoryProtocol {
  Future<Either<ApiFailure, List<Prefecture>>> getPrefectures();
  Future<Either<ApiFailure, List<JapanCity>>> getJapanCities();

  Future<Either<ApiFailure, List<Country>>> getCountry();
  Future<Either<ApiFailure, List<String>>> getNepalDistrice();
}
