import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/app_update/domain/entities/app_update.dart';
import 'package:wallet_app/features/app_update/domain/repository/app_update_repository.dart';

@lazySingleton
class GetAppUpdate implements Usecase<ApiFailure, AppUpdate, NoParams> {
  final AppUpdateRepository repository;
  final NetworkInfo networkInfo;

  GetAppUpdate({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, AppUpdate>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getUpdateDetails();
      return remoteData.fold(
        (failure) {
          return Left(failure);
        },
        (data) {
          return Right(data);
        },
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
