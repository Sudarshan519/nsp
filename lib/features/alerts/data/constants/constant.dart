class AlertApiEndpoints {
  static const _portableNewsApiPath = '/api/v1/portable-news';
  static const getEarthquakes = "$_portableNewsApiPath/earthquakes";
  static const getEarthquakeMap = "$_portableNewsApiPath/earthquake/map";
  static const getVolcanoes = "$_portableNewsApiPath/eruptions";
  static const getEarthquakesAndVolcanoes =
      "$_portableNewsApiPath/earthquakes-eruptions";
  static const getWeathers = "$_portableNewsApiPath/warnings";
  static const getListOfPlaces = '$_portableNewsApiPath/appsettings';
  static const getPlacefromGPS = '$_portableNewsApiPath/settings';
}

class AlertAppConstant {
  static const lang = "en";
  static const from = "0";
  static const to = "9";
  static const clientName = "PortableNews";
  static const clientToken = "8r3f7rsucI";
}
