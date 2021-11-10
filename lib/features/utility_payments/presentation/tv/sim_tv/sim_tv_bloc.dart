import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/pay_sim_tv.dart';

part 'sim_tv_event.dart';
part 'sim_tv_state.dart';
part 'sim_tv_bloc.freezed.dart';

@injectable
class SimTvBloc extends Bloc<SimTvEvent, SimTvState> {
  final PaySimTv paySimTv;

  SimTvBloc(this.paySimTv) : super(SimTvState.initial());

  @override
  Stream<SimTvState> mapEventToState(SimTvEvent event) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(
          productId: e.productId,
          key: UniqueKey(),
          failureOrSuccessOption: none(),
        );
      },
      changeCustomerId: (e) async* {
        yield state.copyWith(
          customerId: e.customerId,
          key: state.key,
          failureOrSuccessOption: none(),
        );
      },
      changeAmount: (e) async* {
        yield state.copyWith(
          amount: e.amount,
          key: state.key,
          failureOrSuccessOption: none(),
        );
      },
      payBill: (e) async* {
        yield state.copyWith(
          key: UniqueKey(),
          isSubmitting: true,
        );
        final result = await paySimTv(PaySimTvParams(
            customerId: state.customerId,
            amount: state.amount,
            productId: state.productId));

        yield state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: optionOf(result),
        );
      },
    );
  }
}
