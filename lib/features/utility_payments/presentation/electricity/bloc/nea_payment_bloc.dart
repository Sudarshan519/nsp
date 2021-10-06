import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/enquiry_nea.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/electicity/pay_nea.dart';

part 'nea_payment_event.dart';
part 'nea_payment_state.dart';
part 'nea_payment_bloc.freezed.dart';

@injectable
class NeaPaymentBloc extends Bloc<NeaPaymentEvent, NeaPaymentState> {
  final EnquiryNea enquiryNea;
  final PayNea payNea;
  NeaPaymentBloc(this.enquiryNea, this.payNea)
      : super(NeaPaymentState.initial());

  @override
  Stream<NeaPaymentState> mapEventToState(
    NeaPaymentEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield state.copyWith(
        offices: e.offices,
        productId: e.productId,
        key: UniqueKey(),
        failureOrSuccessOption: none(),
      );
    }, changeMobileNumber: (e) async* {
      yield state.copyWith(
        mobileNumber: e.mobileNumber,
        key: state.key,
        failureOrSuccessOption: none(),
      );
    }, changeOffice: (e) async* {
      yield state.copyWith(
        selectedOffice: e.office,
        key: state.key,
        failureOrSuccessOption: none(),
      );
    }, customerID: (e) async* {
      yield state.copyWith(
        customerId: e.customerId,
        key: state.key,
        failureOrSuccessOption: none(),
      );
    }, changeScNum: (e) async* {
      yield state.copyWith(
        scNo: e.changeScNum,
        key: state.key,
        failureOrSuccessOption: none(),
      );
    }, enquire: (e) async* {
      yield state.copyWith(
        isLoading: true,
      );
      final result = await enquiryNea(EnquiryNeaParams(
        officeCode: state.selectedOffice.officeCode,
        account: state.scNo,
        customerId: state.customerId,
        productId: state.productId,
        mobileNumber: state.mobileNumber,
      ));
      yield result.fold(
          (fail) => state.copyWith(
                key: state.key,
                scNo: state.scNo,
                customerId: state.customerId,
                productId: state.productId,
                failureOrSuccessOption: optionOf(Left(fail)),
                isLoading: false,
                mobileNumber: state.mobileNumber,
              ),
          (data) => state.copyWith(
                customerInfo: data,
                scNo: state.scNo,
                customerId: state.customerId,
                productId: state.productId,
                mobileNumber: state.mobileNumber,
                key: UniqueKey(),
                isLoading: false,
                failureOrSuccessOption: optionOf(const Right(unit)),
              ));
    }, payBill: (e) async* {
      yield state.copyWith(
        key: UniqueKey(),
        isLoading: true,
      );
      if (state.customerInfo == null) return;
      final result = await payNea(state.customerInfo!);
      yield result.fold(
          (fail) => state.copyWith(
                scNo: state.scNo,
                customerId: state.customerId,
                productId: state.productId,
                key: UniqueKey(),
                customerInfo: state.customerInfo,
                failureOrSuccessOption: optionOf(Left(fail)),
                isLoading: false,
              ),
          (data) => state.copyWith(
                paymentComplete: true,
              ));
    }, resetCustomerInfo: (e) async* {
      yield state.copyWith(customerInfo: null);
    });
  }
}
