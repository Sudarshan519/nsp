import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/domain/usecases/apply_coupon.dart';
import 'package:wallet_app/features/coupon/domain/usecases/redeem_coupon.dart';

part 'redeem_coupon_event.dart';
part 'redeem_coupon_state.dart';
part 'redeem_coupon_bloc.freezed.dart';

@injectable
class RedeemCouponBloc extends Bloc<RedeemCouponEvent, RedeemCouponState> {
  RedeemCouponBloc({
    required this.applyCoupon,
    required this.redeemCoupon,
  }) : super(RedeemCouponState.initial());

  final ApplyCoupon applyCoupon;
  final RedeemCoupon redeemCoupon;

  @override
  Stream<RedeemCouponState> mapEventToState(
    RedeemCouponEvent event,
  ) async* {
    yield* event.map(
      changeCouponCode: (e) async* {
        yield state.copyWith(
          couponCode: e.code,
          failureOrSuccess: none(),
        );
      },
      reset: (e) async* {
        yield state.copyWith(
          key: UniqueKey(),
          couponCode: '',
          coupon: null,
          failureOrSuccess: none(),
        );
      },
      applyCoupon: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccess: none(),
        );

        final result = await applyCoupon(
          ApplyCouponParams(
            couponCode: state.couponCode,
          ),
        );

        yield result.fold((failure) {
          return state.copyWith(
            failureOrSuccess: optionOf(Left(failure)),
            isSubmitting: false,
          );
        }, (coupon) {
          return state.copyWith(
            key: UniqueKey(),
            coupon: coupon,
            isSubmitting: false,
          );
        });
      },
      redeemCoupon: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccess: none(),
        );
        final result = await redeemCoupon(
          RedeemCouponParams(
            couponCode: state.couponCode,
          ),
        );

        yield state.copyWith(
          key: UniqueKey(),
          isSubmitting: false,
          failureOrSuccess: optionOf(result),
        );
      },
    );
  }
}
