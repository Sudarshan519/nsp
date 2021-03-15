part of 'update_address_info_actor_bloc.dart';

@freezed
abstract class UpdateAddressInfoActorState with _$UpdateAddressInfoActorState {
  const factory UpdateAddressInfoActorState({
    @required String country,
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
    @required List<String> listOfCountries,
    @required List<String> listOfPrefectures,
    @required List<String> listOfCurrCities,
    @required List<String> listOfContCities,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateAddressInfoActorState;

  factory UpdateAddressInfoActorState.initial() => UpdateAddressInfoActorState(
        country: '',
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
        listOfCountries: [],
        listOfPrefectures: [],
        listOfCurrCities: [],
        listOfContCities: [],
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
