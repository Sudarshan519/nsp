import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateOtherInfo extends Usecase<ApiFailure, Unit, UpdateOtherInfoParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateOtherInfo({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateOtherInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final userData = PersonalInfo(
      knownLanguages: params.languages,
      jlpt: params.JLPTLevel,
      selfPr: params.selfPR,
      workingHours: "${params.workinHours}:${params.workingMinutes}",
      extraPoint: params.motivationsSpecialSkills,
      hobbies: params.hobbies,
      skills: params.skills,
      dependentsExceptSpouse: params.numberOfDependent,
      spouse: params.isSpouse,
      spouseSupportObligation: params.isSpouseSupportObligation,
      specialConditions: params.specialConditions,
    );

    AnalyticsService.logEvent(FirebaseEvents.RESUME_UPDATE);

    return repository.updateOtherInfo(
      data: userData,
      lang: params.lang,
    );
  }
}

class UpdateOtherInfoParams {
  UpdateOtherInfoParams({
    required this.lang,
    required this.languages,
    // ignore: non_constant_identifier_names
    required this.JLPTLevel,
    required this.selfPR,
    required this.motivationsSpecialSkills,
    required this.hobbies,
    required this.skills,
    required this.workinHours,
    required this.workingMinutes,
    required this.numberOfDependent,
    required this.isSpouse,
    required this.isSpouseSupportObligation,
    required this.specialConditions,
  });

  final String lang;

  final List<String> languages;
  // ignore: non_constant_identifier_names
  final String JLPTLevel;
  final String selfPR;
  final String motivationsSpecialSkills;
  final List<String> hobbies;
  final List<String> skills;
  final String workinHours;
  final String workingMinutes;
  final String numberOfDependent;
  final String isSpouse;
  final String isSpouseSupportObligation;
  final String specialConditions;
}
