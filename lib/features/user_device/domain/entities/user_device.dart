import 'package:wallet_app/core/device_info/device_information_manager.dart';

class UserDevice {
  final int id;
  final DeviceInfo deviceInfo;
  final String lastLogin;
  UserDevice({
    required this.id,
    required this.deviceInfo,
    required this.lastLogin,
  });
}
