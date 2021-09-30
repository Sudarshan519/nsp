part of 'get_user_devices_bloc.dart';

@freezed
class GetUserDevicesEvent with _$GetUserDevicesEvent {
  const factory GetUserDevicesEvent.fetchDevices() = _FetchDevices;
  const factory GetUserDevicesEvent.deleteDevice(int id) = _DeleteDevice;
}
