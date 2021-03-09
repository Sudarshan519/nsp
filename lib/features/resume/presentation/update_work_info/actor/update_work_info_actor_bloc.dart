import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_work_info.dart';

part 'update_work_info_actor_event.dart';
part 'update_work_info_actor_state.dart';
part 'update_work_info_actor_bloc.freezed.dart';

@injectable
class UpdateWorkInfoActorBloc
    extends Bloc<UpdateWorkInfoActorEvent, UpdateWorkInfoActorState> {
  final UpdateWorkInfo updateWorkInfo;
  WorkHistory _workHistory;
  UpdateWorkInfoActorBloc({
    @required this.updateWorkInfo,
  }) : super(UpdateWorkInfoActorState.initial());

  @override
  Stream<UpdateWorkInfoActorState> mapEventToState(
    UpdateWorkInfoActorEvent event,
  ) async* {
    yield* event.map(
      changedNameOfCompany: (e) async* {
        yield _mapChangeNameOfCompantToState(e);
      },
      changedDesignation: (e) async* {
        yield _mapChangeDesignationToState(e);
      },
      changedStartedYear: (e) async* {
        yield _mapChangeStartedYearToState(e);
      },
      changedEndYear: (e) async* {
        yield _mapChangeEndYearToState(e);
      },
      setInitialState: (e) async* {
        yield* _mapsetInitialState(e);
      },
      save: (e) async* {
        yield* _mapSaveToState(e);
      },
    );
  }

  UpdateWorkInfoActorState _mapChangeNameOfCompantToState(
      _ChangedNameOfCompany _changedNameOfCompany) {
    return state.copyWith(
      nameOfComapny: _changedNameOfCompany.company,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateWorkInfoActorState _mapChangeDesignationToState(
      _ChangedDesignation _changedDesignation) {
    return state.copyWith(
      designation: _changedDesignation.designation,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateWorkInfoActorState _mapChangeStartedYearToState(
      _ChangedStartedYear _changedStartedYear) {
    return state.copyWith(
      startedYear: _changedStartedYear.year,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateWorkInfoActorState _mapChangeEndYearToState(
      _ChangedEndYear _changedEndYear) {
    return state.copyWith(
      endYear: _changedEndYear.year,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateWorkInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    final workHistory = _setInitialState.workHistory;
    if (workHistory != null && workHistory != _workHistory) {
      _workHistory = workHistory;
      yield state.copyWith(
        nameOfComapny: workHistory.companyName ?? "",
        // designation: workHistory.qua,
        startedYear: workHistory.startYear ?? "",
        endYear: workHistory.endYear ?? "",
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  Stream<UpdateWorkInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    failureOrSuccess = await updateWorkInfo(
      UpdateWorkInfoParams(
        id: _workHistory.id,
        insutitute: state.nameOfComapny,
        qualificationName: state.designation,
        startYear: state.startedYear,
        endYear: state.endYear,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
