part of 'delete_card_bloc.dart';

@freezed
class DeleteCardEvent with _$DeleteCardEvent {
  const factory DeleteCardEvent.deleteCard(int id) = _DeleteCard;
}
