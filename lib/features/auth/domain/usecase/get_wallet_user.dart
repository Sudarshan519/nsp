import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class GetWalletUser implements Usecase<ApiFailure, WalletUser, NoParams> {
  final AuthRepository repository;

  GetWalletUser({
    @required this.repository,
  });

  @override
  Future<Either<ApiFailure, WalletUser>> call(NoParams params) async {
    final result = await repository.getWalletUser();
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (user) async {
        if (user.accessToken?.isEmpty ?? true) {
          return const Left(ApiFailure.invalidUser());
        }
        return Right(user);
        // return repository.verifyUserForToken(user);
      },
    );
  }
}
