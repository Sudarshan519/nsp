import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class GetNeaOffice
    implements Usecase<ApiFailure, List<PaymentOffice>, NoParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  GetNeaOffice({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, List<PaymentOffice>>> call(NoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.getNeaPaymentOffices();
  }
}
