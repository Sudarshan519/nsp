part of 'get_payment_methods_bloc.dart';

@freezed
class GetPaymentMethodsEvent with _$GetPaymentMethodsEvent {
  const factory GetPaymentMethodsEvent.getListOfPaymentMethods() =
      _GetListOfPaymentMethods;
}
