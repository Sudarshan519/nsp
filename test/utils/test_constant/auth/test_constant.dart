import 'package:wallet_app/features/auth/data/model/wallet_user_model.dart';

class AuthTestConstant {
  static const VALID_FIRST_NAME = "first";
  static const VALID_LAST_NAME = "last";
  static const VALID_PHONE = "Phone";
  static const VALID_EMAIL = "asis.adh@gmail.com";
  static const VALID_PASSWORD = "Newitventure";
  static const VALID_CONFIRM_PASSWORD = "Newitventure";
  static const AUTH_TOKEN = "token";
  static const CREATED_GPS = "gps";

  static const WALLET_USER = WalletUserModel(
    status: true,
    accessToken: "access",
    refreshToken: "refresh",
  );

  static const WALLET_USER_WITH_STATUS_FALSE = WalletUserModel(
    status: false,
    accessToken: "",
    refreshToken: "",
  );
}
