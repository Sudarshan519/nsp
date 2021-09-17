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
}

class UtilityPayementType {
  static const balanceTopup = 'topup_balance';
  static const mirai = 'mirai';
  static const electricity = 'electricity';
}
