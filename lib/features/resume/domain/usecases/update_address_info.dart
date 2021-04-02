import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/repository/resume_repository.dart';

@injectable
class UpdateAddressInfo extends Usecase<ApiFailure, Unit, UpdateAddressParams> {
  final ResumeRepository repository;
  final NetworkInfo networkInfo;

  UpdateAddressInfo({
    @required this.repository,
    @required this.networkInfo,
  }) : assert(repository != null);

  @override
  Future<Either<ApiFailure, Unit>> call(UpdateAddressParams params) async {
    final isConnected = await networkInfo.isConnected;

    if (!isConnected) {
      return const Left(ApiFailure.noInternetConnection());
    }

    final userData = PersonalInfo(
      currCountry: params.currCountry,
      currPostalCode: params.currPostalCode,
      currPrefecture: params.currPrefecture,
      currCity: params.currCity,
      currAddress: params.currAddress,
      currPhone: params.currPhone,
      contCountry: params.contCountry,
      contPostalCode: params.contPostalCode,
      contPrefecture: params.contPrefecture,
      contCity: params.contCity,
      contAddress: params.contAddress,
      contPhone: params.contPhone,
    );

    return repository.updateAddress(
      data: userData,
      lang: params.lang,
    );
  }
}

class UpdateAddressParams {
  UpdateAddressParams({
    @required this.lang,
    @required this.currCountry,
    @required this.currPostalCode,
    @required this.currPrefecture,
    @required this.currCity,
    @required this.currAddress,
    @required this.currPhone,
    @required this.contCountry,
    @required this.contPostalCode,
    @required this.contPrefecture,
    @required this.contCity,
    @required this.contAddress,
    @required this.contPhone,
  });

  final String lang;

  final String currCountry;
  final String currPostalCode;
  final String currPrefecture;
  final String currCity;
  final String currAddress;
  final String currPhone;

  final String contCountry;
  final String contPostalCode;
  final String contPrefecture;
  final String contCity;
  final String contAddress;
  final String contPhone;
}
