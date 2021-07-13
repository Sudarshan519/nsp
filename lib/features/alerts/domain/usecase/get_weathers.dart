import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';
import 'package:wallet_app/features/alerts/domain/repositories/alert_repository.dart';

@lazySingleton
class GetWeathers implements Usecase<ApiFailure, List<WeatherInfo>, NoParams> {
  final AlertRepository repository;
  final NetworkInfo networkInfo;

  GetWeathers({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<WeatherInfo>>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      return repository.getWeather();
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}
