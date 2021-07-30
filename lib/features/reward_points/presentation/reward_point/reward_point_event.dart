part of 'reward_point_bloc.dart';

@freezed
class RewardPointEvent with _$RewardPointEvent {
  const factory RewardPointEvent.fetchRewardPoints() = _FetchRewardPoints;
}
