import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
// import 'package:wallet_app/core/device_info/device_information_manager.dart';
import 'package:wallet_app/features/auth/data/datasource/auth_local_data_source.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/auth/auth_widgets.dart';

// ignore: avoid_classes_with_only_static_members
class PaymentAuthService {
  static bool _hasFaceId = false;
  static bool _hasFIngerPrint = false;

  static PaymentAuthType? _primaryAuthType;
  static PaymentAuthType? get primaryAuthType => _primaryAuthType;

  static void setSelectedAuthType(PaymentAuthType? type) {
    getIt<AuthLocalDataSource>().setDefaultPaymentAuth(type.toString());
    _primaryAuthType = type;
  }

  static bool get hasFaceId => _hasFaceId;
  static bool get hasFingerPrintReader => _hasFIngerPrint;

  static final LocalAuthentication _localAuth = LocalAuthentication();
  static Future init() async {
    try {
      final devices = await _localAuth.getAvailableBiometrics();
      for (final device in devices) {
        if (device == BiometricType.fingerprint) {
          _hasFIngerPrint = true;
        }
        if (device == BiometricType.face) {
          _hasFaceId = true;
        }
      }
      final type = getIt<AuthLocalDataSource>().getDefautltPaymentAuth();
      if (type.isNotEmpty) {
        _primaryAuthType = _typeFromString(type);
      }
    } catch (e) {
      debugPrint('failed to fetch biometric type');
    }
  }

  static Future<bool> verifyBiometrics() async {
    try {
      return _localAuth.authenticate(
          localizedReason: 'Verify your biometrics', biometricOnly: true);
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  static Future<PaymentAuthResponse> authenticate(String message) async {
    if ((hasFaceId || hasFingerPrintReader) &&
        (primaryAuthType == PaymentAuthType.face_id ||
            primaryAuthType == PaymentAuthType.fingerprint)) {
      return _authenticateUsingBioMetrics(message);
    }
    return _authenticateUsingMpin();
  }

  static Future<PaymentAuthResponse> _authenticateUsingMpin() async {
    final user = getIt<HomePageDataBloc>().homeData?.userDetail;
    final hasSetMpin = user?.isMpinSet ?? false;

    if (!hasSetMpin) {
      final result = await AuthWidgets.showSetMpinPrompt(force: true) ?? false;
      if (result != true) {
        return PaymentAuthResponse(
            success: false, message: 'MPin not set by user');
      }
    }
    final result = await AuthWidgets.displayMPinDIalog();
    return PaymentAuthResponse(
        success: result.success, message: result.message);
  }

  static Future<PaymentAuthResponse> _authenticateUsingBioMetrics(
      String message) async {
    assert(message.isNotEmpty, "Message shouldn't be empty!");

    try {
      final isSupported = await _localAuth.isDeviceSupported();
      if (!isSupported) {
        return PaymentAuthResponse(
            success: false,
            message:
                'This device is does not support biometric authentication!');
      }
      final canCheck = await _localAuth.canCheckBiometrics;
      if (!canCheck) {
        return PaymentAuthResponse(
            success: false, message: 'Cant Check for biometrics');
      }

      final devices = await _localAuth.getAvailableBiometrics();

      if (devices.isEmpty) {
        return PaymentAuthResponse(
            success: false, message: 'No biometrics for this device');
      }
      // var biometricOnly = false;
      // if (Platform.isAndroid && DeviceInfoManager.apiLevel < 29) {
      //   biometricOnly = true;
      // }
      final authenticated = await _localAuth.authenticate(
          localizedReason: message,
          biometricOnly: true,
          androidAuthStrings:
              const AndroidAuthMessages(cancelButton: 'Use Password/MPin'),
          iOSAuthStrings:
              const IOSAuthMessages(cancelButton: 'Use Password/MPin'));

      if (authenticated) {
        return PaymentAuthResponse(success: authenticated, message: 'Success!');
      } else {
        return _authenticateUsingMpin();
      }
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

      return PaymentAuthResponse(success: false, message: e.message ?? message);
      // TODO
    } catch (e) {
      debugPrint(e.toString());
      return PaymentAuthResponse(success: false, message: 'Unknown error');
    }
  }
}

class PaymentAuthResponse {
  final bool success;
  final String message;

  PaymentAuthResponse({required this.success, required this.message});
}

enum PaymentAuthType { fingerprint, face_id, m_pin }

PaymentAuthType? _typeFromString(String value) {
  for (final item in PaymentAuthType.values) {
    if (item.toString() == value) {
      return item;
    }
  }
}
