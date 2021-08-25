class LoadBalanceApiEndpoints {
  static const getListOfPaymentTypes = "/topup/payment_methods";

  static const stripeTopup = "/topup/stripe";
  static const stripeRefund = "$stripeTopup/refund";

  static const deleteCreditCard = "/topup/delete/credit_card/";

  static const verifyImepayTopup = "/topup/imepay/verify";
  static const verifyEsewaTopup = "/topup/esewa/verify";
  static const verifyKhaltiTopup = "/topup/khalti/verify";

  static const prabhuPayInitiate = "/topup/prabhupay/initiate";
}
