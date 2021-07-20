import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class DeleteResumeData
    extends Usecase<ApiFailure, Unit, DeleteResumeDataParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  DeleteResumeData({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(DeleteResumeDataParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.deleteResumeValue(
      id: params.id,
      type: params.type,
    );
  }
}

class DeleteResumeDataParams {
  DeleteResumeDataParams({
    required this.type,
    required this.id,
  });

  final ResumeType type;
  final int id;
}
