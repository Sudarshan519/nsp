import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@lazySingleton
class GetPrefecture {
  final LocationInformationRepositoryProtocol repository;

  GetPrefecture({
    @required this.repository,
  });

  Future<List<String>> call() async {
    final result = await repository.getPrefectures();

    return result.fold(
      (failure) => [],
      (list) {
        final listOfPrefecture = list.map((item) {
          final prefecture = item.keyEn;
          final prefectureName = prefecture.split(" ");
          return prefectureName.first;
        });
        return listOfPrefecture.toList();
      },
    );
  }
}
