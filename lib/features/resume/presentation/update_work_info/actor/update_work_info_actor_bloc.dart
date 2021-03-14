import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_work_info.dart';

part 'update_work_info_actor_event.dart';
part 'update_work_info_actor_state.dart';
part 'update_work_info_actor_bloc.freezed.dart';

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
      changedTypeOfCompany: (e) async* {
        yield _mapChangeTypeOfCompanyToState(e);
      },
      changedStartedYear: (e) async* {
        yield _mapChangeStartedYearToState(e);
      },
      changedStartedMonth: (e) async* {
        yield _mapChangeStartedMonthToState(e);
      },
      changedEndYear: (e) async* {
        yield _mapChangeEndYearToState(e);
      },
      changedEndMonth: (e) async* {
        yield _mapChangeEndMonthToState(e);
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

  UpdateWorkInfoActorState _mapChangeTypeOfCompanyToState(
      _ChangedTypeOfCompany _changedTypeOfCompany) {
    return state.copyWith(
      companyType: _changedTypeOfCompany.type,
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

  UpdateWorkInfoActorState _mapChangeStartedMonthToState(
      _ChangedStartedMonth _changedStartedMonth) {
    return state.copyWith(
      startedMonth: _changedStartedMonth.month,
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

  UpdateWorkInfoActorState _mapChangeEndMonthToState(
      _ChangedEndMonth _changedEndMonth) {
    return state.copyWith(
      endMonth: _changedEndMonth.month,
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
        companyType: workHistory.companyType ?? "",
        startedYear: workHistory.startYear ?? "",
        startedMonth: workHistory.startMonth ?? "",
        endYear: workHistory.endYear ?? "",
        endMonth: workHistory.endMonth ?? "",
        typeOfCompanyList: _setInitialState.typeOfCompanyList ?? [],
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
        companyName: state.nameOfComapny,
        companyType: state.companyType,
        startYear: state.startedYear,
        startMonth: state.startedMonth,
        endMonth: state.endMonth,
        endYear: state.endYear,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
