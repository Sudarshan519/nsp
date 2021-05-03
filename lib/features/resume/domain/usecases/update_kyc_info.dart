import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateKycInfo extends Usecase<ApiFailure, Unit, UpdateKycInfoParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateKycInfo({
    @required this.repository,
    @required this.networkInfo,
  }) : assert(repository != null);

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateKycInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.updateKycInfo(
      data: params.user,
    );
  }

  Future<Either<ApiFailure, Unit>> updateKycDoc(
      UpdateKycInfoParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.updateKycDoc(
      data: params.user,
    );
  }
}

class UpdateKycInfoParams {
  UpdateKycInfoParams({
    @required this.user,
  });

  final UserDetail user;
}
