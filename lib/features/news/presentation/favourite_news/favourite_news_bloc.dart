import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/news/domain/entity/news_item.dart';
import 'package:wallet_app/features/news/domain/usecase/get_favourite_news.dart';

part 'favourite_news_event.dart';
part 'favourite_news_state.dart';
part 'favourite_news_bloc.freezed.dart';

@injectable
class FavouriteNewsBloc extends Bloc<FavouriteNewsEvent, FavouriteNewsState> {
  final GetFavouriteNews getFavouriteNews;

  FavouriteNewsBloc({
    required this.getFavouriteNews,
  }) : super(const _Initial());

  @override
  Stream<FavouriteNewsState> mapEventToState(
    FavouriteNewsEvent event,
  ) async* {
    yield* event.map(fetch: (e) async* {
      yield const _Loading();

      final result = await getFavouriteNews(NoParams());

      yield result.fold(
        (failure) => const _Loaded([]),
        (news) => _Loaded(news),
      );
    }, save: (e) async* {
      await getFavouriteNews.saveNews(item: e.news);

      // refetch the data again
      yield const _Loading();

      final result = await getFavouriteNews(NoParams());

      yield result.fold(
        (failure) => const _Loaded([]),
        (news) => _Loaded(news),
      );
    });
  }
}
