import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/model/user_detail_model.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';
import 'package:wallet_app/utils/constant.dart';

abstract class AuthLocalDataSource {
  Future save(WalletUserModel user);
  // Get saved  insurance user
  //
  // Throws [PlatformException] for platform Error
  // Throus [UserSessionNotAvailableException] if not found on the storage
  Future<WalletUserModel> getWalletUser();
  Future delete();

  Future saveUserDetail(UserDetailModel user);
  Future<UserDetailModel> getUserDetail();

  Future saveAppleUser(Map<String, dynamic> appleUser);
  Future<Map<String, dynamic>> getAppleUser();
  DateTime? getKycPromptDate();
  void setKycPromptDate();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage secureStorage;
  final SharedPreferences preferences;
  final Logger logger;

  AuthLocalDataSourceImpl({
    required this.secureStorage,
    required this.preferences,
    required this.logger,
  });

  @override
  Future<WalletUserModel> getWalletUser() async {
    try {
      final value = preferences.getString(AuthPreferenceKeys.walletUser);
      if (value == null) {
        throw CacheException();
      }
      return WalletUserModel.fromLocalStorage(
          json.decode(value) as Map<String, dynamic>);
    } catch (ex) {
      logger.log(
        className: "AuthLocalDataSource",
        functionName: "getWalletUser()",
        errorText: "Error  getting wallet from shared prefs",
        errorMessage: ex.toString(),
      );

      debugPrint(ex.toString());
      throw CacheException();
    }
  }

  @override
  Future save(WalletUserModel user) async {
    final jsonString = json.encode(user.toJSON());
    try {
      await preferences.setString(AuthPreferenceKeys.walletUser, jsonString);
    } catch (ex) {
      logger.log(
        className: "AuthLocalDataSource",
        functionName: "save()",
        errorText: "Error saving user JSON to shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }
  }

  @override
  Future delete() async {
    await preferences.remove(AuthPreferenceKeys.walletUser);
  }

  @override
  DateTime? getKycPromptDate() {
    final result =
        preferences.getString(AuthPreferenceKeys.kycVerificationPromptDate);
    if (result != null) {
      return DateTime.parse(result);
    }
    return null;
  }

  @override
  void setKycPromptDate() {
    final result = preferences.setString(
        AuthPreferenceKeys.kycVerificationPromptDate,
        DateTime.now().toString());
  }

  // User Details
  @override
  Future saveUserDetail(UserDetailModel user) async {
    final jsonString = json.encode(user.toJson());
    try {
      await preferences.setString(AuthPreferenceKeys.userDetails, jsonString);
    } catch (ex) {
      logger.log(
        className: "AuthLocalDataSource",
        functionName: "saveUserDetail()",
        errorText: "Error saving user details to shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
    }
  }

  @override
  Future<UserDetailModel> getUserDetail() async {
    try {
      final value = preferences.getString(AuthPreferenceKeys.userDetails);
      if (value == null) {
        throw CacheException();
      }
      try {
        return UserDetailModel.fromJson(
            json.decode(value) as Map<String, dynamic>);
      } on Exception catch (ex) {
        logger.log(
          className: "AuthLocalDataSource",
          functionName: "getUserDetail()",
          errorText: "Error casting from json to UserDetailModel",
          errorMessage: ex.toString(),
        );
        throw const ServerException(message: AppConstants.someThingWentWrong);
      }
    } catch (ex) {
      logger.log(
        className: "AuthLocalDataSource",
        functionName: "getUserDetail()",
        errorText: "Error getting user details from shared prefs",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      throw CacheException();
    }
  }

  // Apple user info
  @override
  Future saveAppleUser(Map<String, dynamic> appleUser) async {
    final jsonString = json.encode(appleUser);
    await secureStorage.write(
        key: AuthPreferenceKeys.appleUser, value: jsonString);
  }

  @override
  Future<Map<String, dynamic>> getAppleUser() async {
    try {
      final value = await secureStorage.read(key: AuthPreferenceKeys.appleUser);
      if (value == null) {
        throw CacheException();
      }
      return json.decode(value) as Map<String, dynamic>;
    } catch (ex) {
      logger.log(
        className: "AuthLocalDataSource",
        functionName: "getAppleUser()",
        errorText: "Error getting apple user from secure storage",
        errorMessage: ex.toString(),
      );
      debugPrint(ex.toString());
      throw CacheException();
    }
  }
}
