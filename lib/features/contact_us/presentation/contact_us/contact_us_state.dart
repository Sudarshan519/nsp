part of 'contact_us_bloc.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    required String name,
    required String email,
    required String message,
    required bool isLoading,
    required Key key,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _ContactUsState;

  factory ContactUsState.initial() => ContactUsState(
        key: UniqueKey(),
        name: '',
        email: '',
        message: '',
        isLoading: false,
        failureOrSuccessOption: none(),
      );
}
