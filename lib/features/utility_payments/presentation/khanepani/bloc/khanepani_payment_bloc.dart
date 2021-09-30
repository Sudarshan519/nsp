import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_customer_info.dart';
import 'package:wallet_app/features/utility_payments/domain/entities/payment_office.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart';
import 'package:wallet_app/features/utility_payments/domain/usecases/khanepani/pay_khanepani.dart';

part 'khanepani_payment_event.dart';
part 'khanepani_payment_state.dart';
part 'khanepani_payment_bloc.freezed.dart';

@injectable
class KhanepaniPaymentBloc
    extends Bloc<KhanepaniPaymentEvent, KhanepaniPaymentState> {
  final EnquireKhanepani enquiryKhanepani;
  final PayKhanepani payKhanepani;
  KhanepaniPaymentBloc(this.enquiryKhanepani, this.payKhanepani)
      : super(KhanepaniPaymentState.initial());

  @override
  Stream<KhanepaniPaymentState> mapEventToState(
    KhanepaniPaymentEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield state.copyWith(
        offices: e.offices,
        productId: e.productId,
        key: UniqueKey(),
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
      final result = await enquiryKhanepani(EnquireKhanepaniParams(
        officeCode: state.selectedOffice.officeCode,
        account: state.scNo,
        customerId: state.customerId,
        productId: state.productId,
      ));
      yield result.fold(
          (fail) => state.copyWith(
                key: state.key,
                scNo: state.scNo,
                customerId: state.customerId,
                productId: state.productId,
                failureOrSuccessOption: optionOf(Left(fail)),
                isLoading: false,
              ),
          (data) => state.copyWith(
                customerInfo: data,
                scNo: state.scNo,
                customerId: state.customerId,
                productId: state.productId,
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
      final result = await payKhanepani(state.customerInfo!);
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
