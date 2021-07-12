import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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
  PersonalInfo? _personalInfo;
  String? _lang;

  UpdateOtherInfoActorBloc({
    required this.updateOtherInfo,
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
      changeHobbies: (e) async* {
        yield _mapChangeHobbiesToState(e);
      },
      changeSkills: (e) async* {
        yield _mapChangeSkillsToState(e);
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
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeJLPTLevelToState(
      _ChangeJLPTLevel _changeJLPTLevel) {
    return state.copyWith(
      JLPTLevel: _changeJLPTLevel.JLPTLevel,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeSelfPRToState(
      _ChangeSelfPR _changeSelfPR) {
    return state.copyWith(
      selfPR: _changeSelfPR.selfPR,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeMotivationsSpecialSkillsToState(
      _ChangeMotivationsSpecialSkills _changeMotivationsSpecialSkills) {
    return state.copyWith(
      motivationsSpecialSkills:
          _changeMotivationsSpecialSkills.motivationsSpecialSkills,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeHobbiesToState(
      _ChangeHobbies _changeHobbies) {
    return state.copyWith(
      hobbies: _changeHobbies.hobbies,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeSkillsToState(
      _ChangeSkills _changeSkills) {
    return state.copyWith(
      skills: _changeSkills.skills,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeWorkinHoursToState(
      _ChangeWorkinHours _changeWorkinHours) {
    return state.copyWith(
      workinHours: _changeWorkinHours.hours,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeWorkingMinutesToState(
      _ChangeWorkingMinutes _changeWorkingMinutes) {
    return state.copyWith(
      workingMinutes: _changeWorkingMinutes.minutes,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeNumberOfDependentToState(
      _ChangeNumberOfDependent _changeNumberOfDependent) {
    return state.copyWith(
      numberOfDependent: _changeNumberOfDependent.numberOfDependent,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeIsSpouseToState(
      _ChangeIsSpouse _changeIsSpouse) {
    return state.copyWith(
      isSpouse: _changeIsSpouse.isSpouse,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeIsSpouseSupportObligationToState(
      _ChangeIsSpouseSupportObligation _changeIsSpouseSupportObligation) {
    return state.copyWith(
      isSpouseSupportObligation:
          _changeIsSpouseSupportObligation.isSpouseSupportObligation,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdateOtherInfoActorState _mapChangeSpecialConditionsToState(
      _ChangeSpecialConditions _changeSpecialConditions) {
    return state.copyWith(
      specialConditions: _changeSpecialConditions.specialConditions,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  Stream<UpdateOtherInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final userInfo = _setInitialState.info;
    _lang = _setInitialState.lang;

    List<String> _listOfJLPTLevel = const [
      "N1",
      "N2",
      "N3",
      "N4",
      "N5",
      "NOT AVAILABLE",
    ];
    String _JLPTLeven = userInfo.jlpt ?? "";

    List<String> _listOfHourRate = const [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "Full-time",
    ];
    String _hourRate = userInfo.workingHoursOnly;

    List<String> _listOfYesNoOption = const [
      "Yes",
      "No",
    ];
    String _isSopuse = userInfo.spouse ?? "";
    String _spouseSupportObligation = userInfo.spouseSupportObligation ?? "";

    if (_lang == "jp") {
      _listOfJLPTLevel = const [
        "N1",
        "N2",
        "N3",
        "N4",
        "N5",
        "利用不可",
      ];

      if (_JLPTLeven.toUpperCase() == "NOT AVAILABLE") {
        _JLPTLeven = "利用不可";
      }

      _listOfHourRate = const [
        "0",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "フルタイム",
      ];
      if (_hourRate.toLowerCase() == "full-time") {
        _hourRate = "フルタイム";
      }

      _listOfYesNoOption = const [
        "はい",
        "いいえ",
      ];
      if (_isSopuse.toLowerCase() == "yes") {
        _isSopuse = "はい";
      }

      if (_isSopuse.toLowerCase() == "no") {
        _isSopuse = "いいえ";
      }

      if (_spouseSupportObligation.toLowerCase() == "yes") {
        _spouseSupportObligation = "はい";
      }

      if (_spouseSupportObligation.toLowerCase() == "no") {
        _spouseSupportObligation = "いいえ";
      }
    }

    if (userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        key: UniqueKey(),
        languages: userInfo.knownLanguages ?? [],
        JLPTLevel: _JLPTLeven,
        selfPR: userInfo.selfPr ?? "",
        motivationsSpecialSkills: userInfo.extraPoint ?? "",
        hobbies: userInfo.hobbies ?? [],
        skills: userInfo.skills ?? [],
        workinHours: _hourRate,
        workingMinutes: userInfo.workingMinutesOnly,
        numberOfDependent: userInfo.dependentsExceptSpouse ?? "",
        isSpouse: _isSopuse,
        isSpouseSupportObligation: _spouseSupportObligation,
        specialConditions: userInfo.specialConditions ?? "",
        knownLanguages: _setInitialState.listOfLanguages,
        listOfHobbies: _setInitialState.listOHobbies,
        listOfSkills: _setInitialState.listOfSkills,
        listOfJLPTLevel: _listOfJLPTLevel,
        listOfHourRate: _listOfHourRate,
        listOfYesNoOption: _listOfYesNoOption,
        hasSetInitialData: true,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
    }
  }

  Stream<UpdateOtherInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    failureOrSuccess = await updateOtherInfo(
      UpdateOtherInfoParams(
        lang: _lang ?? 'en',
        languages: state.languages,
        JLPTLevel: state.JLPTLevel,
        selfPR: state.selfPR,
        motivationsSpecialSkills: state.motivationsSpecialSkills,
        hobbies: state.hobbies,
        skills: state.skills,
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
      failureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
