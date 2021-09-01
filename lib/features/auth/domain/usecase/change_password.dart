import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class ChangePasswordUseCase
    implements Usecase<ApiFailure, Unit, ChangePasswordParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  ChangePasswordUseCase({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(ChangePasswordParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.currentPassword.isEmpty ||
        params.newPassword.isEmpty ||
        params.confirmNewPassword.isEmpty) {
      return const Left(
        ApiFailure.serverError(message: "Please fill all textboxes!"),
      );
    }

    if (params.newPassword != params.confirmNewPassword) {
      return const Left(
        ApiFailure.serverError(
            message: "New and Confirm passwords doesn't match!"),
      );
    }
    if (params.newPassword.length + params.confirmNewPassword.length < 16) {
      return const Left(
        ApiFailure.serverError(
            message:
                "Length of new password must be atleast 8 characters long!"),
      );
    }

    return repository.changePassword(params: params);
  }

  Future<Either<ApiFailure, Unit>> getNewResetCode(String email) async {
    return repository.getPasswordResetCode(email);
  }
}

class ChangePasswordParams {
  final String currentPassword;
  final String newPassword;
  final String confirmNewPassword;

  ChangePasswordParams({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmNewPassword,
  });
}
