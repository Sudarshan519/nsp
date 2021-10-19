class AuthApiEndpoints {
  static const postLogin = "/login/";
  static const appleLogin = "/login/apple/";
  static const facebookLogin = "/login/facebook/";
  static const googleLogin = "/login/google/";
  static const postRegister = "/register/";

  //for phone verification
  static const getPhoneOtp = "/phone/otp";
  static const verifyPhoneOtp = "/phone/verify/otp";

  //for email
  static const verifyEmail = "/email/verify/";
  static const emailActivationCode = "/email/activation/code/";

  //for password
  static const getNewVerificationCode = "/email/password/reset/code/";
  static const resetPassword = "/email/password/reset/";
  static const updatePassword = "/email/password/update/";
  static const refreshToken = "/token/refresh/";

  static const setMpin = "/phone/set/mpin";
  static const verifyMpin = "/phone/verify/mpin";
}

class AuthPreferenceKeys {
  static const walletUser = "wallet_user";
  static const userDetails = "user_details";
  static const appleUser = "apple_user";
  static const kycVerificationPromptDate = 'kyc_prompt_date';
  static const alert_location = 'alert_location';
  static const other_prefectures = 'other_prefectures';
  static const fcmToken = 'fcm_token';
  static const earthquake_threshold = 'earthquake_threshold';
  static const payment_authentication_prompt = 'payment_authentication_prompt';
  static const default_payment_auth_type = 'default_payment_auth_type';
}
