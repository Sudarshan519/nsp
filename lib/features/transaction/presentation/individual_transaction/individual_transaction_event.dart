part of 'individual_transaction_bloc.dart';

@freezed
class IndividualTransactionEvent with _$IndividualTransactionEvent {
  const factory IndividualTransactionEvent.fetchIndividualTransactionData(
      int id) = _FetchIndividualTransactionData;
}
