import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/features/auth/data/app_constant/constant.dart';
import 'package:wallet_app/features/auth/data/model/user_detail_model.dart';
import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';

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
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage secureStorage;
  final SharedPreferences preferences;

  AuthLocalDataSourceImpl({
    @required this.secureStorage,
    @required this.preferences,
  })  : assert(secureStorage != null),
        assert(preferences != null);

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
      debugPrint(ex.toString());
    }
  }

  @override
  Future delete() async {
    await preferences.remove(AuthPreferenceKeys.walletUser);
  }

  // User Details
  @override
  Future saveUserDetail(UserDetailModel user) async {
    final jsonString = json.encode(user.toJson());
    try {
      await preferences.setString(AuthPreferenceKeys.userDetails, jsonString);
    } catch (ex) {
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
      return UserDetailModel.fromJson(
          json.decode(value) as Map<String, dynamic>);
    } catch (ex) {
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
      debugPrint(ex.toString());
      throw CacheException();
    }
  }
}
