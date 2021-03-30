import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_other_info.dart';

part 'update_other_info_actor_event.dart';
part 'update_other_info_actor_state.dart';
part 'update_other_info_actor_bloc.freezed.dart';

class UpdateOtherInfoActorBloc
    extends Bloc<UpdateOtherInfoActorEvent, UpdateOtherInfoActorState> {
  final UpdateOtherInfo updateOtherInfo;
  PersonalInfo _personalInfo;

  UpdateOtherInfoActorBloc({
    @required this.updateOtherInfo,
  }) : super(UpdateOtherInfoActorState.initial());

  @override
  Stream<UpdateOtherInfoActorState> mapEventToState(
    UpdateOtherInfoActorEvent event,
  ) async* {
    yield* event.map(
      changeLanguages: (e) async* {
        yield _mapChangeLanguagesToState(e);
      },
      changeJLPTLevel: (e) async* {
        yield _mapChangeJLPTLevelToState(e);
      },
      changeSelfPR: (e) async* {
        yield _mapChangeSelfPRToState(e);
      },
      changeMotivationsSpecialSkills: (e) async* {
        yield _mapChangeMotivationsSpecialSkillsToState(e);
      },
      changeWorkinHours: (e) async* {
        yield _mapChangeWorkinHoursToState(e);
      },
      changeWorkingMinutes: (e) async* {
        yield _mapChangeWorkingMinutesToState(e);
      },
      changeNumberOfDependent: (e) async* {
        yield _mapChangeNumberOfDependentToState(e);
      },
      changeIsSpouse: (e) async* {
        yield _mapChangeIsSpouseToState(e);
      },
      changeIsSpouseSupportObligation: (e) async* {
        yield _mapChangeIsSpouseSupportObligationToState(e);
      },
      changeSpecialConditions: (e) async* {
        yield _mapChangeSpecialConditionsToState(e);
      },
      setInitialState: (e) async* {
        yield* _mapsetInitialState(e);
      },
      save: (e) async* {
        yield* _mapSaveToState(e);
      },
    );
  }

  UpdateOtherInfoActorState _mapChangeLanguagesToState(
      _ChangeLanguages _changeLanguages) {
    return state.copyWith(
      languages: _changeLanguages.languages,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeJLPTLevelToState(
      _ChangeJLPTLevel _changeJLPTLevel) {
    return state.copyWith(
      JLPTLevel: _changeJLPTLevel.JLPTLevel,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeSelfPRToState(
      _ChangeSelfPR _changeSelfPR) {
    return state.copyWith(
      selfPR: _changeSelfPR.selfPR,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeMotivationsSpecialSkillsToState(
      _ChangeMotivationsSpecialSkills _changeMotivationsSpecialSkills) {
    return state.copyWith(
      motivationsSpecialSkills:
          _changeMotivationsSpecialSkills.motivationsSpecialSkills,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeWorkinHoursToState(
      _ChangeWorkinHours _changeWorkinHours) {
    return state.copyWith(
      workinHours: _changeWorkinHours.hours,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeWorkingMinutesToState(
      _ChangeWorkingMinutes _changeWorkingMinutes) {
    return state.copyWith(
      workingMinutes: _changeWorkingMinutes.minutes,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeNumberOfDependentToState(
      _ChangeNumberOfDependent _changeNumberOfDependent) {
    return state.copyWith(
      numberOfDependent: _changeNumberOfDependent.numberOfDependent,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeIsSpouseToState(
      _ChangeIsSpouse _changeIsSpouse) {
    return state.copyWith(
      isSpouse: _changeIsSpouse.isSpouse,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeIsSpouseSupportObligationToState(
      _ChangeIsSpouseSupportObligation _changeIsSpouseSupportObligation) {
    return state.copyWith(
      isSpouseSupportObligation:
          _changeIsSpouseSupportObligation.isSpouseSupportObligation,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeSpecialConditionsToState(
      _ChangeSpecialConditions _changeSpecialConditions) {
    return state.copyWith(
      specialConditions: _changeSpecialConditions.specialConditions,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateOtherInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    final userInfo = _setInitialState.info;
    if (userInfo != null && userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        languages: userInfo.knownLanguages,
        JLPTLevel: userInfo.jlpt ?? "",
        selfPR: userInfo.selfPr ?? "",
        motivationsSpecialSkills: userInfo.extraPoint ?? "",
        workinHours: userInfo.workingHoursOnly ?? "",
        workingMinutes: userInfo.workingMinutesOnly ?? "",
        numberOfDependent: userInfo.dependentsExceptSpouse ?? "",
        isSpouse: userInfo.spouse ?? "",
        isSpouseSupportObligation: userInfo.spouseSupportObligation ?? "",
        specialConditions: userInfo.specialConditions ?? "",
      );
    }
  }

  Stream<UpdateOtherInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    failureOrSuccess = await updateOtherInfo(
      UpdateOtherInfoParams(
        languages: state.languages,
        JLPTLevel: state.JLPTLevel,
        selfPR: state.selfPR,
        motivationsSpecialSkills: state.motivationsSpecialSkills,
        workinHours: state.workinHours,
        workingMinutes: state.workingMinutes,
        numberOfDependent: state.numberOfDependent,
        isSpouse: state.isSpouse,
        isSpouseSupportObligation: state.isSpouseSupportObligation,
        specialConditions: state.specialConditions,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
