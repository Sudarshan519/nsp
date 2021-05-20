import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services_categories.dart';
import 'package:wallet_app/features/partner_services/domain/repositories/partner_services_repository.dart';

@singleton
class GetPartnerServicesCategories
    extends Usecase<ApiFailure, List<ServicesCategory>, NoParams> {
  final PartnerServicesRepository repository;
  final NetworkInfo networkInfo;

  GetPartnerServicesCategories({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<ServicesCategory>>> call(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getPartnerServicesCategories();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
