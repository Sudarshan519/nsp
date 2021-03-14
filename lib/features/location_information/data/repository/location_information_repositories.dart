import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/data/datasource/location_information_local_datasource.dart';
import 'package:wallet_app/features/location_information/domain/entity/country.dart';
import 'package:wallet_app/features/location_information/domain/entity/japan_cities.dart';
import 'package:wallet_app/features/location_information/domain/entity/prefecture.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@LazySingleton(as: LocationInformationRepositoryProtocol)
class LocationInformationRepository
    implements LocationInformationRepositoryProtocol {
  final LocationInformationLocalDataSourceProtocol localDataSource;

  LocationInformationRepository({
    @required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Prefecture>>> getPrefectures() async {
    try {
      return Right(await localDataSource.getPrefectures());
    } catch (ex) {
      return const Left(ApiFailure.serverError(message: ''));
    }
  }

  @override
  Future<Either<ApiFailure, List<JapanCity>>> getJapanCities() async {
    try {
      return Right(await localDataSource.getJapanCities());
    } catch (ex) {
      return const Left(ApiFailure.serverError(message: ''));
    }
  }

  @override
  Future<Either<ApiFailure, List<Country>>> getCountry() async {
    try {
      return Right(await localDataSource.getCounties());
    } catch (ex) {
      return const Left(ApiFailure.serverError(message: ''));
    }
  }

  @override
  Future<Either<ApiFailure, List<String>>> getNepalDistrice() async {
    try {
      return Right(await localDataSource.getNepalDistric());
    } catch (ex) {
      return const Left(ApiFailure.serverError(message: ''));
    }
  }
}
