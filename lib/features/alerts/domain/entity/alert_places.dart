class AlertPlaces {
  AlertPlaces({
    required this.cities,
    required this.prefectures,
    required this.villages,
  });

  final List<Place> cities;
  final List<Place> prefectures;
  final List<Place> villages;
}

class Place {
  Place({
    required this.type,
    required this.villageCode,
    required this.nameEn,
    required this.prefectureCode,
    required this.regionCode,
    required this.cityCode,
  });
  final String type;
  final int villageCode;
  final String nameEn;
  final int prefectureCode;
  final int regionCode;
  final int cityCode;
}

class PlaceType {
  static const city = 'city';
  static const prefecture = 'prefecture';
  static const village = 'village';
}
