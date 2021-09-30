import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';
import 'package:wallet_app/features/user_device/domain/repository/user_device_repository.dart';

@lazySingleton
class GetUserDevices
    implements Usecase<ApiFailure, List<UserDevice>, NoParams> {
  final UserDeviceRepository repository;
  final NetworkInfo networkInfo;

  GetUserDevices({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<UserDevice>>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getDevices();
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
