import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_address_info.dart';

part 'update_address_info_actor_event.dart';
part 'update_address_info_actor_state.dart';
part 'update_address_info_actor_bloc.freezed.dart';

@injectable
class UpdateAddressInfoActorBloc
    extends Bloc<UpdateAddressInfoActorEvent, UpdateAddressInfoActorState> {
  final UpdateAddressInfo updateAddressInfo;
  PersonalInfo _personalInfo;

  UpdateAddressInfoActorBloc({
    @required this.updateAddressInfo,
  }) : super(UpdateAddressInfoActorState.initial());

  @override
  Stream<UpdateAddressInfoActorState> mapEventToState(
    UpdateAddressInfoActorEvent event,
  ) async* {
    yield* event.map(
      changedPostalCode: (e) async* {
        yield _mapChangePostalCodeToState(e);
      },
      changedPrefecture: (e) async* {
        yield _mapChangePrefectureToState(e);
      },
      changedCity: (e) async* {
        yield _mapChangeCityToState(e);
      },
      changedAddress: (e) async* {
        yield _mapChangeAddressToState(e);
      },
      changedPhone: (e) async* {
        yield _mapChangePhoneToState(e);
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
    final userInfo = _setInitialState.info;
    if (userInfo != null && userInfo != _personalInfo) {
      _personalInfo = userInfo;
      yield state.copyWith(
        postalCode: userInfo.currPostalCode ?? "",
        prefecture: userInfo.currPrefecture ?? "",
        city: userInfo.currCity ?? "",
        address: userInfo.currAddress ?? "",
        phone: userInfo.currPhone ?? "",
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }

  UpdateAddressInfoActorState _mapChangePostalCodeToState(
      _ChangedPostalCode _changedPostalCode) {
    return state.copyWith(
      postalCode: _changedPostalCode.code,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangePrefectureToState(
      _ChangedPrefecture _changedPrefecture) {
    return state.copyWith(
      prefecture: _changedPrefecture.prefecture,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeCityToState(_ChangedCity _changedCity) {
    return state.copyWith(
      city: _changedCity.city,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangeAddressToState(
      _ChangedAddress _changedAddress) {
    return state.copyWith(
      address: _changedAddress.address,
      authFailureOrSuccessOption: none(),
    );
  }

  UpdateAddressInfoActorState _mapChangePhoneToState(
      _ChangedPhone _changedPhone) {
    return state.copyWith(
      phone: _changedPhone.phone,
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
        postalCode: state.postalCode,
        prefecture: state.prefecture,
        city: state.city,
        address: state.address,
        phone: state.phone,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
