import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class EnquiryMeroTv
    implements Usecase<ApiFailure, dynamic, EnquireMeroTvParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  EnquiryMeroTv({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, PaymentCustomerInfoModel>> call(
      EnquireMeroTvParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }
    if (params.account.isEmpty) {
      return const Left(
          ServerError(message: 'Please enter account number or customer id!'));
    }

    return repository.enquiryMeroTv(params);
  }
}

class EnquireMeroTvParams {
  final String account;
  final String productId;

  EnquireMeroTvParams({required this.account, required this.productId});

  Map<String, dynamic> toJson() => {
        'account': account,
        'product_id': productId,
        'amount': 500, // static
      };
}
