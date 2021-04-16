import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_preferences.dart';

part 'news_preference_event.dart';
part 'news_preference_state.dart';
part 'news_preference_bloc.freezed.dart';

@injectable
class NewsPreferenceBloc
    extends Bloc<NewsPreferenceEvent, NewsPreferenceState> {
  final GetNewsPreferences getNewsPreferences;

  NewsPreferenceBloc({
    @required this.getNewsPreferences,
  }) : super(const _Initial());

  @override
  Stream<NewsPreferenceState> mapEventToState(
    NewsPreferenceEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield const _Loading();
        final result = await getNewsPreferences(NoParams());

        yield result.fold(
          (failure) => _Failure(failure),
          (list) => _Loaded(list),
        );
      },
      save: (e) async* {},
    );
  }
}
