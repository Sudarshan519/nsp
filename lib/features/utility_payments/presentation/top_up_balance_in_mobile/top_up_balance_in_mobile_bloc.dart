import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/topup_balance_for_mobile.dart';

part 'top_up_balance_in_mobile_event.dart';
part 'top_up_balance_in_mobile_state.dart';
part 'top_up_balance_in_mobile_bloc.freezed.dart';

@injectable
class TopUpBalanceInMobileBloc
    extends Bloc<TopUpBalanceInMobileEvent, TopUpBalanceInMobileState> {
  final TopUpBalanceForMobile topUpBalanceForMobile;

  TopUpBalanceInMobileBloc({
    required this.topUpBalanceForMobile,
  }) : super(TopUpBalanceInMobileState.initial());

  @override
  Stream<TopUpBalanceInMobileState> mapEventToState(
    TopUpBalanceInMobileEvent event,
  ) async* {
    yield* event.map(
      changePhoneNumber: (e) async* {
        yield _mapChangePhoneNumberEventToState(e);
      },
      changePhoneNumberViaContact: (e) async* {
        yield _mapChangePhoneNumberViaContactEventToState(e);
      },
      changeAmount: (e) async* {
        yield _mapChangeAmountEventToState(e);
      },
      changeconvertedJpyAmount: (e) async* {
        yield _mapChangeconvertedJpyAmountEventToState(e);
      },
      changeCoupon: (e) async* {
        yield _mapChangecCouponCodeEventToState(e);
      },
      validate: (e) async* {
        yield _mapValidateEventToState(e);
      },
      topup: (e) async* {
        yield* _mapTopupEventToState(e);
      },
    );
  }

  TopUpBalanceInMobileState _mapChangePhoneNumberEventToState(
      _ChangePhoneNumber _changePhoneNumber) {
    final type = getType(fromNumber: _changePhoneNumber.number);

    return state.copyWith(
      number: _changePhoneNumber.number,
      type: type,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangePhoneNumberViaContactEventToState(
      _ChangePhoneNumberViaContact _changePhoneNumberViaContact) {
    final type = getType(fromNumber: _changePhoneNumberViaContact.number);

    return state.copyWith(
      key: UniqueKey(),
      number: _changePhoneNumberViaContact.number,
      type: type,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangeAmountEventToState(
      _ChangeAmount _changeAmount) {
    return state.copyWith(
      amount: _changeAmount.amount,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangeconvertedJpyAmountEventToState(
      _ChangeconvertedJpyAmount _changeAmount) {
    return state.copyWith(
      convertedJpyAmount: _changeAmount.amount,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangecCouponCodeEventToState(
      _ChangeCoupon _changeCoupon) {
    return state.copyWith(
      coupon: _changeCoupon.coupon,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapValidateEventToState(_Validate _validate) {
    final result = topUpBalanceForMobile.validate(
      TopUpBalanceForMobileParams(
        amount: state.convertedJpyAmount,
        number: state.number,
        type: state.type,
        coupon: state.coupon,
      ),
    );

    if (result != null) {
      return state.copyWith(
        failureOrSuccessOption: optionOf(Left(result)),
      );
    } else {
      return state.copyWith(
        failureOrSuccessOption: none(),
      );
    }
  }

  Stream<TopUpBalanceInMobileState> _mapTopupEventToState(
      _Topup _topup) async* {
    Either<ApiFailure, Unit> result;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );

    result = await topUpBalanceForMobile(
      TopUpBalanceForMobileParams(
        amount: state.convertedJpyAmount,
        number: state.number,
        type: state.type,
        coupon: state.coupon,
      ),
    );

    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(result),
    );
  }

  String getType({required String fromNumber}) {
    if (fromNumber.length < 3) {
      return '';
    }
    const ntcPrefix = [
      "984",
      "985",
      "986",
    ];
    const ncellPrefix = [
      "980",
      "981",
      "982",
    ];
    const smartCellPrefix = [
      "961",
      "988",
    ];
    // final ntcRegx = RegExp(r'^(984|985|986|)\d{7}$', caseSensitive: false);
    // final ncellRegx = RegExp(r'^(980|981|982)\d{7}$', caseSensitive: false);
    // final smartCellRegx = RegExp(r'^(961|988)\d{7}$', caseSensitive: false);
    final firstThreeNUm = fromNumber.substring(0, 3);

    if (ntcPrefix.contains(firstThreeNUm)) {
      return 'ntc';
    } else if (ncellPrefix.contains(firstThreeNUm)) {
      return 'ncell';
    } else if (smartCellPrefix.contains(firstThreeNUm)) {
      return 'smartcell';
    } else {
      return '';
    }
  }
}
