class AuthApiEndpoints {
  static const postLogin = "/login/";
  static const appleLogin = "/login/apple/";
  static const facebookLogin = "/login/facebook/";
  static const googleLogin = "/login/google/";
  static const postRegister = "/register/";
  static const verifyEmail = "/email/verify/";
  static const emailActivationCode = "/email/activation/code/";
  static const getNewVerificationCode = "/email/password/reset/code/";
  static const resetPassword = "/email/password/reset/";
  static const updatePassword = "/email/password/update/";
}

class AuthPreferenceKeys {
  static const walletUser = "wallet_user";
  static const userDetails = "user_details";
  static const appleUser = "apple_user";
  static const kycVerificationPromptDate = 'kyc_prompt_date';
  static const alert_location = 'alert_location';
  static const fcmToken = 'fcm_token';
}
