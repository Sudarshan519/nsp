import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';

part 'update_academic_info_watcher_event.dart';
part 'update_academic_info_watcher_state.dart';
part 'update_academic_info_watcher_bloc.freezed.dart';

class UpdateAcademicInfoWatcherBloc extends Bloc<UpdateAcademicInfoWatcherEvent,
    UpdateAcademicInfoWatcherState> {
  AcademicHistory _academicHistory;

  UpdateAcademicInfoWatcherBloc()
      : super(const UpdateAcademicInfoWatcherState.loading());

  @override
  Stream<UpdateAcademicInfoWatcherState> mapEventToState(
    UpdateAcademicInfoWatcherEvent event,
  ) async* {
    yield* event.map(
      setAcademicHistory: (e) async* {
        final academicHistory = e.academicHistory;
        if (academicHistory != null && academicHistory != _academicHistory) {
          yield _Loaded(academicHistory);
          _academicHistory = academicHistory;
        }
      },
      changeToLoadingState: (e) async* {
        yield const _Loading();
      },
    );
  }
}
