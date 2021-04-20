import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/data/datasource/partner_services_remote_data_source.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_list.dart';
import 'package:wallet_app/features/partner_services/domain/repositories/partner_services_repository.dart';

@LazySingleton(as: PartnerServicesRepository)
class PartnerServicesRepositoryImpl implements PartnerServicesRepository {
  final PartnerServicesRemoteDataSource remoteDataSource;
  PartnerServicesRepositoryImpl({
    @required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, PartnerServicesList>> getPartnerServices({
    @required ServicesCategory category,
  }) async {
    try {
      return Right(await remoteDataSource.getPartnerServices(
        name: category.categoryName,
      ));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<ServicesCategory>>>
      getPartnerServicesCategories() async {
    try {
      return Right(await remoteDataSource.getJapaneseMannerCategories());
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
