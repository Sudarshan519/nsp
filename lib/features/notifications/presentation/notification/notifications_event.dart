part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.fetchNotificationData() = _FetchNewsData;
  const factory NotificationsEvent.pullToRefresh() = _PullToRefresh;
}
