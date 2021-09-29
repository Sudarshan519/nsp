import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class RequestPhoneOtp implements Usecase<ApiFailure, Unit, String> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  RequestPhoneOtp({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(String number) async {
    if (number.isEmpty) {
      return const Left(
        ApiFailure.serverError(message: "Number cannot be empty."),
      );
    }

    //TODO: check regex

    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.getPhoneOtp(number: number);
  }
}
