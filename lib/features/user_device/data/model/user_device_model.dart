import 'package:wallet_app/core/device_info/device_information_manager.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';

class UserDeviceModel extends UserDevice {
  UserDeviceModel({
    required int id,
    required DeviceInfo deviceInfo,
    required String lastLogin,
  }) : super(
          id: id,
          deviceInfo: deviceInfo,
          lastLogin: lastLogin,
        );

  factory UserDeviceModel.fromJson(Map<String, dynamic> json) {
    return UserDeviceModel(
      id: json['id'] as int,
      deviceInfo: DeviceInfo.fromString(json['device_id'] as String),
      lastLogin: (json['updated_at'] as String?) ?? '',
    );
  }
}
