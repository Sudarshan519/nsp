part of 'update_personal_info_actor_bloc.dart';

@freezed
class UpdatePersonalInfoActorState with _$UpdatePersonalInfoActorState {
  const factory UpdatePersonalInfoActorState({
    required Key? key,
    required String firstName,
    required String lastName,
    required String furigana,
    required String profession,
    required String dob,
    required String age,
    required String gender,
    required String nationality,
    required String email,
    required String phone,
    required List<String> listOfNationality,
    required List<String> listOfProfession,
    required List<String> listOfGender,
    required bool hasSetInitialData,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _UpdatePersonalInfoActorState;

  factory UpdatePersonalInfoActorState.initial() =>
      UpdatePersonalInfoActorState(
        key: UniqueKey(),
        firstName: '',
        lastName: '',
        furigana: '',
        profession: '',
        dob: '',
        age: '',
        gender: '',
        nationality: '',
        email: '',
        phone: '',
        listOfNationality: [],
        listOfProfession: [],
        listOfGender: [],
        hasSetInitialData: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
