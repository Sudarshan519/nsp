import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';

abstract class UserDeviceRepository {
  Future<Either<ApiFailure, List<UserDevice>>> getDevices();
  Future<Either<ApiFailure, Unit>> deleteDevice(int id);
}
