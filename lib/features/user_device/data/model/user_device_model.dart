import 'package:wallet_app/core/device_info/device_information_manager.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';

class UserDeviceModel extends UserDevice {
  UserDeviceModel({required int id, required DeviceInfo deviceInfo})
      : super(id: id, deviceInfo: deviceInfo);

  factory UserDeviceModel.fromJson(Map<String, dynamic> json) {
    return UserDeviceModel(
        id: json['id'] as int,
        deviceInfo: DeviceInfo.fromString(json['device_id'] as String));
  }
}
