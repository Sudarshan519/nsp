enum HomeItemType {
  utility_payments,
  remit_service,
  resume,
  services,
  jp_manners,
  ad_banner,
  news,
  disaster_alert,
}

HomeItemType getHomeItemTypeString(String type) {
  final _type = 'HomeItemType.$type';
  return HomeItemType.values.firstWhere((f) => f.toString() == _type,
      orElse: () => HomeItemType.disaster_alert);
}
