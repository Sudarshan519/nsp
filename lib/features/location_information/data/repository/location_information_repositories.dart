import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/data/datasource/location_information_local_datasource.dart';
import 'package:wallet_app/features/location_information/domain/entity/country.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture_and_city_from_postal_code.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@LazySingleton(as: LocationInformationRepositoryProtocol)
class LocationInformationRepository
    implements LocationInformationRepositoryProtocol {
  final LocationInformationLocalDataSourceProtocol dataSource;

  LocationInformationRepository({
    @required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, List<Country>>> getCountry() async {
    try {
      return Right(await dataSource.getCounties());
    } catch (ex) {
      return const Left(ApiFailure.serverError(message: ''));
    }
  }

  @override
  Future<Either<ApiFailure, List<PrefectureAndCityFromPostalCode>>>
      getPrefectureAndCityFromPostalCode(String postalCode) async {
    try {
      return Right(
          await dataSource.getPreferenceAndCityFromPostalCode(postalCode));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<String>>> getListOfCities({
    @required String country,
    @required String nameOfPrefecture,
    @required String lang,
  }) async {
    try {
      return Right(
        await dataSource.getListOfCities(
          country: country,
          nameOfPrefecture: nameOfPrefecture,
          lang: lang,
        ),
      );
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
