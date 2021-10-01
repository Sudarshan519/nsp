part of 'app_update_bloc.dart';

@freezed
class AppUpdateState with _$AppUpdateState {
  const factory AppUpdateState.initial() = _Initial;
  const factory AppUpdateState.loading() = _Loading;
  const factory AppUpdateState.loaded(AppUpdate updateData) = _Loaded;
  const factory AppUpdateState.failure(ApiFailure failure) = _Failure;
}
