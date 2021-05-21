part of 'favourite_news_bloc.dart';

@freezed
class FavouriteNewsEvent with _$FavouriteNewsEvent {
  const factory FavouriteNewsEvent.fetch() = _Fetch;
  const factory FavouriteNewsEvent.save(NewsItem news) = _Save;
}
