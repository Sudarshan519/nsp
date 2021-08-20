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

  @override
  Stream<RewardPointState> mapEventToState(
    RewardPointEvent event,
  ) async* {
    yield* event.map(fetchRewardPoints: (e) async* {
      isFetching = true;
      yield const _Loading();
      final result =
          await getRewardPoints(GetRewardPointsParams(page: "$page"));
      yield result.fold((fail) {
        isFetching = false;
        return _Failure(fail);
      }, (result) {
        isFetching = false;
        data.addAll(result.rewardPoints ?? []);
        page = page + 1;
        return _Loaded(result);
      });
    });
  }
}
