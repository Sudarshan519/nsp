import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

const _separator = '::';

// ignore: avoid_classes_with_only_static_members
class DeviceInfoManager {
  static late DeviceInfo device;
  static Future init() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final android = await deviceInfo.androidInfo;
      device = DeviceInfo(android.model ?? '', android.androidId ?? '');
    } else {
      final ios = await deviceInfo.iosInfo;
      device = DeviceInfo(ios.model ?? '', ios.identifierForVendor ?? '');
    }
  }
}

class DeviceInfo {
  final String name;
  final String uniqueId;

  DeviceInfo(this.name, this.uniqueId);

  factory DeviceInfo.fromString(String value) {
    final arr = value.split(_separator);
    return DeviceInfo(arr.first, arr.last);
  }

  @override
  String toString() {
    return name + _separator + uniqueId;
  }
}
