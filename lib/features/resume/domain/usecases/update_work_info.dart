import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
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
    @required this.repository,
    @required this.networkInfo,
  }) : assert(repository != null);

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateWorkInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final qualificationData = WorkHistory(
      id: params.id,
      companyName: params.insutitute,
      // qualificationName: params.qualificationName,
      startYear: params.startYear,
      endYear: params.endYear,
    );

    return repository.updateWork(data: qualificationData);
  }
}

class UpdateWorkInfoParams {
  UpdateWorkInfoParams({
    @required this.id,
    @required this.insutitute,
    @required this.qualificationName,
    @required this.startYear,
    @required this.endYear,
  });

  final int id;
  final String insutitute;
  final String qualificationName;
  final String startYear;
  final String endYear;
}
