import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_personal_info.dart';

part 'update_personal_info_actor_event.dart';
part 'update_personal_info_actor_state.dart';
part 'update_personal_info_actor_bloc.freezed.dart';

class UpdatePersonalInfoActorBloc
    extends Bloc<UpdatePersonalInfoActorEvent, UpdatePersonalInfoActorState> {
  final UpdatePersonalInfo updatePersonalInfo;
  PersonalInfo _personalInfo;
  String _lang;

  UpdatePersonalInfoActorBloc({
    @required this.updatePersonalInfo,
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
    final userInfo = _setInitialState.info;
    if (userInfo != null && userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        firstName: userInfo.firstName ?? "",
        lastName: userInfo.lastName ?? "",
        profession: userInfo.profession ?? "",
        dob: userInfo.dob ?? "",
        age: userInfo.age ?? "",
        gender: userInfo.gender ?? "",
        nationality: userInfo.nationality ?? "",
        email: userInfo.email ?? "",
        phone: userInfo.contPhone ?? "",
        listOfNationality: _setInitialState.listOfNationality ?? [],
        listOfProfession: _setInitialState.listOfProfession ?? [],
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  UpdatePersonalInfoActorState _mapChangeFirstNameToState(
      _ChangeFirstName _changeFirstName) {
    return state.copyWith(
      firstName: _changeFirstName.name,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeLastNameToState(
      _ChangeLastName _changeLastName) {
    return state.copyWith(
      lastName: _changeLastName.name,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeProfessionToState(
      _ChangeProfession _changeProfession) {
    return state.copyWith(
      profession: _changeProfession.profession,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeDobToState(_ChangeDob _changeDob) {
    return state.copyWith(
      dob: _changeDob.dob,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeAgeToState(_ChangeAge _changeAge) {
    return state.copyWith(
      age: _changeAge.age,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeGenderToState(
      _ChangeGender _changeGender) {
    return state.copyWith(
      gender: _changeGender.gender,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeNationalityToState(
      _ChangeNationality _changeNationality) {
    return state.copyWith(
      nationality: _changeNationality.nationality,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangeEmailToState(
      _ChangeEmail _changeEmail) {
    return state.copyWith(
      email: _changeEmail.email,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdatePersonalInfoActorState _mapChangePhoneToState(
      _ChangePhone _changePhone) {
    return state.copyWith(
      phone: _changePhone.phone,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdatePersonalInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    failureOrSuccess = await updatePersonalInfo(
      UpdatePersonalInfoParams(
        lang: _lang,
        firstName: state.firstName,
        lastName: state.lastName,
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
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
