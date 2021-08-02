import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/top_up_via_stripe.dart';
import 'package:wallet_app/utils/constant.dart';

part 'topup_via_stripe_event.dart';
part 'topup_via_stripe_state.dart';
part 'topup_via_stripe_bloc.freezed.dart';

@injectable
class TopupViaStripeBloc
    extends Bloc<TopupViaStripeEvent, TopupViaStripeState> {
  final TopUpViaStripe topUpViaStripe;

  TopupViaStripeBloc({
    required this.topUpViaStripe,
  }) : super(TopupViaStripeState.initial());

  @override
  Stream<TopupViaStripeState> mapEventToState(
    TopupViaStripeEvent event,
  ) async* {
    yield* event.map(
      changeName: (e) async* {
        yield _mapChangeNameEventToState(e);
      },
      changePurpose: (e) async* {
        yield _mapChangePurposeEventToState(e);
      },
      changeCardNumber: (e) async* {
        yield _mapChangeCardNumberEventToState(e);
      },
      changeCvc: (e) async* {
        yield _mapChangeCvcEventToState(e);
      },
      changeExpYear: (e) async* {
        yield _mapChangeExpYearEventToState(e);
      },
      changeAmount: (e) async* {
        yield _mapChangeAmountEventToState(e);
      },
      changeAmountFromOptions: (e) async* {
        yield _mapChangeAmountFromOptionsEventToState(e);
      },
      changeSaveCard: (e) async* {
        yield _mapChangeSaveCardEventToState(e);
      },
      topup: (e) async* {
        yield* _mapChangeTopupEventToState(e);
      },
    );
  }

  TopupViaStripeState _mapChangeNameEventToState(_ChangeName _changeName) {
    return state.copyWith(
      name: _changeName.name,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangePurposeEventToState(
      _ChangePurpose _changePurpose) {
    return state.copyWith(
      purpose: _changePurpose.purpose,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangeCardNumberEventToState(
      _ChangeCardNumber _changeCardNumber) {
    return state.copyWith(
      cardNumber: _changeCardNumber.number,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangeCvcEventToState(_ChangeCvc _changeCvc) {
    return state.copyWith(
      cvc: _changeCvc.cvc,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangeExpYearEventToState(
      _ChangeExpYear _changeExpYear) {
    return state.copyWith(
      expYear: _changeExpYear.year,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangeAmountEventToState(
      _ChangeAmount _changeAmount) {
    return state.copyWith(
      amount: _changeAmount.amount,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangeAmountFromOptionsEventToState(
      _ChangeAmountFromOptions _changeAmount) {
    return state.copyWith(
      key: UniqueKey(),
      amount: _changeAmount.amount,
      failureOrSuccessOption: none(),
    );
  }

  TopupViaStripeState _mapChangeSaveCardEventToState(
      _ChangeSaveCard _changeSaveCard) {
    final saveCard = !state.saveCard;
    return state.copyWith(
      saveCard: saveCard,
      failureOrSuccessOption: none(),
    );
  }

  Stream<TopupViaStripeState> _mapChangeTopupEventToState(
      _TopUp _topUp) async* {
    Either<ApiFailure, Unit> result;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    AnalyticsService.logEvent(FirebaseEvents.PAYMENT_VIA_STRIPE);

    result = await topUpViaStripe(
      TopUpViaStripeParams(
        name: state.name,
        cardNumber: state.cardNumber,
        cvc: state.cvc,
        expYear: state.expYear,
        amount: state.amount,
        saveCard: state.saveCard,
        isSavedCard: _topUp.isSavedCard,
      ),
    );
    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(result),
    );
  }
}
