part of 'set_mpin_bloc.dart';

@freezed
class SetMpinState with _$SetMpinState {
  const factory SetMpinState.initial() = _Initial;
  const factory SetMpinState.success() = _Success;
  const factory SetMpinState.failure(ApiFailure failure) = _Failure;
  const factory SetMpinState.loading() = _Loading;
}
