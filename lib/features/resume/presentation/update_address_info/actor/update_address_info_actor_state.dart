part of 'update_address_info_actor_bloc.dart';

@freezed
class UpdateAddressInfoActorState with _$UpdateAddressInfoActorState {
  const factory UpdateAddressInfoActorState({
    required Key? key,
    required String currCountry,
    required String currPostalCode,
    required String currPrefecture,
    required String currCity,
    required String currAddress,
    required String currPhone,
    required bool sameAsCurrAddressInfo,
    required String contCountry,
    required String contPostalCode,
    required String contPrefecture,
    required String contCity,
    required String contAddress,
    required String contPhone,
    required List<String> listOfCountries,
    required List<String> listOfJapanesePrefectures,
    required List<String> listOfNepaliProvinces,
    required List<String> listOfCurrCities,
    required List<String> listOfContCities,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdateAddressInfoActorState;

  factory UpdateAddressInfoActorState.initial() => UpdateAddressInfoActorState(
        key: UniqueKey(),
        currCountry: '',
        currPostalCode: '',
        currPrefecture: '',
        currCity: '',
        currAddress: '',
        currPhone: '',
        sameAsCurrAddressInfo: false,
        contCountry: '',
        contPostalCode: '',
        contPrefecture: '',
        contCity: '',
        contAddress: '',
        contPhone: '',
        listOfCountries: [],
        listOfJapanesePrefectures: [],
        listOfNepaliProvinces: [],
        listOfCurrCities: [],
        listOfContCities: [],
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
