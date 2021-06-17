import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/repositories/partner_services_repository.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';

@singleton
class PurchasePackage
    extends Usecase<ApiFailure, dynamic, PurchasePackageParams> {
  final PartnerServicesRepository repository;
  final NetworkInfo networkInfo;

  PurchasePackage({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, dynamic>> call(PurchasePackageParams params) async {
    if (await networkInfo.isConnected) {
      return repository.purchasepackage(params);
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
