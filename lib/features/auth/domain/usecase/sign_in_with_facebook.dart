import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class SignInWithFacebook implements Usecase<ApiFailure, WalletUser, NoParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  SignInWithFacebook({
    @required this.repository,
    @required this.networkInfo,
  })  : assert(repository != null),
        assert(networkInfo != null);

  @override
  Future<Either<ApiFailure, WalletUser>> call(NoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.loginWithFacebook();
  }
}
