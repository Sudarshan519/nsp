import 'package:dartz/dartz.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/notifications/domain/entity/notifications.dart';
import 'package:wallet_app/features/notifications/domain/usecase/get_notifications.dart';

abstract class NotificationRepository {
  Future<Either<ApiFailure, Notification>> getNotifications(
      GetNotificationParam params);
}
