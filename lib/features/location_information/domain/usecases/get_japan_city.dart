import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@lazySingleton
class GetJapanCity {
  final LocationInformationRepositoryProtocol repository;

  GetJapanCity({
    @required this.repository,
  });

  Future<List<String>> call(String prefecture) async {
    if (prefecture == null) {
      return [];
    }

    if (prefecture.isEmpty) {
      return [];
    }

    final result = await repository.getJapanCities();

    return result.fold((failure) => [], (list) {
      final cities = list
          .where((element) =>
              element.prefecture.toLowerCase() == prefecture.toLowerCase())
          .map((item) => item.cityNameEn);
      return cities.toList();
    });
  }
}
