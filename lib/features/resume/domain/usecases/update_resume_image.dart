import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateResumeImage
    extends Usecase<ApiFailure, Unit, UpdateResumeImageParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateResumeImage({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateResumeImageParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final userData = PersonalInfo(image: params.image);

    return repository.updateResumeImage(
      data: userData,
      lang: params.lang,
    );
  }
}

class UpdateResumeImageParams {
  UpdateResumeImageParams({
    required this.lang,
    required this.image,
  });

  final String lang;
  final String image;
}
