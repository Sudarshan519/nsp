import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/contact_us/domain/use_case/contact_us.dart';

abstract class ContactUsRepository {
  Future<Either<ApiFailure, Unit>> contactUs(ContactUsParams params);
}
