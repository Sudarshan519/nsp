import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_list.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';

abstract class PartnerServicesRepository {
  Future<Either<ApiFailure, PartnerServicesList>> getPartnerServices({
    ServicesCategory? category,
    String? page,
    int? id,
  });
  Future<Either<ApiFailure, List<ServicesCategory>>>
      getPartnerServicesCategories();

  Future<Either<ApiFailure, Unit>> purchasepackage(
      PurchasePackageParams params);
}
