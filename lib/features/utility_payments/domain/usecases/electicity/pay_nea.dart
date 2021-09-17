import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/nea_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class PayNea implements Usecase<ApiFailure, Unit, NeaCustomerInfo> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  PayNea({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(NeaCustomerInfo params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.payNea(params);
  }
}

class PayNeaParams {
  final String officeCode;
  final String account;
  final String customerId;
  final String productId;

  PayNeaParams(
      {required this.officeCode,
      required this.account,
      required this.customerId,
      required this.productId});
}
