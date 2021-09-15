import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/contact_us/domain/repository/contact_us_repository.dart';
import 'package:wallet_app/utils/validator.dart';

@lazySingleton
class ContactUsUseCase extends Usecase<ApiFailure, Unit, ContactUsParams> {
  final NetworkInfo networkInfo;
  final ContactUsRepository repository;

  ContactUsUseCase({
    required this.networkInfo,
    required this.repository,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(ContactUsParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (params.name.isEmpty || params.email.isEmpty || params.message.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: 'Please fill all fields'));
    }

    final name = Validator.isNotEmptyAndMinimumCharacterLong(params.name,
        placeholder: "Name");
    final message = Validator.isNotEmptyAndMinimumCharacterLong(params.message,
        placeholder: "Message", minChar: 15);
    final emailValidation = Validator.isValidEmail(params.email);

    if (emailValidation != null) {
      return Left(ApiFailure.serverError(message: emailValidation));
    }
    if (name != null) {
      return Left(ApiFailure.serverError(message: name));
    }
    if (message != null) {
      return Left(ApiFailure.serverError(message: message));
    }

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.contactUs(params);
  }
}

class ContactUsParams {
  final String name;
  final String email;
  final String message;

  ContactUsParams({
    required this.name,
    required this.email,
    required this.message,
  });
}
