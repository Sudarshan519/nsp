import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/features/location_information/data/model/country_model.dart';
import 'package:wallet_app/features/location_information/data/model/japan_city_model.dart';
import 'package:wallet_app/features/location_information/data/model/prefecture_model.dart';

abstract class LocationInformationLocalDataSourceProtocol {
  Future<List<PrefectureModel>> getPrefectures();
  Future<List<JapanCityModel>> getJapanCities();
  Future<List<CountryModel>> getCounties();
  Future<List<String>> getNepalDistric();
}

@LazySingleton(as: LocationInformationLocalDataSourceProtocol)
class LocationInformationLocalDataSource
    implements LocationInformationLocalDataSourceProtocol {
  final http.Client client;

  LocationInformationLocalDataSource({
    @required this.client,
  });

  @override
  Future<List<JapanCityModel>> getJapanCities() async {
    try {
      final listOFCityString = await _getFile(
          'lib/features/location_information/data/datasource/json/japan_cities.json');
      return japanCitiesModelFromJson(listOFCityString);
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<List<PrefectureModel>> getPrefectures() async {
    try {
      final listOfPrefectureString = await _getFile(
          'lib/features/location_information/data/datasource/json/prefectures.json');
      return prefectureModelModelFromJson(listOfPrefectureString);
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<List<CountryModel>> getCounties() async {
    try {
      final listOfPrefectureString = await _getFile(
          'lib/features/location_information/data/datasource/json/data.json');
      return countryModelModelFromJson(listOfPrefectureString);
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<List<String>> getNepalDistric() async {
    return [
      "achham",
      "agrghakanchi",
      "baglung",
      "bajhang",
      "bajura",
      "baitadi",
      "banke",
      "bara",
      "bardia",
      "bhaktapur",
      "bheri",
      "bhojpur",
      "chitwan",
      "dadeldhura",
      "dailekh",
      "dang",
      "darchula",
      "dhading",
      "dhankuta",
      "dhanusha",
      "dhawalagiri",
      "dolpa",
      "dolkha",
      "doti",
      "gorkha",
      "gulmi",
      "humla",
      "illam",
      "jajarkot",
      "jhapa",
      "janakpur",
      "jumla",
      "kailali",
      "kapilvastu",
      "kanchanpur",
      "kaski",
      "kathmandu",
      "kavrepalanchowk",
      "khotang",
      "koshi",
      "lalitpur",
      "lamjung",
      "lumbini",
      "mahakali",
      "mahottari",
      "makwanpur",
      "manang",
      "mechi",
      "morang",
      "mugu",
      "mustang",
      "myagdi",
      "nawalparasi",
      "narayani",
      "nuwakot",
      "okhaldhunga",
      "palpa",
      "panchthar",
      "parbat",
      "parsa",
      "pyuthan",
      "rapti",
      "ramechhap",
      "rasuwa",
      "rautahat",
      "rolpa",
      "rukum",
      "rupandehi",
      "sagarmatha",
      "salyan",
      "saptari",
      "sankhuwa",
      "sarlahi",
      "seti",
      "sindhupalchowk",
      "siraha",
      "sindhuli",
      "solukhumbu",
      "sunsari",
      "surkhet",
      "syangia",
      "tanahun",
      "taplejung",
      "terhathum",
      "udaypur"
    ];
  }

  Future<String> _getFile(String path) async {
    return rootBundle.loadString(path);
  }
}
