part of 'news_genre_bloc.dart';

@freezed
class NewsGenreEvent with _$NewsGenreEvent {
  const factory NewsGenreEvent.fetch() = _Fetch;
  const factory NewsGenreEvent.changeGenre(int index) = _ChangeGenre;
  const factory NewsGenreEvent.save() = _Save;
}
