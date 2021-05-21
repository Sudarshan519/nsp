part of 'news_genre_bloc.dart';

@freezed
class NewsGenreState with _$NewsGenreState {
  const factory NewsGenreState.initial() = _Initial;
  const factory NewsGenreState.loading() = _Loading;
  const factory NewsGenreState.loaded(List<Genre> genre) = _Loaded;
  const factory NewsGenreState.failure(ApiFailure failure) = _Failure;
}
