part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.loading() = _Loading;
  const factory NotificationsState.loadingWith(
      List<NotificationItem> notificationData) = _LoadingWith;
  const factory NotificationsState.loaded(
      List<NotificationItem> notificationData) = _Loaded;
  const factory NotificationsState.failureWithData(
          ApiFailure failure, List<NotificationItem> notificationData) =
      _FailureWithData;
  const factory NotificationsState.failure(ApiFailure failure) = _Failure;
}
