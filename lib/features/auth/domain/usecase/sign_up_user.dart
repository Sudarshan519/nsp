import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:wallet_app/utils/validator.dart';

@lazySingleton
class SignUpWithEmailPasswordAndUserDetail
    implements Usecase<ApiFailure, Unit, SignUpParams> {
  final AuthRepository repository;
  final NetworkInfo networkInfo;

  SignUpWithEmailPasswordAndUserDetail({
    @required this.repository,
    @required this.networkInfo,
  })  : assert(repository != null),
        assert(networkInfo != null);

  @override
  Future<Either<ApiFailure, Unit>> call(SignUpParams params) async {
    final firstName = Validator.isNotEmptyAndMinimum3CharacterLong(
        params.firstName,
        placeholder: "First name");
    final lastName = Validator.isNotEmptyAndMinimum3CharacterLong(
        params.lastName,
        placeholder: "Last name");
    final emailValidation = Validator.isValidEmail(params.email);
    final passwordValidation = Validator.isValidPassword(params.password);

    if (firstName != null) {
      return Left(ApiFailure.serverError(message: firstName));
    }

    if (lastName != null) {
      return Left(ApiFailure.serverError(message: lastName));
    }

    if (emailValidation != null) {
      return Left(ApiFailure.serverError(message: emailValidation));
    }

    if (passwordValidation != null) {
      return Left(ApiFailure.serverError(message: passwordValidation));
    }

    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.postUserSignUpWithUsernamePasswordAndOtherInformation(
      firstName: params.firstName,
      lastName: params.lastName,
      email: params.email,
      phoneNumber: params.phoneNumber,
      password: params.password,
      confirmPassword: params.confirmPassword,
    );
  }
}

class SignUpParams {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String password;
  final String confirmPassword;

  SignUpParams({
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.phoneNumber,
    @required this.password,
    @required this.confirmPassword,
  });
}
