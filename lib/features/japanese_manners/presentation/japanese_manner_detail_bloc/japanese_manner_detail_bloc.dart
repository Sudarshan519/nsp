import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart';

part 'japanese_manner_detail_event.dart';
part 'japanese_manner_detail_state.dart';
part 'japanese_manner_detail_bloc.freezed.dart';

@injectable
class JapaneseMannerDetailBloc
    extends Bloc<JapaneseMannerDetailEvent, JapaneseMannerDetailState> {
  JapaneseMannerDetailBloc({required this.getJpMannerDetail})
      : super(const _Loading());

  final GetJapaneseMannerDetail getJpMannerDetail;

  @override
  Stream<JapaneseMannerDetailState> mapEventToState(
    JapaneseMannerDetailEvent event,
  ) async* {
    yield* event.map(getJPMannerDetail: (d) async* {
      yield const _Loading();
      final result =
          await getJpMannerDetail(GetJapaneseMannerDetailParams(id: d.id));
      yield result.fold((l) {
        return _Failure(l);
      }, (r) {
        return _LoadedIndividual(r);
      });
    });
  }
}
