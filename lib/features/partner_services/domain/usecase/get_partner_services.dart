import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_list.dart';
import 'package:wallet_app/features/partner_services/domain/repositories/partner_services_repository.dart';

@singleton
class GetPartnerServices
    extends Usecase<ApiFailure, PartnerServicesList, GetPartnerServicesParam> {
  final PartnerServicesRepository repository;
  final NetworkInfo networkInfo;

  GetPartnerServices({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, PartnerServicesList>> call(
      GetPartnerServicesParam params) async {
    if (await networkInfo.isConnected) {
      return repository.getPartnerServices(
          category: params.category, page: params.page, id: params.id);
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetPartnerServicesParam {
  final ServicesCategory? category;
  final String? page;
  final int? id;

  GetPartnerServicesParam({this.category, this.page, this.id});
}

class PurchasePackageParams {
  final String customerId;
  final String remarks;
  final String packageName;
  final double amount;
  final int packageId;
  final int serviceId;
  final String coupon;

  PurchasePackageParams({
    required this.customerId,
    required this.remarks,
    required this.packageId,
    required this.packageName,
    required this.serviceId,
    required this.amount,
    required this.coupon,
  });
}
