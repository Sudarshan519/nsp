import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@lazySingleton
class GetCountries {
  final LocationInformationRepositoryProtocol repository;

  GetCountries({
    @required this.repository,
  });

  Future<List<String>> call() async {
    final result = await repository.getCountry();

    return result.fold((failure) => [], (list) {
      final countries = list.map((item) => item.countryName);
      return countries.toList();
    });
  }
}
