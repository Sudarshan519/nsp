import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_countries.dart';
import 'package:wallet_app/features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_address_info.dart';

part 'update_address_info_actor_event.dart';
part 'update_address_info_actor_state.dart';
part 'update_address_info_actor_bloc.freezed.dart';

class UpdateAddressInfoActorBloc
    extends Bloc<UpdateAddressInfoActorEvent, UpdateAddressInfoActorState> {
  final UpdateAddressInfo updateAddressInfo;
  final GetCountries getCountries;
  final GetListOfCityFromPrefectures getListOfCityFromPrefectures;
  PersonalInfo _personalInfo;
  String _lang;

  UpdateAddressInfoActorBloc({
    @required this.updateAddressInfo,
    @required this.getCountries,
    @required this.getListOfCityFromPrefectures,
  }) : super(UpdateAddressInfoActorState.initial());

  @override
  Stream<UpdateAddressInfoActorState> mapEventToState(
    UpdateAddressInfoActorEvent event,
  ) async* {
    yield* event.map(
      changeCurrCountry: (e) async* {
        yield _mapChangeCurrCountryToState(e);
      },
      changedCurrPostalCode: (e) async* {
        yield _mapChangeCurrPostalCodeToState(e);
      },
      changedCurrJapanesePrefecture: (e) async* {
        yield* _mapChangeCurrJapanesePrefectureToState(e);
      },
      changedCurrNepaliProvince: (e) async* {
        yield* _mapChangeCurrNepaliPrefectureToState(e);
      },
      changedCurrCity: (e) async* {
        yield _mapChangeCurrCityToState(e);
      },
      changedCurrAddress: (e) async* {
        yield _mapChangeCurrAddressToState(e);
      },
      changedCurrPhone: (e) async* {
        yield _mapChangeCurrPhoneToState(e);
      },
      changeSameAsCurrAddressInfo: (e) async* {
        yield _mapChangeSameAsCurrAddressInfoToState(e);
      },
      changeContCountry: (e) async* {
        yield _mapChangeContCountryToState(e);
      },
      changedContPostalCode: (e) async* {
        yield _mapChangeContPostalCodeToState(e);
      },
      changedContJapanesePrefecture: (e) async* {
        yield* _mapChangeContJapanesePrefectureToState(e);
      },
      changedContNepaliProvince: (e) async* {
        yield* _mapChangeContNepaliPrefectureToState(e);
      },
      changedContCity: (e) async* {
        yield _mapChangeContCityToState(e);
      },
      changedContAddress: (e) async* {
        yield _mapChangeContAddressToState(e);
      },
      changedContPhone: (e) async* {
        yield _mapChangeContPhoneToState(e);
      },
      setInitialState: (e) async* {
        yield* _mapsetInitialState(e);
      },
      save: (e) async* {
        yield* _mapSaveToState(e);
      },
    );
  }

  Stream<UpdateAddressInfoActorState> _mapsetInitialState(
      _SetInitialState _setInitialState) async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final userInfo = _setInitialState.info;
    final listOfCountry = await getCountries();

    _lang = _setInitialState.lang;

    final List<String> _currCityArray = await _getListOfCities(
      country: userInfo.currCountry,
      prefectureName: userInfo.currPrefecture,
    );
    final List<String> _contCityArray = await _getListOfCities(
      country: userInfo.currCountry,
      prefectureName: userInfo.contPrefecture,
    );

    if (userInfo != null && userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        currCountry: userInfo.currCountry ?? "",
        currPostalCode: userInfo.currPostalCode ?? "",
        currPrefecture: userInfo.currPrefecture ?? "",
        currCity: userInfo.currCity ?? "",
        currAddress: userInfo.currAddress ?? "",
        currPhone: userInfo.currPhone ?? "",
        contCountry: userInfo.contCountry ?? "",
        contPostalCode: userInfo.contPostalCode ?? "",
        contPrefecture: userInfo.contPrefecture ?? "",
        contCity: userInfo.contCity ?? "",
        contAddress: userInfo.contAddress ?? "",
        contPhone: userInfo.contPhone ?? "",
        listOfCountries: listOfCountry ?? [],
        listOfJapanesePrefectures: _setInitialState.prefectures,
        listOfNepaliProvinces: _setInitialState.provinces,
        listOfCurrCities: _currCityArray,
        listOfContCities: _contCityArray,
        isSubmitting: false,
        hasSetInitialData: true,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  UpdateAddressInfoActorState _mapChangeCurrCountryToState(
      _ChangedCurrCountry _changedCountry) {
    return state.copyWith(
      currCountry: _changedCountry.country,
      currPrefecture: '',
      currCity: '',
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeCurrPostalCodeToState(
      _ChangedCurrPostalCode _changedPostalCode) {
    return state.copyWith(
      currPostalCode: _changedPostalCode.code,
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  // TODO watch out for this addition of prefecture
  // may need to remove later
  Stream<UpdateAddressInfoActorState> _mapChangeCurrJapanesePrefectureToState(
      _ChangedCurJapaneserPrefecture _changedPrefecture) async* {
    final listOfCurrCities = await _getListOfCities(
        country: state.currCountry,
        prefectureName: _changedPrefecture.prefecture);
    final List<String> listOfPrefectures = state.listOfJapanesePrefectures;
    if (!listOfPrefectures.contains(_changedPrefecture.prefecture)) {
      listOfPrefectures.add(_changedPrefecture.prefecture);
    }
    yield state.copyWith(
      currPrefecture: _changedPrefecture.prefecture,
      listOfJapanesePrefectures: listOfPrefectures,
      listOfCurrCities: listOfCurrCities,
      currCity: '',
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateAddressInfoActorState> _mapChangeCurrNepaliPrefectureToState(
      _ChangedCurrNepaliProvince _changedPrefecture) async* {
    final listOfCurrCities = await _getListOfCities(
        country: state.currCountry,
        prefectureName: _changedPrefecture.province);
    final List<String> listOfPrefectures = state.listOfJapanesePrefectures;
    if (!listOfPrefectures.contains(_changedPrefecture.province)) {
      listOfPrefectures.add(_changedPrefecture.province);
    }
    yield state.copyWith(
      currPrefecture: _changedPrefecture.province,
      listOfNepaliProvinces: listOfPrefectures,
      listOfCurrCities: listOfCurrCities,
      currCity: '',
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  // TODO watch out for this addition of city
  // may need to remove later
  UpdateAddressInfoActorState _mapChangeCurrCityToState(
      _ChangedCurrCity _changedCity) {
    final List<String> listOfCities = state.listOfCurrCities;
    if (!listOfCities.contains(_changedCity.city)) {
      listOfCities.add(_changedCity.city);
    }
    return state.copyWith(
      currCity: _changedCity.city,
      listOfCurrCities: listOfCities,
      hasSetInitialData: false,
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
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeSameAsCurrAddressInfoToState(
      _ChangedSameAsCurrAddressInfo _changedSameAsCurrAddressInfo) {
    final sameAsCurrAddressInfo = !state.sameAsCurrAddressInfo;

    return state.copyWith(
      sameAsCurrAddressInfo: sameAsCurrAddressInfo,
      contCountry: sameAsCurrAddressInfo ? state.currCountry : "",
      contPostalCode: sameAsCurrAddressInfo ? state.currPostalCode : "",
      contPrefecture: sameAsCurrAddressInfo ? state.currPrefecture : "",
      contCity: sameAsCurrAddressInfo ? state.currCity : "",
      contAddress: sameAsCurrAddressInfo ? state.currAddress : "",
      contPhone: sameAsCurrAddressInfo ? state.currPhone : "",
      isSubmitting: false,
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContCountryToState(
      _ChangedContCountry _changedCountry) {
    return state.copyWith(
      contCountry: _changedCountry.country,
      currPrefecture: '',
      currCity: '',
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContPostalCodeToState(
      _ChangedContPostalCode _changedPostalCode) {
    return state.copyWith(
      contPostalCode: _changedPostalCode.code,
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  // TODO watch out for this addition of prefecture
  // may need to remove later
  Stream<UpdateAddressInfoActorState> _mapChangeContJapanesePrefectureToState(
      _ChangedContJapanesePrefecture _changedPrefecture) async* {
    // final List<String> listOfPrefectures = state.listOfJapanesePrefectures;
    // if (!listOfPrefectures.contains(_changedPrefecture.prefecture)) {
    //   listOfPrefectures.add(_changedPrefecture.prefecture);
    // }
    final listOfContCities = await _getListOfCities(
        country: state.contCountry,
        prefectureName: _changedPrefecture.prefecture);
    yield state.copyWith(
      contPrefecture: _changedPrefecture.prefecture,
      listOfContCities: listOfContCities,
      contCity: '',
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<UpdateAddressInfoActorState> _mapChangeContNepaliPrefectureToState(
      _ChangedContNepaliProvince _changedPrefecture) async* {
    // final List<String> listOfPrefectures = state.listOfNepaliProvinces;
    // if (!listOfPrefectures.contains(_changedPrefecture.province)) {
    //   listOfPrefectures.add(_changedPrefecture.province);
    // }
    final listOfContCities = await _getListOfCities(
        country: state.contCountry,
        prefectureName: _changedPrefecture.province);
    yield state.copyWith(
      contPrefecture: _changedPrefecture.province,
      listOfContCities: listOfContCities,
      // listOfPrefectures: listOfPrefectures,
      contCity: '',
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContCityToState(
      _ChangedContCity _changedCity) {
    final List<String> listOfCities = state.listOfContCities;
    if (!listOfCities.contains(_changedCity.city)) {
      listOfCities.add(_changedCity.city);
    }
    return state.copyWith(
      contCity: _changedCity.city,
      listOfContCities: listOfCities,
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContAddressToState(
      _ChangedContAddress _changedAddress) {
    return state.copyWith(
      contAddress: _changedAddress.address,
      hasSetInitialData: false,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeContPhoneToState(
      _ChangedContPhone _changedPhone) {
    return state.copyWith(
      contPhone: _changedPhone.phone,
      hasSetInitialData: false,
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
        lang: _lang,
        currCountry: state.currCountry,
        currPostalCode: state.currPostalCode,
        currPrefecture: state.currPrefecture,
        currCity: state.currCity,
        currAddress: state.currAddress,
        currPhone: state.currPhone,
        contCountry: state.contCountry,
        contPostalCode: state.contPostalCode,
        contPrefecture: state.contPrefecture,
        contCity: state.contCity,
        contAddress: state.contAddress,
        contPhone: state.contPhone,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      hasSetInitialData: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Future<List<String>> _getListOfCities({
    @required String country,
    @required String prefectureName,
  }) async {
    if (prefectureName == null) {
      return [];
    }

    if (prefectureName.isNotEmpty) {
      final result =
          await getListOfCityFromPrefectures(GetListOfCityFromPrefecturesParams(
        country: country,
        prefecture: prefectureName,
        lang: _lang,
      ));
      return result.fold(
        (failure) => [],
        (cities) => cities,
      );
    }
    return [];
  }
}
