part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = Initial;
  const factory ChangePasswordState.loading() = Loading;
  const factory ChangePasswordState.success() = Success;
  const factory ChangePasswordState.failure(ApiFailure failure) = Failure;
}
