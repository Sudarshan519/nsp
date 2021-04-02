import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/entity/country.dart';

abstract class LocationInformationRepositoryProtocol {
  Future<Either<ApiFailure, List<Country>>> getCountry();
}
