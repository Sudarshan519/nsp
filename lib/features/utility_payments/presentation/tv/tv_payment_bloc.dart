import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/enquiry_tv.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/tv/pay_tv.dart';

part 'tv_payment_event.dart';
part 'tv_payment_state.dart';
part 'tv_payment_bloc.freezed.dart';

@injectable
class TvPaymentBloc extends Bloc<TvPaymentEvent, TvPaymentState> {
  final PayTv payMeroTv;
  final EnquiryTv enquireMerotv;

  TvPaymentBloc(this.payMeroTv, this.enquireMerotv)
      : super(TvPaymentState.initial()) {
    on<_Started>((event, emit) => {
          emit(state.copyWith(
            productId: event.productId,
            provider: event.provider,
            key: UniqueKey(),
            failureOrSuccessOption: none(),
          ))
        });
    on<_CustomerID>((e, emit) => {
          emit(state.copyWith(
            customerId: e.customerId,
            key: state.key,
            failureOrSuccessOption: none(),
          ))
        });
    on<_ChangeAmount>(
      (event, emit) => {
        emit(state.copyWith(
          amount: event.amount,
          key: state.key,
          failureOrSuccessOption: none(),
        ))
      },
    );
    on<_PayBill>(
      (event, emit) async {
        emit(state.copyWith(
          key: UniqueKey(),
          isSubmitting: true,
        ));
        if (state.customerInfo != null) {
          final result = await payMeroTv(PayTvParams(
              provider: state.provider,
              selectedPackage: state.selectedPackage,
              customerInfo: state.customerInfo!));

          result.fold(
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

    on<_ChangePackage>(
      (event, emit) => {
        emit(state.copyWith(
          key: state.key,
          selectedPackage: event.package,
          failureOrSuccessOption: none(),
        ))
      },
    );
    on<_Enquire>(
      (e, emit) async {
        emit(state.copyWith(
          isSubmitting: true,
          key: UniqueKey(),
          failureOrSuccessOption: none(),
        ));

        final result = await enquireMerotv(EnquireTvParams(
            account: state.customerId,
            productId: state.productId,
            provider: state.provider));
        emit(result.fold(
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
            selectedPackage: data.packages.isEmpty
                ? Package(
                    packageId: '',
                    amount: double.parse(data.amount),
                    packageName: '')
                : null,
            key: UniqueKey(),
            isSubmitting: false,
            failureOrSuccessOption: optionOf(const Right(unit)),
          );
        }));
      },
    );
  }

  @override
  Stream<TvPaymentState> mapEventToState(TvPaymentEvent event) async* {
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
            selectedPackage: data.packages.isEmpty
                ? Package(
                    packageId: '',
                    amount: double.parse(data.amount),
                    packageName: '')
                : null,
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
