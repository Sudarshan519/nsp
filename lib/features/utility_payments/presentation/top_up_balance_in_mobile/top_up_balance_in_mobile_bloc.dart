import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/utility_payments.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/topup_balance_for_mobile.dart';
import 'package:wallet_app/utils/constant.dart';

part 'top_up_balance_in_mobile_event.dart';
part 'top_up_balance_in_mobile_state.dart';
part 'top_up_balance_in_mobile_bloc.freezed.dart';

@injectable
class TopUpBalanceInMobileBloc
    extends Bloc<TopUpBalanceInMobileEvent, TopUpBalanceInMobileState> {
  final TopUpBalanceForMobile topUpBalanceForMobile;

  TopUpBalanceInMobileBloc({
    required this.topUpBalanceForMobile,
  }) : super(TopUpBalanceInMobileState.initial()) {
    on<_ChangePhoneNumber>((event, emit) {
      final type = getType(fromNumber: event.number);

      var amount = state.amount;

      //making sure the amount is within the list of smart cell if any other amt is entered when mart cell number is entered
      if (type == Values.SMARTCELL) {
        amount = Values.SMARTCELL_TOPUP.contains(state.amount) ? amount : '';
      }

      final isValid = type.isNotEmpty &&
          state.paydata.name
              .toString()
              .toLowerCase()
              .contains(type.toLowerCase());

      emit(
        state.copyWith(
          key: event.fromContactPicker ? UniqueKey() : state.key,
          amount: amount,
          number: event.number,
          type: type,
          isNumberValid: isValid,
          failureOrSuccessOption: none(),
        ),
      );
    });
    on<_ChangeAmount>((event, emit) {
      emit(
        state.copyWith(
          amount: event.amount,
          failureOrSuccessOption: none(),
        ),
      );
    });
    on<_ChangeCoupon>((event, emit) {
      emit(
        state.copyWith(
          coupon: event.coupon,
          failureOrSuccessOption: none(),
        ),
      );
    });
    on<_SetDiscountpercentage>((event, emit) {
      emit(
        state.copyWith(
          discountPercentage: event.percentage,
          failureOrSuccessOption: none(),
        ),
      );
    });
    on<_SetRedeemPointFromCoupon>((event, emit) {
      emit(
        state.copyWith(
          rewardPointFromCoupon: event.point,
          failureOrSuccessOption: none(),
        ),
      );
    });
    on<_ChangeconvertedJpyAmount>((event, emit) {
      emit(
        state.copyWith(
          convertedJpyAmount: event.amount,
          failureOrSuccessOption: none(),
        ),
      );
    });
    on<_Validate>((event, emit) {
      emit(
        state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        ),
      );
      final result = topUpBalanceForMobile.validate(
        TopUpBalanceForMobileParams(
          productId: state.productId,
          amount: state.amount,
          number: state.number,
          type: state.type,
          coupon: state.coupon,
        ),
      );

      if (result != null) {
        emit(
          state.copyWith(
            failureOrSuccessOption: optionOf(Left(result)),
          ),
        );
      } else {
        emit(
          state.copyWith(
            isSubmitting: false,
            failureOrSuccessOption: none(),
          ),
        );
      }
    });
    on<_Topup>((event, emit) async {
      emit(
        state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        ),
      );
      AnalyticsService.logEvent(
        FirebaseEvents.MOBILE_TOPUP,
        params: {'type': state.type},
      );
      Either<ApiFailure, Unit> result;
      result = await topUpBalanceForMobile(
        TopUpBalanceForMobileParams(
          productId: (state.paydata.id ?? 0).toString(),
          amount: state.amount,
          number: state.number,
          type: state.type,
          coupon: state.coupon,
        ),
      );
      print(result);
      if (result.isRight()) {
        AnalyticsService.logEvent(
          FirebaseEvents.MOBILE_TOPUP,
          isSuccess: true,
          params: {'type': state.type},
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: optionOf(result),
        ),
      );
    });
    on<_SetPayData>((event, emit) {
      emit(
        state.copyWith(
          paydata: event.paydata,
          failureOrSuccessOption: none(),
        ),
      );
    });
  }

  @override
  Stream<TopUpBalanceInMobileState> mapEventToState(
    TopUpBalanceInMobileEvent event,
  ) async* {
    yield* event.map(
      changePhoneNumber: (e) async* {
        yield _mapChangePhoneNumberEventToState(e);
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
      setDiscountpercentage: (e) async* {
        yield _mapSetDiscountpercentageEventToState(e);
      },
      setRewardPointFromCoupon: (e) async* {
        yield _mapSetRewardPointsFromCouponEventToState(e);
      },
      validate: (e) async* {
        yield* _mapValidateEventToState(e);
      },
      topup: (e) async* {
        yield* _mapTopupEventToState(e);
      },
      setPayData: (e) async* {
        yield _mapSetPayDataEventToState(e);
      },
    );
  }

  TopUpBalanceInMobileState _mapChangePhoneNumberEventToState(
    _ChangePhoneNumber _changePhoneNumber,
  ) {
    final type = getType(fromNumber: _changePhoneNumber.number);

    var amount = state.amount;

    //making sure the amount is within the list of smart cell if any other amt is entered when mart cell number is entered
    if (type == Values.SMARTCELL) {
      amount = Values.SMARTCELL_TOPUP.contains(state.amount) ? amount : '';
    }

    final isValid = type.isNotEmpty &&
        state.paydata.name
            .toString()
            .toLowerCase()
            .contains(type.toLowerCase());

    return state.copyWith(
      key: _changePhoneNumber.fromContactPicker ? UniqueKey() : state.key,
      amount: amount,
      number: _changePhoneNumber.number,
      type: type,
      isNumberValid: isValid,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapSetPayDataEventToState(_SetPayData _payData) {
    return state.copyWith(
      paydata: _payData.paydata,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangeAmountEventToState(
    _ChangeAmount _changeAmount,
  ) {
    return state.copyWith(
      amount: _changeAmount.amount,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangeconvertedJpyAmountEventToState(
    _ChangeconvertedJpyAmount _changeAmount,
  ) {
    return state.copyWith(
      convertedJpyAmount: _changeAmount.amount,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapChangecCouponCodeEventToState(
    _ChangeCoupon _changeCoupon,
  ) {
    return state.copyWith(
      coupon: _changeCoupon.coupon,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapSetDiscountpercentageEventToState(
    _SetDiscountpercentage _setDiscountpercentage,
  ) {
    return state.copyWith(
      discountPercentage: _setDiscountpercentage.percentage,
      failureOrSuccessOption: none(),
    );
  }

  TopUpBalanceInMobileState _mapSetRewardPointsFromCouponEventToState(
    _SetRedeemPointFromCoupon _setRedeemPoint,
  ) {
    return state.copyWith(
      rewardPointFromCoupon: _setRedeemPoint.point,
      failureOrSuccessOption: none(),
    );
  }

  Stream<TopUpBalanceInMobileState> _mapValidateEventToState(
    _Validate _validate,
  ) async* {
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    final result = topUpBalanceForMobile.validate(
      TopUpBalanceForMobileParams(
        productId: state.productId,
        amount: state.amount,
        number: state.number,
        type: state.type,
        coupon: state.coupon,
      ),
    );

    if (result != null) {
      yield state.copyWith(
        failureOrSuccessOption: optionOf(Left(result)),
      );
    } else {
      yield state.copyWith(
        failureOrSuccessOption: none(),
      );
    }
  }

  Stream<TopUpBalanceInMobileState> _mapTopupEventToState(
    _Topup _topup,
  ) async* {
    Either<ApiFailure, Unit> result;
    yield state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
    );
    AnalyticsService.logEvent(
      FirebaseEvents.MOBILE_TOPUP,
      params: {'type': state.type},
    );

    result = await topUpBalanceForMobile(
      TopUpBalanceForMobileParams(
        productId: (state.paydata.id ?? 0).toString(),
        amount: state.amount,
        number: state.number,
        type: state.type,
        coupon: state.coupon,
      ),
    );
    if (result.isRight()) {
      AnalyticsService.logEvent(
        FirebaseEvents.MOBILE_TOPUP,
        isSuccess: true,
        params: {'type': state.type},
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(result),
    );
  }

  String getType({required String fromNumber}) {
    if (Values.ntcRegx.hasMatch(fromNumber)) {
      return Values.NTC;
    } else if (state.isLandline &&
        Values.ntcLandLineRegex.hasMatch(fromNumber)) {
      return Values.NTC;
    } else if (Values.ncellRegx.hasMatch(fromNumber)) {
      return Values.NCELL;
    } else if (Values.smartCellRegx.hasMatch(fromNumber)) {
      return Values.SMARTCELL;
    }

    return '';
  }
}
