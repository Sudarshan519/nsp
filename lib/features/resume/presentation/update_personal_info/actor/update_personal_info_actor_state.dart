part of 'update_personal_info_actor_bloc.dart';

@freezed
abstract class UpdatePersonalInfoActorState
    with _$UpdatePersonalInfoActorState {
  const factory UpdatePersonalInfoActorState({
    @required String firstName,
    @required String lastName,
    @required String profession,
    @required String dob,
    @required String age,
    @required String gender,
    @required String nationality,
    @required String email,
    @required String phone,
    @required bool isSubmitting,
    @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdatePersonalInfoActorState;

  factory UpdatePersonalInfoActorState.initial() =>
      UpdatePersonalInfoActorState(
        firstName: '',
        lastName: '',
        profession: '',
        dob: '',
        age: '',
        gender: '',
        nationality: '',
        email: '',
        phone: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}