import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/load_balance/domain/usecases/delete_card.dart';

part 'delete_card_event.dart';
part 'delete_card_state.dart';
part 'delete_card_bloc.freezed.dart';

@injectable
class DeleteCardBloc extends Bloc<DeleteCardEvent, DeleteCardState> {
  DeleteCardBloc({
    required this.deleteCard,
  }) : super(const _Initial());

  final DeleteCard deleteCard;

  @override
  Stream<DeleteCardState> mapEventToState(
    DeleteCardEvent event,
  ) async* {
    yield* event.map(
      deleteCard: (e) async* {
        yield const _Loading();

        final result = await deleteCard(DeleteCardParams(id: e.id));

        yield result.fold(
          (failure) => _Failure(failure),
          (_) => _Success(e.id),
        );
      },
    );
  }
}
