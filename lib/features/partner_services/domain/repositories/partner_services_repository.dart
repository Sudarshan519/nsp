import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_list.dart';

abstract class PartnerServicesRepository {
  Future<Either<ApiFailure, PartnerServicesList>> getPartnerServices({
    required ServicesCategory category,
    required String page,
  });
  Future<Either<ApiFailure, List<ServicesCategory>>>
      getPartnerServicesCategories();
}
