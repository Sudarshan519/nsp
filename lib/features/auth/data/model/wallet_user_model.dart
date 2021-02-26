import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/auth/domain/entities/wallet_user.dart';

class WalletUserModel extends WalletUser {
  const WalletUserModel({
    @required bool status,
    @required String accessToken,
    @required String refreshToken,
  }) : super(
          status: status,
          // applicantId: applicantId,
          accessToken: accessToken,
          refreshToken: refreshToken,
        );

  factory WalletUserModel.fromJSON(Map<String, dynamic> json) {
    return WalletUserModel(
      status: json['status'] as bool,
      accessToken: json['token']['access'] as String,
      refreshToken: json['token']['refresh'] as String,
    );
  }

  factory WalletUserModel.fromInsuranceUser(WalletUserModel user) {
    return WalletUserModel(
      status: user.status,
      accessToken: user.accessToken,
      refreshToken: user.refreshToken,
    );
  }

  factory WalletUserModel.fromRefreshTokenApi(Map<String, dynamic> json) {
    return WalletUserModel(
      status: json['status'] as bool,
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
    );
  }

  factory WalletUserModel.fromUnVerifiedUser() {
    return const WalletUserModel(
      status: false,
      accessToken: "",
      refreshToken: "",
    );
  }

  Map<String, dynamic> toJSON() {
    return {
      "status": status,
      "access_token": accessToken,
      "refresh_token": refreshToken,
    };
  }

  factory WalletUserModel.fromLocalStorage(Map<String, dynamic> json) {
    return WalletUserModel(
      status: json['status'] as bool,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );
  }
}
