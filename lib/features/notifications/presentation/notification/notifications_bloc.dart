import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/notifications/domain/usecase/get_notifications.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

@injectable
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc({
    required this.getNotifications,
  }) : super(const _Loading());

  final GetNotifications getNotifications;
  bool isFetching = false;
  int page = 1;
  bool hasReachedEnd = false;
  List<NotificationItem> data = [];

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      fetchNotificationData: (e) async* {
        if (hasReachedEnd) {
          yield _Loaded(data);
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
        data = [];
        yield const _Loading();
        yield* _mapFetchNotificationToState();
      },
    );
  }

  Stream<NotificationsState> _mapFetchNotificationToState() async* {
    if (data.isNotEmpty) {
      yield _LoadingWith(data);
    }

    final result = await getNotifications(GetNotificationParam(page: "$page"));
    yield result.fold(
      (failure) {
        isFetching = false;
        if (data.isEmpty) {
          return _FailureWithData(failure, data);
        } else {
          return _Failure(failure);
        }
      },
      (notifData) {
        isFetching = false;
        if (notifData.isEmpty) {
          hasReachedEnd = true;
        }
        //extracting pinned items
        final pinned = notifData.where((element) => element.isPinned).toList();

        //removing pinned items from list
        notifData.removeWhere((element) => element.isPinned);

        //adding pinned items to the beginning of list
        notifData = [...pinned, ...notifData];
        data.addAll(notifData);
        page = page + 1;
        return _Loaded(data);
      },
    );
  }
}
