import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_point_item.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_points.dart';
import 'package:wallet_app/features/reward_points/domain/use_case/get_reward_points.dart';

part 'reward_point_event.dart';
part 'reward_point_state.dart';
part 'reward_point_bloc.freezed.dart';

@injectable
class RewardPointBloc extends Bloc<RewardPointEvent, RewardPointState> {
  RewardPointBloc({
    required this.getRewardPoints,
  }) : super(const _Loading());

  final GetRewardPoints getRewardPoints;

  bool isFetching = false;
  int page = 1;
  bool hasReachedEnd = false;
  List<RewardPointItem> data = [];
  String usage = '';

  @override
  Stream<RewardPointState> mapEventToState(
    RewardPointEvent event,
  ) async* {
    yield* event.map(
      fetchRewardPoints: (e) async* {
        if (hasReachedEnd) {
          yield _Loaded(RewardPoints(rewardPoints: data, usage: usage));
        } else {
          isFetching = true;
          yield const _Loading();
          yield* _mapFetchRewardPointToState();
        }
      },
    );
  }

  Stream<RewardPointState> _mapFetchRewardPointToState() async* {
    if (data.isNotEmpty) {
      yield _LoadingWith(RewardPoints(rewardPoints: data, usage: usage));
    }

    final result = await getRewardPoints(GetRewardPointsParams(page: "$page"));
    yield result.fold(
      (failure) {
        isFetching = false;
        return _Failure(failure);
      },
      (rewardPoint) {
        usage = rewardPoint.usage ?? '';
        isFetching = false;
        if (rewardPoint.rewardPoints?.isEmpty ?? true) {
          hasReachedEnd = true;
        }

        data.addAll(rewardPoint.rewardPoints ?? []);
        page = page + 1;
        return _Loaded(
            RewardPoints(rewardPoints: data, usage: rewardPoint.usage));
      },
    );
  }
}
