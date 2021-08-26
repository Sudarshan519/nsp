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
    required this.code,
    required this.nameEn,
    required this.prefectureCode,
    required this.regionCode,
    required this.cityCode,
  });

  final int code;
  final String nameEn;
  final int prefectureCode;
  final int regionCode;
  final int cityCode;
}
