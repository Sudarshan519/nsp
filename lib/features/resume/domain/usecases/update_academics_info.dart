import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateAcadamicInfo
    extends Usecase<ApiFailure, Unit, UpdateAcadamicInfoParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateAcadamicInfo({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateAcadamicInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final academicData = AcademicHistory(
      id: params.id,
      institute: params.insutitute,
      majorSubject: params.majorSubject,
      startYear: params.startYear,
      startMonth: params.startMonth,
      completionMonth: params.completionMonth,
      completionYear: params.completionYear,
    );
    AnalyticsService.logEvent(FirebaseEvents.RESUME_UPDATE);

    return repository.updateAcademic(
      data: academicData,
      lang: params.lang,
    );
  }
}

class UpdateAcadamicInfoParams {
  UpdateAcadamicInfoParams({
    required this.lang,
    required this.id,
    required this.insutitute,
    required this.majorSubject,
    required this.startYear,
    required this.startMonth,
    required this.completionYear,
    required this.completionMonth,
  });

  final String lang;
  final int? id;
  final String insutitute;
  final String majorSubject;
  final String startYear;
  final String startMonth;
  final String completionYear;
  final String completionMonth;
}
