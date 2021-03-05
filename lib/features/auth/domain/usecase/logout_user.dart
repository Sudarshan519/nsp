import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUser implements Usecase<ApiFailure, Unit, NoParams> {
  final AuthRepository repository;

  LogoutUser({
    @required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(NoParams params) async {
    await repository.logoutUser();
    return const Right(unit);
  }
}
