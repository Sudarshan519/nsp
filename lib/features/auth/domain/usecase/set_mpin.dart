import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class SetMpin implements Usecase<ApiFailure, Unit, SetMpinParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  SetMpin({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(SetMpinParams params) async {
    if ((params.verifyMpin + params.mpin).length < 8) {
      return const Left(
        ApiFailure.serverError(
            message: "Please enter at least 4 character pin in both fields!"),
      );
    }
    if (params.verifyMpin != params.mpin) {
      return const Left(
        ApiFailure.serverError(message: "The given pins do not match!"),
      );
    }

    //TODO: check regex

    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.setMpin(mpin: params.mpin);
  }
}

class SetMpinParams {
  final String mpin;
  final String verifyMpin;

  SetMpinParams({
    required this.mpin,
    required this.verifyMpin,
  });
}
