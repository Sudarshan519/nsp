import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/network/newtork_info.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/notifications/domain/repository/notification_repository.dart';

@lazySingleton
class GetNotifications
    implements
        Usecase<ApiFailure, List<NotificationItem>, GetNotificationParam> {
  final NotificationRepository repository;
  final NetworkInfo networkInfo;

  GetNotifications({
    required this.repository,
    required this.networkInfo,
  });

  @override
  Future<Either<ApiFailure, List<NotificationItem>>> call(
      GetNotificationParam params) async {
    if (await networkInfo.isConnected) {
      final remoteData = await repository.getNotifications(params);
      return remoteData.fold(
        (failure) {
          return Left(failure);
        },
        (data) {
          return Right(data.notifications ?? []);
        },
      );
    } else {
      return const Left(ApiFailure.noInternetConnection());
    }
  }
}

class GetNotificationParam {
  final String? page;

  GetNotificationParam({
    required this.page,
  });
}
