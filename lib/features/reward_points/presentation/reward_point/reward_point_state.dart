part of 'reward_point_bloc.dart';

@freezed
class RewardPointState with _$RewardPointState {
  const factory RewardPointState.loading() = _Loading;

  const factory RewardPointState.loaded(List<RewardPointItem> rewardPointData) =
      _Loaded;

  const factory RewardPointState.failure(ApiFailure failure) = _Failure;
}
