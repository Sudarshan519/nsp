import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_categories.dart';
import 'package:wallet_app/features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart';

part 'japanese_manner_categories_event.dart';
part 'japanese_manner_categories_state.dart';
part 'japanese_manner_categories_bloc.freezed.dart';

@injectable
class JapaneseMannerCategoriesBloc
    extends Bloc<JapaneseMannerCategoriesEvent, JapaneseMannerCategoriesState> {
  final GetJapaneseMannerCategories getJapaneseMannerCategories;

  JapaneseMannerCategoriesBloc({
    required this.getJapaneseMannerCategories,
  }) : super(const _Initial());

  @override
  Stream<JapaneseMannerCategoriesState> mapEventToState(
    JapaneseMannerCategoriesEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield const _Loading();
        final result = await getJapaneseMannerCategories(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (categories) => _Loaded(categories),
        );
      },
    );
  }
}
