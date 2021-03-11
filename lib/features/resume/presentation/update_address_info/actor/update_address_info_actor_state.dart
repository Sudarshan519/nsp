part of 'update_address_info_actor_bloc.dart';

@freezed
abstract class UpdateAddressInfoActorState with _$UpdateAddressInfoActorState {
  const factory UpdateAddressInfoActorState({
    @required String currPostalCode,
    @required String currPrefecture,
    @required String currCity,
    @required String currAddress,
    @required String currPhone,
    @required String contPostalCode,
    @required String contPrefecture,
    @required String contCity,
    @required String contAddress,
    @required String contPhone,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateAddressInfoActorState;

  factory UpdateAddressInfoActorState.initial() => UpdateAddressInfoActorState(
        currPostalCode: '',
        currPrefecture: '',
        currCity: '',
        currAddress: '',
        currPhone: '',
        contPostalCode: '',
        contPrefecture: '',
        contCity: '',
        contAddress: '',
        contPhone: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
