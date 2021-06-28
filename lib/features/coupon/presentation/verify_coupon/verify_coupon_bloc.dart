import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/domain/usecases/verify_coupon.dart';

part 'verify_coupon_event.dart';
part 'verify_coupon_state.dart';
part 'verify_coupon_bloc.freezed.dart';

@injectable
class VerifyCouponBloc extends Bloc<VerifyCouponEvent, VerifyCouponState> {
  VerifyCouponBloc({
    required this.verifyCoupon,
  }) : super(VerifyCouponState.initial());

  final VerifyCoupon verifyCoupon;

  @override
  Stream<VerifyCouponState> mapEventToState(
    VerifyCouponEvent event,
  ) async* {
    yield* event.map(
      changeCouponCode: (e) async* {
        yield state.copyWith(
          isSubmitting: false,
          couponCode: e.code,
          failureOrSuccess: none(),
        );
      },
      verifyCoupon: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccess: none(),
        );

        final result = await verifyCoupon(
          VerifyCouponParams(
            couponCode: state.couponCode,
            productType: 'utility',
            productId: 1,
          ),
        );

        yield state.copyWith(
          isSubmitting: false,
          failureOrSuccess: optionOf(result),
        );
      },
      setInitialState: (e) async* {},
    );
  }
}
