import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';
import 'package:wallet_app/utils/validator.dart';

@injectable
class UpdatePersonalInfo
    extends Usecase<ApiFailure, Unit, UpdatePersonalInfoParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdatePersonalInfo({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(UpdatePersonalInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    if (params.furigana.isNotEmpty) {
      final error = Validator.isNotKatakana(params.furigana,
          placeholder: "Furigana field");

      if (error != null) {
        return Left(ApiFailure.serverError(message: error));
      }
    }

    final userData = PersonalInfo(
      firstName: params.firstName,
      lastName: params.lastName,
      furigana: params.furigana,
      profession: params.profession,
      dob: params.dob,
      age: params.age,
      gender: params.gender,
      nationality: params.nationality,
      email: params.email,
      contPhone: params.phone,
    );
    AnalyticsService.logEvent(FirebaseEvents.RESUME_UPDATE);

    return repository.updatePersonalInfo(
      data: userData,
      lang: params.lang,
    );
  }
}

class UpdatePersonalInfoParams {
  UpdatePersonalInfoParams({
    required this.lang,
    required this.firstName,
    required this.lastName,
    required this.furigana,
    required this.profession,
    required this.dob,
    required this.age,
    required this.gender,
    required this.nationality,
    required this.email,
    required this.phone,
  });

  final String lang;

  final String firstName;
  final String lastName;
  final String furigana;
  final String profession;
  final String dob;
  final String age;
  final String gender;
  final String nationality;
  final String email;
  final String phone;
}
