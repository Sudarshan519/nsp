import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/exceptions/exceptions.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/logger/logger.dart';
import 'package:wallet_app/features/notifications/data/datasource/notification_remote_data_source.dart';
import 'package:wallet_app/features/notifications/domain/entity/notifications.dart';
import 'package:wallet_app/features/notifications/domain/repository/notification_repository.dart';
import 'package:wallet_app/features/notifications/domain/usecase/get_notifications.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationsRemoteDataSource dataSource;
  final Logger logger;

  NotificationRepositoryImpl({
    required this.dataSource,
    required this.logger,
  });

  @override
  Future<Either<ApiFailure, Notification>> getNotifications(
      GetNotificationParam params) async {
    try {
      return Right(await dataSource.getNotifications(params));
    } on ServerException catch (ex) {
      logger.log(
        className: "NotificationRepository",
        functionName: "getTransaction()",
        errorText: "Error on getting transaction data from data source",
        errorMessage: ex.toString(),
      );
      return Left(ApiFailure.serverError(message: ex.message));
    }
  }
}
