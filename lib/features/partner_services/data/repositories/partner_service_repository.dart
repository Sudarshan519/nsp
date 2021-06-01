import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/partner_services/data/datasource/partner_services_remote_data_source.dart';
import 'package:wallet_app/features/partner_services/data/model/services_categories_model.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_list.dart';
import 'package:wallet_app/features/partner_services/domain/repositories/partner_services_repository.dart';

@LazySingleton(as: PartnerServicesRepository)
class PartnerServicesRepositoryImpl implements PartnerServicesRepository {
  final PartnerServicesRemoteDataSource remoteDataSource;
  final Logger logger;
  PartnerServicesRepositoryImpl({
    required this.remoteDataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, PartnerServicesList>> getPartnerServices({
    required ServicesCategory category,
    required String page,
  }) async {
    try {
      return Right(await remoteDataSource.getPartnerServices(
        name: category.categoryName ?? '',
        page: page,
      ));
    } on ServerException catch (ex) {
      logger.log(
        className: "PartnerServicesRepository",
        functionName: "getPartnerServices()",
        errorText: "Error getting Partner Services from remote data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<ServicesCategory>>>
      getPartnerServicesCategories() async {
    try {
      final categories = await remoteDataSource.getJapaneseMannerCategories();
      categories.insert(
          0, const ServicesCategoryModel(id: null, categoryName: "All"));
      return Right(categories);
    } on ServerException catch (ex) {
      logger.log(
        className: "PartnerServicesRepository",
        functionName: "getPartnerServicesCategories()",
        errorText:
            "Error getting Partner Service Category from remote data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
