import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateWorkInfo extends Usecase<ApiFailure, Unit, UpdateWorkInfoParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateWorkInfo({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateWorkInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final qualificationData = WorkHistory(
      id: params.id,
      companyName: params.companyName,
      companyType: params.companyType,
      startYear: params.startYear,
      startMonth: params.startMonth,
      endYear: params.endYear,
      endMonth: params.endMonth,
      purposeOfResign: params.purposeOfResign,
    );

    return repository.updateWork(
      data: qualificationData,
      lang: params.lang,
    );
  }
}

class UpdateWorkInfoParams {
  UpdateWorkInfoParams({
    required this.lang,
    required this.id,
    required this.companyName,
    required this.companyType,
    required this.startYear,
    required this.startMonth,
    required this.endYear,
    required this.endMonth,
    required this.purposeOfResign,
  });

  final String lang;
  final int? id;
  final String companyName;
  final String companyType;
  final String startYear;
  final String startMonth;
  final String endYear;
  final String endMonth;
  final String purposeOfResign;
}
