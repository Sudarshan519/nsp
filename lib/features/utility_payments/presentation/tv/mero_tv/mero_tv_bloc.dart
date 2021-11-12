import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/mero_tv/enquiry_tv.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/mero_tv/pay_tv.dart';

part 'mero_tv_event.dart';
part 'mero_tv_state.dart';
part 'mero_tv_bloc.freezed.dart';

@injectable
class MeroTvBloc extends Bloc<MeroTvEvent, MeroTvState> {
  final PayMeroTv payMeroTv;
  final EnquiryTv enquireMerotv;

  MeroTvBloc(this.payMeroTv, this.enquireMerotv) : super(MeroTvState.initial());

  @override
  Stream<MeroTvState> mapEventToState(MeroTvEvent event) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(
          productId: e.productId,
          provider: e.provider,
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
      enquire: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          key: UniqueKey(),
          failureOrSuccessOption: none(),
        );

        final result = await enquireMerotv(EnquireTvParams(
            account: state.customerId,
            productId: state.productId,
            provider: state.provider));
        yield result.fold(
            (fail) => state.copyWith(
                  key: state.key,
                  customerId: state.customerId,
                  productId: state.productId,
                  failureOrSuccessOption: optionOf(Left(fail)),
                  isSubmitting: false,
                ), (data) {
          return state.copyWith(
            customerInfo: data,
            customerId: state.customerId,
            productId: state.productId,
            selectedPackage: data.packages.isNotEmpty
                ? data.packages.first
                : Package(
                    packageId: '',
                    amount: double.parse(data.amount),
                    packageName: ''),
            key: UniqueKey(),
            isSubmitting: false,
            failureOrSuccessOption: optionOf(const Right(unit)),
          );
        });
      },
      changePackage: (e) async* {
        yield state.copyWith(
          key: state.key,
          selectedPackage: e.package,
          failureOrSuccessOption: none(),
        );
      },
      payBill: (e) async* {
        yield state.copyWith(
          key: UniqueKey(),
          isSubmitting: true,
        );
        if (state.customerInfo != null) {
          final result = await payMeroTv(PayTvParams(
              provider: state.provider,
              selectedPackage: state.selectedPackage,
              customerInfo: state.customerInfo!));

          yield result.fold(
              (fail) => state.copyWith(
                    customerId: state.customerId,
                    productId: state.productId,
                    key: UniqueKey(),
                    isSubmitting: false,
                    customerInfo: state.customerInfo,
                    failureOrSuccessOption: optionOf(Left(fail)),
                  ),
              (data) => state.copyWith(
                    isSubmitting: false,
                    isPaymentComplete: true,
                    failureOrSuccessOption: optionOf(Right(data)),
                  ));
        }
      },
    );
  }
}
