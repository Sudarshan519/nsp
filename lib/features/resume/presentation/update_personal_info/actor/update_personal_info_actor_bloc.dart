import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_personal_info.dart';
import 'package:wallet_app/utils/get_age.dart';

part 'update_personal_info_actor_event.dart';
part 'update_personal_info_actor_state.dart';
part 'update_personal_info_actor_bloc.freezed.dart';

class UpdatePersonalInfoActorBloc
    extends Bloc<UpdatePersonalInfoActorEvent, UpdatePersonalInfoActorState> {
  final UpdatePersonalInfo updatePersonalInfo;
  PersonalInfo? _personalInfo;
  String? _lang;

  UpdatePersonalInfoActorBloc({
    required this.updatePersonalInfo,
  }) : super(UpdatePersonalInfoActorState.initial());

  @override
  Stream<UpdatePersonalInfoActorState> mapEventToState(
    UpdatePersonalInfoActorEvent event,
  ) async* {
    yield* event.map(
      setInitialState: (e) async* {
        yield* _mapsetInitialState(e);
      },
      changeFirstName: (e) async* {
        yield _mapChangeFirstNameToState(e);
      },
      changeLastName: (e) async* {
        yield _mapChangeLastNameToState(e);
      },
      changeFuriganaName: (e) async* {
        yield _mapChangeFuriganaNameToState(e);
      },
      changeProfession: (e) async* {
        yield _mapChangeProfessionToState(e);
      },
      changeDob: (e) async* {
        yield _mapChangeDobToState(e);
      },
      changeAge: (e) async* {
        yield _mapChangeAgeToState(e);
      },
      changeGender: (e) async* {
        yield _mapChangeGenderToState(e);
      },
      changeNationality: (e) async* {
        yield _mapChangeNationalityToState(e);
      },
      changeEmail: (e) async* {
        yield _mapChangeEmailToState(e);
      },
      changePhone: (e) async* {
        yield _mapChangePhoneToState(e);
      },
      save: (e) async* {
        yield* _mapSaveToState(e);
      },
    );
  }

  Stream<UpdatePersonalInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );

    final userInfo = _setInitialState.info;
    _lang = _setInitialState.lang;

    String _age = getAge(userInfo.dob ?? '');

    List<String> _listOfGender = ["Male", "Female"];
    String _gender = userInfo.gender ?? '';

    if (_lang == "jp") {
      _listOfGender = ["男性", "女性"];

      if (_gender.toLowerCase() == "male") {
        _gender = "男性";
      }

      if (_gender.toLowerCase() == "female") {
        _gender = "女性";
      }
    }

    if (userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        key: UniqueKey(),
        firstName: userInfo.firstName ?? "",
        lastName: userInfo.lastName ?? "",
        furigana: userInfo.furigana ?? "",
        profession: userInfo.profession ?? "",
        dob: userInfo.dob ?? "",
        age: _age,
        gender: userInfo.gender ?? "",
        nationality: userInfo.nationality ?? "",
        email: userInfo.email ?? "",
        phone: userInfo.contPhone ?? "",
        listOfNationality: _setInitialState.listOfNationality,
        listOfProfession: _setInitialState.listOfProfession,
        listOfGender: _listOfGender,
        isSubmitting: false,
        hasSetInitialData: true,
        failureOrSuccessOption: none(),
      );
    }
  }

  UpdatePersonalInfoActorState _mapChangeFirstNameToState(
      _ChangeFirstName _changeFirstName) {
    return state.copyWith(
      firstName: _changeFirstName.name,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeLastNameToState(
      _ChangeLastName _changeLastName) {
    return state.copyWith(
      lastName: _changeLastName.name,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeFuriganaNameToState(
      _ChangeFuriganaName _changeFuriganaName) {
    return state.copyWith(
      furigana: _changeFuriganaName.name,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeProfessionToState(
      _ChangeProfession _changeProfession) {
    return state.copyWith(
      profession: _changeProfession.profession,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeDobToState(_ChangeDob _changeDob) {
    return state.copyWith(
      dob: _changeDob.dob,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeAgeToState(_ChangeAge _changeAge) {
    return state.copyWith(
      age: _changeAge.age,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeGenderToState(
      _ChangeGender _changeGender) {
    return state.copyWith(
      gender: _changeGender.gender,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeNationalityToState(
      _ChangeNationality _changeNationality) {
    return state.copyWith(
      nationality: _changeNationality.nationality,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeEmailToState(
      _ChangeEmail _changeEmail) {
    return state.copyWith(
      email: _changeEmail.email,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangePhoneToState(
      _ChangePhone _changePhone) {
    return state.copyWith(
      phone: _changePhone.phone,
      hasSetInitialData: false,
      failureOrSuccessOption: none(),
    );
  }

  Stream<UpdatePersonalInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    failureOrSuccess = await updatePersonalInfo(
      UpdatePersonalInfoParams(
        lang: _lang ?? 'en',
        firstName: state.firstName,
        lastName: state.lastName,
        furigana: state.furigana,
        profession: state.profession,
        dob: state.dob,
        age: state.age,
        gender: state.gender,
        nationality: state.nationality,
        email: state.email,
        phone: state.phone,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      hasSetInitialData: false,
      failureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
