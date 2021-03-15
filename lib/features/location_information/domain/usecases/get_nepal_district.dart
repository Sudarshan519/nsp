import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/location_information/domain/repository/location_information_repositories.dart';

@lazySingleton
class GetNepalDistrict {
  final LocationInformationRepositoryProtocol repository;

  GetNepalDistrict({
    @required this.repository,
  });

  Future<List<String>> call() async {
    final result = await repository.getNepalDistrice();
    return result.fold((failure) => [], (list) => list);
  }
}
