class AppConstants {
  static const someThingWentWrong =
      "Unfortunately something went wrong. Please try again later.";
  static const cancelledByUser = "The process is cancelled by user.";

  static const noNetwork = "Looks like you are not connected to the internet";

  static const codeErrorMessage =
      "Please use code in your email to activate your account";

  static const resumeDownloadStarted = "Your resume download has been started.";
  static const resumeShareStarted = "Fetching your resume...";
  static const resumeDownloading = "Resume Downloading";
  static const resumeDownloadCompleted = "Resume Downloaded";
  static const resumeDownloadMessage =
      "You can close this window. The download will be completed in background and a notification will indicate the completion of the download.";
  static const resumeDownloadCompletedMessage =
      "Your file has been successfully downloaded and saved in your local storage. Thank you.";

  static const signUpCompleteTitle = "Sign up completed";
  static const signUpCompleteMessage =
      "Successfully registered a new user. Please Use code in your email to activate account.";
  static const verificationCompletedTitle = "Verification completed";
  static const verificationCompletedMessage =
      "Successfully verified. Please relogin.";

  static const topUpSuccessTitle = "Topup completed";
  static const topUpSuccessMessage =
      "Your top up request have been successfully completed. Thank you.";

  static const paymentSuccessTitle = "Payment completed";
  static const paymentSuccessMessage =
      "Your payment request have been successfully completed. Thank you.";

  static const redeemSuccessTitle = "Redeem completed";
  static const redeemSuccessMessage =
      "You have successfully redeem the coupon. Thank you.";
}

class Values {
  static const int MIN_RECHARGE = 10; //NPR
  static const int MAX_RECHARGE = 5000; //NPR
  static const List<String> GENDER = ['Male', 'Female'];
  static const List<String> PAYMENT_PURPOSE = [
    'Utilities',
    'Partner Services',
    'Bill Payments',
    'Others',
  ];
  static const List<String> MARITIAL_STATUS = [
    'Married',
    'Unmarried',
    'Divorced',
    'Single',
    'Widow'
  ];
  static const List<String> MONTHS = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
}
