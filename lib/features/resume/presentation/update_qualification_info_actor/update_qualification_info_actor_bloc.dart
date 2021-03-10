import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_qualification_info.dart';

part 'update_qualification_info_actor_event.dart';
part 'update_qualification_info_actor_state.dart';
part 'update_qualification_info_actor_bloc.freezed.dart';

class UpdateQualificationInfoActorBloc extends Bloc<
    UpdateQualificationInfoActorEvent, UpdateQualificationInfoActorState> {
  final UpdateQualificationInfo updateQualificationInfo;
  QualificationHistory _qualificationHistory;

  UpdateQualificationInfoActorBloc({
    @required this.updateQualificationInfo,
  }) : super(UpdateQualificationInfoActorState.initial());

  @override
  Stream<UpdateQualificationInfoActorState> mapEventToState(
    UpdateQualificationInfoActorEvent event,
  ) async* {
    yield* event.map(
      changedQualificationName: (e) async* {
        yield _mapChangedQualificationNameToState(e);
      },
      changedCertifiedYear: (e) async* {
        yield _mapChangedCertifiedYearToState(e);
      },
      changedCertifiedMonth: (e) async* {
        yield _mapChangedCartifiedMonthToState(e);
      },
      setInitialState: (e) async* {
        yield* _mapsetInitialState(e);
      },
      save: (e) async* {
        yield* _mapSaveToState(e);
      },
    );
  }

  UpdateQualificationInfoActorState _mapChangedQualificationNameToState(
      _ChangedQualificationName _changedQualificationName) {
    return state.copyWith(
      qualificationName: _changedQualificationName.name,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateQualificationInfoActorState _mapChangedCertifiedYearToState(
      _ChangedCertifiedYear _changedCertifiedYear) {
    return state.copyWith(
      certifiedYear: _changedCertifiedYear.year,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateQualificationInfoActorState _mapChangedCartifiedMonthToState(
      _ChangedCertifiedMonth _changedCertifiedMonth) {
    return state.copyWith(
      certifiedMonth: _changedCertifiedMonth.month,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateQualificationInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    final qualificationHistory = _setInitialState.qualificationHistory;
    if (qualificationHistory != null &&
        qualificationHistory != _qualificationHistory) {
      _qualificationHistory = qualificationHistory;
      yield state.copyWith(
        qualificationName: qualificationHistory.qualificationName ?? "",
        certifiedYear: qualificationHistory.certifiedYear ?? "",
        certifiedMonth: qualificationHistory.certifiedMonth ?? "",
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  Stream<UpdateQualificationInfoActorState> _mapSaveToState(
      _Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    failureOrSuccess = await updateQualificationInfo(
      UpdateQualificationInfoParams(
        id: _qualificationHistory.id,
        qualificationName: state.qualificationName,
        certifiedYear: state.certifiedYear,
        certifiedMonth: state.certifiedMonth,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
