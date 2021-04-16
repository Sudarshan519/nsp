part of 'news_genre_bloc.dart';

@freezed
abstract class NewsGenreEvent with _$NewsGenreEvent {
  const factory NewsGenreEvent.fetch() = _Fetch;
  const factory NewsGenreEvent.save(List<Genre> genre) = _Save;
}
