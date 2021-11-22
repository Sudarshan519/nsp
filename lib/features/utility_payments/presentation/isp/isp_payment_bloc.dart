import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/isp/enquiry_isp.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/isp/pay_isp.dart';

part 'isp_payment_event.dart';
part 'isp_payment_state.dart';
part 'isp_payment_bloc.freezed.dart';

@injectable
class ISPPaymentBloc extends Bloc<ISPPaymentEvent, ISPPaymentState> {
  final PayISP payISP;
  final EnquiryISP enquireISP;

  ISPPaymentBloc(this.payISP, this.enquireISP)
      : super(ISPPaymentState.initial());

  @override
  Stream<ISPPaymentState> mapEventToState(ISPPaymentEvent event) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(
          productId: e.productId,
          provider: e.provider,
          key: UniqueKey(),
          failureOrSuccessOption: none(),
        );
      },
      changeAccountNumber: (e) async* {
        yield state.copyWith(
          accountNumber: e.accountNumber,
          key: state.key,
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

        final result = await enquireISP(EnquireISPParams(
          account: state.accountNumber,
          productId: state.productId,
          provider: state.provider,
          phone: state.phone,
          customerId: state.customerId,
        ));
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
          final result = await payISP(PayISPParams(
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
      changePhone: (value) async* {
        yield state.copyWith(
          key: state.key,
          phone: value.phone,
          failureOrSuccessOption: none(),
        );
      },
    );
  }
}
