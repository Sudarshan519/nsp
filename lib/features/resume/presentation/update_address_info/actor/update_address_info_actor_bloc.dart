import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_countries.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_japan_city.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_prefecture.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_address_info.dart';

part 'update_address_info_actor_event.dart';
part 'update_address_info_actor_state.dart';
part 'update_address_info_actor_bloc.freezed.dart';

class UpdateAddressInfoActorBloc
    extends Bloc<UpdateAddressInfoActorEvent, UpdateAddressInfoActorState> {
  final UpdateAddressInfo updateAddressInfo;
  final GetCountries getCountries;
  final GetPrefecture getPrefecture;
  final GetJapanCity getJapanCity;
  PersonalInfo _personalInfo;

  UpdateAddressInfoActorBloc({
    @required this.updateAddressInfo,
    @required this.getCountries,
    @required this.getPrefecture,
    @required this.getJapanCity,
  }) : super(UpdateAddressInfoActorState.initial());

  @override
  Stream<UpdateAddressInfoActorState> mapEventToState(
    UpdateAddressInfoActorEvent event,
  ) async* {
    yield* event.map(
      changeCountry: (e) async* {
        print("changeCountry");
        yield _mapChangeCountryToState(e);
      },
      changedCurrPostalCode: (e) async* {
        print("changedCurrPostalCode");
        yield _mapChangeCurrPostalCodeToState(e);
      },
      changedCurrPrefecture: (e) async* {
        print("changedCurrPrefecture");
        yield* _mapChangeCurrPrefectureToState(e);
      },
      changedCurrCity: (e) async* {
        print("changedCurrCity");
        yield _mapChangeCurrCityToState(e);
      },
      changedCurrAddress: (e) async* {
        print("changedCurrAddress");
        yield _mapChangeCurrAddressToState(e);
      },
      changedCurrPhone: (e) async* {
        print("changedCurrPhone");
        yield _mapChangeCurrPhoneToState(e);
      },
      changedContPostalCode: (e) async* {
        print("changedContPostalCode");
        yield _mapChangeContPostalCodeToState(e);
      },
      changedContPrefecture: (e) async* {
        print("changedContPrefecture");
        yield* _mapChangeContPrefectureToState(e);
      },
      changedContCity: (e) async* {
        print("changedContCity");
        yield _mapChangeContCityToState(e);
      },
      changedContAddress: (e) async* {
        print("changedContAddress");
        yield _mapChangeContAddressToState(e);
      },
      changedContPhone: (e) async* {
        print("changedContPhone");
        yield _mapChangeContPhoneToState(e);
      },
      setInitialState: (e) async* {
        print("setInitialState");
        yield* _mapsetInitialState(e);
      },
      save: (e) async* {
        print("save");
        yield* _mapSaveToState(e);
      },
    );
  }

  Stream<UpdateAddressInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    // yield state.copyWith(
    //   isSubmitting: true,
    // );

    final userInfo = _setInitialState.info;
    final listOfCountry = await getCountries();
    final listOfPrefecture = await getPrefecture();
    final listOfCurrCities = await getJapanCity(userInfo.currPrefecture);
    final listOfContCities = await getJapanCity(userInfo.contPrefecture);

    if (userInfo != null && userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        currPostalCode: userInfo.currPostalCode ?? "",
        currPrefecture: userInfo.currPrefecture ?? "",
        currCity: userInfo.currCity ?? "",
        currAddress: userInfo.currAddress ?? "",
        currPhone: userInfo.currPhone ?? "",
        contPostalCode: userInfo.contPostalCode ?? "",
        contPrefecture: userInfo.contPrefecture ?? "",
        contCity: userInfo.contCity ?? "",
        contAddress: userInfo.contAddress ?? "",
        contPhone: userInfo.contPhone ?? "",
        listOfCountries: listOfCountry ?? [],
        listOfPrefectures: listOfPrefecture ?? [],
        listOfCurrCities: listOfCurrCities ?? [],
        listOfContCities: listOfContCities ?? [],
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  UpdateAddressInfoActorState _mapChangeCountryToState(
      _ChangedCountry _changedCountry) {
    return state.copyWith(
      country: _changedCountry.country,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeCurrPostalCodeToState(
      _ChangedCurrPostalCode _changedPostalCode) {
    print("current postal code: ${_changedPostalCode.code}");
    return state.copyWith(
      currPostalCode: _changedPostalCode.code,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateAddressInfoActorState> _mapChangeCurrPrefectureToState(
      _ChangedCurrPrefecture _changedPrefecture) async* {
    final listOfCurrCities = await getJapanCity(_changedPrefecture.prefecture);
    yield state.copyWith(
      currPrefecture: _changedPrefecture.prefecture,
      listOfCurrCities: listOfCurrCities,
      currCity: '',
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeCurrCityToState(
      _ChangedCurrCity _changedCity) {
    return state.copyWith(
      currCity: _changedCity.city,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeCurrAddressToState(
      _ChangedCurrAddress _changedAddress) {
    return state.copyWith(
      currAddress: _changedAddress.address,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeCurrPhoneToState(
      _ChangedCurrPhone _changedPhone) {
    return state.copyWith(
      currPhone: _changedPhone.phone,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContPostalCodeToState(
      _ChangedContPostalCode _changedPostalCode) {
    return state.copyWith(
      contPostalCode: _changedPostalCode.code,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateAddressInfoActorState> _mapChangeContPrefectureToState(
      _ChangedContPrefecture _changedPrefecture) async* {
    final listOfContCities = await getJapanCity(_changedPrefecture.prefecture);
    yield state.copyWith(
      contPrefecture: _changedPrefecture.prefecture,
      listOfContCities: listOfContCities,
      contCity: '',
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContCityToState(
      _ChangedContCity _changedCity) {
    return state.copyWith(
      contCity: _changedCity.city,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContAddressToState(
      _ChangedContAddress _changedAddress) {
    return state.copyWith(
      contAddress: _changedAddress.address,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContPhoneToState(
      _ChangedContPhone _changedPhone) {
    return state.copyWith(
      contPhone: _changedPhone.phone,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateAddressInfoActorState> _mapSaveToState(_Save _save) async* {
    Either<ApiFailure, Unit> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
    );
    failureOrSuccess = await updateAddressInfo(
      UpdateAddressParams(
        currPostalCode: state.currPostalCode,
        currPrefecture: state.currPrefecture,
        currCity: state.currCity,
        currAddress: state.currAddress,
        currPhone: state.currPhone,
        contPostalCode: state.contPostalCode,
        contPrefecture: state.contPrefecture,
        contCity: state.contCity,
        contAddress: state.contAddress,
        contPhone: state.contPhone,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
