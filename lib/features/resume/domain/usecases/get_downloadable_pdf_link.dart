import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class GetDownloadablePdfLink
    extends Usecase<ApiFailure, String, GetDownloadablePdfLinkParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  GetDownloadablePdfLink({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, String>> call(
      GetDownloadablePdfLinkParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    return repository.getResumePdfLink(lang: params.lang);
  }
}

class GetDownloadablePdfLinkParams {
  final String lang;

  GetDownloadablePdfLinkParams({
    required this.lang,
  });
}
