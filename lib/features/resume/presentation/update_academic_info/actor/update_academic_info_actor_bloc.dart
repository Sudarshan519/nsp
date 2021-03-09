import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_academics_info.dart';

part 'update_academic_info_actor_event.dart';
part 'update_academic_info_actor_state.dart';
part 'update_academic_info_actor_bloc.freezed.dart';

@injectable
class UpdateAcademicInfoActorBloc
    extends Bloc<UpdateAcademicInfoActorEvent, UpdateAcademicInfoActorState> {
  final UpdateAcadamicInfo updateAcadamicInfo;

  AcademicHistory _academicHistory;

  UpdateAcademicInfoActorBloc({
    @required this.updateAcadamicInfo,
  }) : super(UpdateAcademicInfoActorState.initial());

  @override
  Stream<UpdateAcademicInfoActorState> mapEventToState(
    UpdateAcademicInfoActorEvent event,
  ) async* {
    yield* event.map(
      changedNameOfInstitute: (e) async* {
        yield _mapChangeNameOfInstituteToState(e);
      },
      changedYearOfEnroll: (e) async* {
        yield _mapChangeYearOfEnrollToState(e);
      },
      changedYearOfCompletion: (e) async* {
        yield _mapChangeYearOfCompletionToState(e);
      },
      changedMonthOfEnroll: (e) async* {
        yield _mapChangeMonthOfEnrollToState(e);
      },
      changedMonthOfCompletion: (e) async* {
        yield _mapChangeMonthOfCompletionToState(e);
      },
      setInitialState: (e) async* {
        yield* _mapsetInitialState(e);
      },
      save: (e) async* {
        yield* _mapSaveToState(e);
      },
    );
  }

  UpdateAcademicInfoActorState _mapChangeNameOfInstituteToState(
      _ChangedNameOfInstitute _changedNameOfInstitute) {
    return state.copyWith(
      nameOfInstitute: _changedNameOfInstitute.institute,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAcademicInfoActorState _mapChangeYearOfEnrollToState(
      _ChangedYearOfEnroll _changedYearOfEnroll) {
    return state.copyWith(
      yearOFEnroll: _changedYearOfEnroll.year,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAcademicInfoActorState _mapChangeMonthOfEnrollToState(
      _ChangedMonthOfEnroll _changedMonthOfEnroll) {
    return state.copyWith(
      monthOfEnroll: _changedMonthOfEnroll.month,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAcademicInfoActorState _mapChangeYearOfCompletionToState(
      _ChangedYearOfCompletion _changedYearOfCompletion) {
    return state.copyWith(
      yearOfCpmpletion: _changedYearOfCompletion.year,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAcademicInfoActorState _mapChangeMonthOfCompletionToState(
      _ChangedMonthOfCompletion _changedMonthOfCompletion) {
    return state.copyWith(
      monthOfCompletion: _changedMonthOfCompletion.month,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateAcademicInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    final acadimicInfo = _setInitialState.academicHistory;
    if (acadimicInfo != null && acadimicInfo != _academicHistory) {
      _academicHistory = acadimicInfo;
      yield state.copyWith(
        nameOfInstitute: acadimicInfo.institute ?? "",
        yearOFEnroll: acadimicInfo.startYear ?? "",
        monthOfEnroll: acadimicInfo.startMonth ?? "",
        yearOfCpmpletion: acadimicInfo.completionYear ?? "",
        monthOfCompletion: acadimicInfo.completionMonth ?? "",
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  Stream<UpdateAcademicInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    failureOrSuccess = await updateAcadamicInfo(
      UpdateAcadamicInfoParams(
        id: _academicHistory.id,
        insutitute: state.nameOfInstitute,
        startYear: state.yearOFEnroll,
        startMonth: state.monthOfEnroll,
        completionYear: state.yearOfCpmpletion,
        completionMonth: state.monthOfCompletion,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
