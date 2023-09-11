import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

const _separator = '::';

// ignore: avoid_classes_with_only_static_members
class DeviceInfoManager {
  static late AndroidDeviceInfo _android;
  static late IosDeviceInfo _ios;
  static late DeviceInfo device;

  static Future init() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      _android = await deviceInfo.androidInfo;
      device = DeviceInfo(
          name: _android.model ?? '',
          uniqueId: _android.id ?? '',
          osVersion: _android.version.release);
    } else {
      _ios = await deviceInfo.iosInfo;
      device = DeviceInfo(
          name: _ios.model ?? '',
          uniqueId: _ios.identifierForVendor ?? '',
          osVersion: _ios.systemVersion);
    }
  }

  static int get apiLevel {
    try {
      if (Platform.isAndroid) {
        return _android.version.sdkInt ?? 0;
      }
    } catch (e) {}
    return 0;
  }
}

class DeviceInfo {
  final String name;
  final String uniqueId;
  String? osVersion;

  DeviceInfo({required this.name, required this.uniqueId, this.osVersion});

  factory DeviceInfo.fromString(String value) {
    final arr = value.split(_separator);
    return DeviceInfo(name: arr.first, uniqueId: arr.last);
  }

  @override
  String toString() {
    return name + _separator + uniqueId;
  }
}
