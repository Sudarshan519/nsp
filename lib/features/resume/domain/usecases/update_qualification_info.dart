import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
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
    @required this.repository,
    @required this.networkInfo,
  }) : assert(repository != null);

  @override
  Future<Either<ApiFailure, Unit>> call(
      UpdateQualificationInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final qualificationData = QualificationHistory(
      id: params.id,
      qualificationName: params.qualificationName,
      certifiedYear: params.certifiedYear,
      certifiedMonth: params.certifiedMonth,
    );

    return repository.updateQualification(data: qualificationData);
  }
}

class UpdateQualificationInfoParams {
  UpdateQualificationInfoParams({
    @required this.id,
    @required this.qualificationName,
    @required this.certifiedYear,
    @required this.certifiedMonth,
  });

  final int id;
  final String qualificationName;
  final String certifiedYear;
  final String certifiedMonth;
}
