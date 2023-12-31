part of 'delete_card_bloc.dart';

@freezed
class DeleteCardState with _$DeleteCardState {
  const factory DeleteCardState.initial() = _Initial;
  const factory DeleteCardState.loading() = _Loading;
  const factory DeleteCardState.success(int id) = _Success;
  const factory DeleteCardState.failure(ApiFailure failure) = _Failure;
}
