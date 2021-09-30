import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/contact_us/data/data_source/contact_us_remote_data_surce.dart';
import 'package:wallet_app/features/contact_us/domain/repository/contact_us_repository.dart';
import 'package:wallet_app/features/contact_us/domain/use_case/contact_us.dart';

@LazySingleton(as: ContactUsRepository)
class ContactUsRepositoryImpl implements ContactUsRepository {
  final ContactUsRemoteDataSource dataSource;

  ContactUsRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<ApiFailure, Unit>> contactUs(ContactUsParams params) async {
    try {
      return Right(await dataSource.contactUs(params));
    } on ServerException catch (ex) {
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
