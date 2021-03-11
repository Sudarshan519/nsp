class AuthApiEndpoints {
  static const postLogin = "/login/";
  static const postRegister = "/register/";
  static const verifyEmail = "/email/verify/";
  static const getNewVerificationCode = "/email/password/reset/code/";
  static const resetPassword = "/email/password/reset/";
}

class AuthPreferenceKeys {
  static const walletUser = "wallet_user";
  static const userDetails = "user_details";
  static const appleUser = "apple_user";
}
