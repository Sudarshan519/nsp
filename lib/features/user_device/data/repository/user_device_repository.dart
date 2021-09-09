import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/user_device/data/data_source/user_device_remote_data_source.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:wallet_app/features/user_device/domain/repository/user_device_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserDeviceRepository)
class UserDeviceRepositoryImpl implements UserDeviceRepository {
  final UserDeviceRemoteDataSource dataSource;
  final Logger logger;

  UserDeviceRepositoryImpl(this.dataSource, this.logger);

  @override
  Future<Either<ApiFailure, Unit>> deleteDevice(int id) async {
    try {
      return Right(await dataSource.deleteDevice(id));
    } on ServerException catch (ex) {
      logger.log(
        className: "UserDeviceRepository",
        functionName: "deleteDevice()",
        errorText: "Error on deleting user device data from data repo",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }

  @override
  Future<Either<ApiFailure, List<UserDevice>>> getDevices() async {
    try {
      return Right(await dataSource.getUserDevices());
    } on ServerException catch (ex) {
      logger.log(
        className: "UserDeviceRepository",
        functionName: "getDevices()",
        errorText: "Error on getting user device data from data repo",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
