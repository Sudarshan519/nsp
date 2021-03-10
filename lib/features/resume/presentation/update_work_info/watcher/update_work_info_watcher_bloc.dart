import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';

part 'update_work_info_watcher_event.dart';
part 'update_work_info_watcher_state.dart';
part 'update_work_info_watcher_bloc.freezed.dart';

class UpdateWorkInfoWatcherBloc
    extends Bloc<UpdateWorkInfoWatcherEvent, UpdateWorkInfoWatcherState> {
  WorkHistory _workHistory;
  UpdateWorkInfoWatcherBloc()
      : super(const UpdateWorkInfoWatcherState.loading());

  @override
  Stream<UpdateWorkInfoWatcherState> mapEventToState(
    UpdateWorkInfoWatcherEvent event,
  ) async* {
    yield* event.map(
      setWorkHistory: (e) async* {
        final workHistory = e.workHistory;
        if (workHistory != null && _workHistory != workHistory) {
          yield _Loaded(workHistory);
          _workHistory = workHistory;
        }
      },
      changeToLoadingState: (e) async* {
        yield const _Loading();
      },
    );
  }
}
