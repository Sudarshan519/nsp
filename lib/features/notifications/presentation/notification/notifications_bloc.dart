import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/notifications/domain/usecase/get_notifications.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc({
    required this.getNotifications,
  }) : super(const _Loading());

  final GetNotifications getNotifications;
  bool isFetching = false;
  int page = 1;
  bool hasReachedEnd = false;
  List<NotificationItem> noitfData = [];

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      fetchNotificationData: (e) async* {
        if (hasReachedEnd) {
          yield _Loaded(noitfData);
        } else {
          isFetching = true;
          yield const _Loading();
          yield* _mapFetchNotificationToState();
        }
      },
      pullToRefresh: (e) async* {
        isFetching = true;
        hasReachedEnd = false;
        page = 1;
        noitfData = [];
        yield const _Loading();
        yield* _mapFetchNotificationToState();
      },
    );
  }

  Stream<NotificationsState> _mapFetchNotificationToState() async* {
    if (noitfData.isNotEmpty) {
      yield _LoadingWith(noitfData);
    }

    final result = await getNotifications(GetNotificationParam(page: "$page"));
    yield result.fold(
      (failure) {
        isFetching = false;
        if (noitfData.isEmpty) {
          return _FailureWithData(failure, noitfData);
        } else {
          return _Failure(failure);
        }
      },
      (newsData) {
        isFetching = false;
        if (newsData.isEmpty) {
          hasReachedEnd = true;
        }
        noitfData.addAll(newsData);
        page = page + 1;
        return _Loaded(noitfData);
      },
    );
  }
}
