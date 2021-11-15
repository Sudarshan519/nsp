import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class EnquiryISP implements Usecase<ApiFailure, dynamic, EnquireISPParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  EnquiryISP({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> call(
      EnquireISPParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }
    if (params.account.isEmpty) {
      return const Left(
          ServerError(message: 'Please enter account number or customer id!'));
    }

    return repository.enquiryISP(params);
  }
}

class EnquireISPParams {
  final String account;
  final String productId;
  final String provider;

  EnquireISPParams({
    required this.account,
    required this.productId,
    required this.provider,
  });

  Map<String, dynamic> toJson() => {
        'account': account,
        'product_id': productId,
        'amount': 500, // static
      };
}
