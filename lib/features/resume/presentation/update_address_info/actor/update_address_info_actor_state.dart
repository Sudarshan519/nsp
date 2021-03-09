part of 'update_address_info_actor_bloc.dart';

@freezed
abstract class UpdateAddressInfoActorState with _$UpdateAddressInfoActorState {
  const factory UpdateAddressInfoActorState({
    @required String postalCode,
    @required String prefecture,
    @required String city,
    @required String address,
    @required String phone,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateAddressInfoActorState;

  factory UpdateAddressInfoActorState.initial() => UpdateAddressInfoActorState(
        postalCode: '',
        prefecture: '',
        city: '',
        address: '',
        phone: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
