import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:wallet_app/features/location_information/data/model/country_model.dart';

abstract class LocationInformationLocalDataSourceProtocol {
  Future<List<CountryModel>> getCounties();
}

@LazySingleton(as: LocationInformationLocalDataSourceProtocol)
class LocationInformationLocalDataSource
    implements LocationInformationLocalDataSourceProtocol {
  final http.Client client;

  LocationInformationLocalDataSource({
    @required this.client,
  });

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

  Future<String> _getFile(String path) async {
    return rootBundle.loadString(path);
  }
}
