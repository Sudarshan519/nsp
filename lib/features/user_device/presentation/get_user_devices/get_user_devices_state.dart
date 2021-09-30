part of 'get_user_devices_bloc.dart';

@freezed
class GetUserDevicesState with _$GetUserDevicesState {
  const factory GetUserDevicesState.loading() = _Loading;
  const factory GetUserDevicesState.loaded(
      List<UserDevice> device, String message) = _Loaded;
  const factory GetUserDevicesState.failure(ApiFailure failure) = _Failure;
  const factory GetUserDevicesState.failureWithData(
      ApiFailure failure, List<UserDevice> data) = _FailureWithData;
}
