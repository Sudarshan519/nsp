import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateQualificationInfo
    extends Usecase<ApiFailure, Unit, UpdateQualificationInfoParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateQualificationInfo({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(
      UpdateQualificationInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }
    if (params.qualificationName.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: 'Please enter Qualification Name!'));
    }
    if (params.certifiedYear.isEmpty) {
      return const Left(
          ApiFailure.serverError(message: 'Please enter Certified year!'));
    }

    final qualificationData = QualificationHistory(
      id: params.id,
      qualificationName: params.qualificationName,
      certifiedYear: params.certifiedYear,
      certifiedMonth: params.certifiedMonth,
    );
    AnalyticsService.logEvent(FirebaseEvents.RESUME_UPDATE);

    return repository.updateQualification(
      data: qualificationData,
      lang: params.lang,
    );
  }
}

class UpdateQualificationInfoParams {
  UpdateQualificationInfoParams({
    required this.lang,
    required this.id,
    required this.qualificationName,
    required this.certifiedYear,
    required this.certifiedMonth,
  });

  final String lang;

  final int? id;
  final String qualificationName;
  final String certifiedYear;
  final String certifiedMonth;
}
