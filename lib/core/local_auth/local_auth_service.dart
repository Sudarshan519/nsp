import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

// ignore: avoid_classes_with_only_static_members
class LocalAuthService {
  static final LocalAuthentication _localAuth = LocalAuthentication();

  static Future<_LocalAuthResponse> authenticate(String message) async {
    try {
      final canCheck = await _localAuth.canCheckBiometrics;
      if (!canCheck) {
        return _LocalAuthResponse(
            success: false, message: 'Cant Check for biometrics');
      }

      final devices = await _localAuth.getAvailableBiometrics();
      if (devices.isEmpty) {
        return _LocalAuthResponse(
            success: false, message: 'No biometrics for this device');
      }

      final res = await _localAuth.authenticate(localizedReason: message);
      return _LocalAuthResponse(
          success: res, message: res ? 'Success!' : 'Failed to authenticate!');
    } on PlatformException catch (e) {
      String message = '';

      switch (e.code) {
        case auth_error.notAvailable:
          message = 'The device does not have a Touch ID/fingerprint scanner';
          break;
        case auth_error.lockedOut:
          message = 'The device is locked out due to too many attempts';
          break;
        case auth_error.notEnrolled:
          message = 'The user has not enrolled any fingerprints on the device';
          break;
        case auth_error.passcodeNotSet:
          message = 'The user has not yet configured a passcode';
          break;

        default:
          message = 'Unknown Error';
      }

      return _LocalAuthResponse(success: false, message: message);
      // TODO
    } catch (e) {
      return _LocalAuthResponse(success: false, message: 'Unknown error');
    }
  }
}

class _LocalAuthResponse {
  final bool success;
  final String message;

  _LocalAuthResponse({required this.success, required this.message});
}
