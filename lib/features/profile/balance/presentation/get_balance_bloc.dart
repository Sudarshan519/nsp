import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/profile/balance/domain/entities/user_balance.dart';
import 'package:wallet_app/features/profile/balance/domain/usecase/get_balance.dart';

part 'get_balance_event.dart';
part 'get_balance_state.dart';
part 'get_balance_bloc.freezed.dart';

@lazySingleton
class GetBalanceBloc extends Bloc<GetBalanceEvent, GetBalanceState> {
  GetBalanceBloc({
    required this.getBalance,
  }) : super(const _Loading());

  final GetBalance getBalance;

  UserBalance? _userbalance;

  UserBalance? get userbalance => _userbalance;

  @override
  Stream<GetBalanceState> mapEventToState(
    GetBalanceEvent event,
  ) async* {
    yield* event.map(
      fetchBalance: (e) async* {
        yield const _Loading();
        final res = await getBalance.call(NoParams());

        yield res.fold((fail) {
          return _Failure(fail);
        }, (balance) {
          _userbalance = balance;
          return _Loaded(balance);
        });
      },
    );
  }
}
