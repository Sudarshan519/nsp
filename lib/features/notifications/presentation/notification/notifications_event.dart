part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.fetchNotificationData() = _FetchNotification;
  const factory NotificationsEvent.pullToRefresh() = _PullToRefresh;
  const factory NotificationsEvent.loadTransaction(int txnId) =
      _LoadTransaction;
}
