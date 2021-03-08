import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';

part 'update_personal_info_watcher_event.dart';
part 'update_personal_info_watcher_state.dart';
part 'update_personal_info_watcher_bloc.freezed.dart';

@injectable
class UpdatePersonalInfoWatcherBloc extends Bloc<UpdatePersonalInfoWatcherEvent,
    UpdatePersonalInfoWatcherState> {
  UpdatePersonalInfoWatcherBloc() : super(const _Loading());

  @override
  Stream<UpdatePersonalInfoWatcherState> mapEventToState(
    UpdatePersonalInfoWatcherEvent event,
  ) async* {
    yield* event.map(setPersonalInfo: (e) async* {
      yield _Loaded(e.info);
    });
  }
}
