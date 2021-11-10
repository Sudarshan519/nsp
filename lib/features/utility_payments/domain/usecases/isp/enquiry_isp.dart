import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/utility_payments/domain/repositories/utility_payment_repository.dart';

@lazySingleton
class EnquiryIsp implements Usecase<ApiFailure, dynamic, EnquiryIspParams> {
  final NetworkInfo networkInfo;
  final UtilityPaymentRepository repository;

  EnquiryIsp({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, dynamic>> call(EnquiryIspParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }
    if (params.username.isEmpty) {
      return const Left(ServerError(message: 'Please enter username!'));
    }

    return repository.enquiryIsp(username: params.username);
  }
}

class EnquiryIspParams {
  final String username;

  EnquiryIspParams({
    required this.username,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
      };
}
