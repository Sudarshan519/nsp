class UtilityPaymentsApiEndpoints {
  static const topup = "/mobile/topup/";

  //For Mirai
  static const getMiraiSubscription = "/available_services/package_list/mirai";
  static const payMiraiSubscription =
      "/available_services/purchase_package/mirai";

  //For Nea
  static const _nea = '/utility_payments/nea';
  static const neaOffices = '$_nea/get_branches';
  static const neaDetail = '$_nea/get_detail';
  static const neaPay = '$_nea/pay';

  //khanepani
  static const _khanePani = '/utility_payments/khanepani';
  static const khanepaniOffices = '$_khanePani/get_branches';
  static const khanepaniDetail = '$_khanePani/get_detail';
  static const khanepaniPay = '$_khanePani/pay';

  // Sim Tv
  static const _simTV = '/utility_payments/merotv';
  static const simTVEnquiry = '$_simTV/get_detail';
  static const simTVPay = '$_simTV/pay';

  // Dishhome Tv
  static const _dishhomeTV = '/utility_payments/dishhome';
  static const dishhomeTVEnquiry = '$_dishhomeTV/get_detail';
  static const dishhomeTVPay = '$_dishhomeTV/pay';
}

class UtilityPayementType {
  static const balanceTopup = 'topup_balance';
  static const mirai = 'mirai';
  static const electricity = 'electricity';
  static const khanepani = 'khanepani';
  static const merotv = 'merotv';
  static const dishhome = 'dishhome';
}
