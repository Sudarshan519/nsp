import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';

abstract class UtilityPaymentRepository {
  Future<Either<ApiFailure, Unit>> topupBalance({
    required String amount,
    required String number,
    required String type,
  });
}
