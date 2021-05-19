import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';
import 'package:wallet_app/features/news/domain/usecase/get_news_preferences.dart';
import 'package:wallet_app/features/news/presentation/latest_news/latest_news_bloc.dart';
import 'package:wallet_app/injections/injection.dart';

part 'news_preference_event.dart';
part 'news_preference_state.dart';
part 'news_preference_bloc.freezed.dart';

@injectable
class NewsPreferenceBloc
    extends Bloc<NewsPreferenceEvent, NewsPreferenceState> {
  final GetNewsPreferences getNewsPreferences;
  List<NewsPreference>? _list;

  NewsPreferenceBloc({
    required this.getNewsPreferences,
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
          (list) {
            _list = list;
            return _Loaded(_list ?? []);
          },
        );
      },
      changeTitleStatus: (e) async* {
        final isSelected = _list?[e.index].isSelected ?? true;
        _list?[e.index].isSelected = !isSelected;
        final _count = _list?[e.index].sources?.length ?? 0;
        for (int index = 0; index < _count; index++) {
          _list?[e.index].sources?[index].isSelected = !isSelected;
        }
        yield const _Loading();
        yield _Loaded(_list ?? []);
      },
      changePreferenceStatus: (e) async* {
        _list?[e.parentIndex].sources?[e.index].isSelected =
            !(_list?[e.parentIndex].sources?[e.index].isSelected ?? true);
        yield const _Loading();
        yield _Loaded(_list ?? []);
      },
      save: (e) async* {
        await getNewsPreferences.savePreferences(preference: _list ?? []);
        getIt<LatestNewsBloc>().add(const LatestNewsEvent.pullToRefresh());
      },
    );
  }
}
