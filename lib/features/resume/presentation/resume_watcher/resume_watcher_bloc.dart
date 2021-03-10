import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/resume.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';

part 'resume_watcher_event.dart';
part 'resume_watcher_state.dart';
part 'resume_watcher_bloc.freezed.dart';

@injectable
class ResumeWatcherBloc extends Bloc<ResumeWatcherEvent, ResumeWatcherState> {
  ResumeWatcherBloc() : super(ResumeWatcherState.initial());

  @override
  Stream<ResumeWatcherState> mapEventToState(
    ResumeWatcherEvent event,
  ) async* {
    yield* event.map(
      loading: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
      },
      setResumeData: (e) async* {
        yield state.copyWith(
          info: e.data.personalInfo ?? const PersonalInfo(),
          academics: e.data.academicHistory ?? [],
          works: e.data.workHistory ?? [],
          qualifications: e.data.qualificationHistory ?? [],
          isLoading: false,
        );
      },
    );
  }
}
