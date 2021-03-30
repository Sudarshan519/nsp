part of 'favourite_news_bloc.dart';

@freezed
abstract class FavouriteNewsState with _$FavouriteNewsState {
  const factory FavouriteNewsState.initial() = _Initial;
  const factory FavouriteNewsState.loading() = _Loading;
  const factory FavouriteNewsState.loaded(List<NewsItem> news) = _Loaded;
}
