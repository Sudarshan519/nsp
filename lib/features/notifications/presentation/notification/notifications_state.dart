part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.loading() = _Loading;
  const factory NotificationsState.loadingWith(
      List<NotificationItem> offlinedata) = _LoadingWith;
  const factory NotificationsState.loaded(List<NotificationItem> newsData) =
      _Loaded;
  const factory NotificationsState.failureWithData(
      ApiFailure failure, List<NotificationItem> newsData) = _FailureWithData;
  const factory NotificationsState.failure(ApiFailure failure) = _Failure;
}
