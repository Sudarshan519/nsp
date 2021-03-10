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
      currPostalCode: params.postalCode,
      currPrefecture: params.prefecture,
      currCity: params.city,
      currAddress: params.address,
      currPhone: params.phone,
    );

    return repository.updateAddress(data: userData);
  }
}

class UpdateAddressParams {
  UpdateAddressParams({
    @required this.postalCode,
    @required this.prefecture,
    @required this.city,
    @required this.address,
    @required this.phone,
  });

  final String postalCode;
  final String prefecture;
  final String city;
  final String address;
  final String phone;
}
