// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

// ignore: unused_element
  _FetchNewsData fetchNewsData() {
    return const _FetchNewsData();
  }

// ignore: unused_element
  _OnSpanShotEvent onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event) {
    return _OnSpanShotEvent(
      event,
    );
  }

// ignore: unused_element
  _OnCompletedEvent onCompletedEvent(Either<ApiFailure, List<NewsItem>> event) {
    return _OnCompletedEvent(
      event,
    );
  }

// ignore: unused_element
  _PullToRefresh pullToRefresh() {
    return const _PullToRefresh();
  }

// ignore: unused_element
  _PaginateIfAvailable paginateIfAvailable() {
    return const _PaginateIfAvailable();
  }
}

/// @nodoc
// ignore: unused_element
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNewsData(),
    @required TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    @required
        TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    @required TResult pullToRefresh(),
    @required TResult paginateIfAvailable(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNewsData(),
    TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult pullToRefresh(),
    TResult paginateIfAvailable(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNewsData(_FetchNewsData value),
    @required TResult onSpanShotEvent(_OnSpanShotEvent value),
    @required TResult onCompletedEvent(_OnCompletedEvent value),
    @required TResult pullToRefresh(_PullToRefresh value),
    @required TResult paginateIfAvailable(_PaginateIfAvailable value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNewsData(_FetchNewsData value),
    TResult onSpanShotEvent(_OnSpanShotEvent value),
    TResult onCompletedEvent(_OnCompletedEvent value),
    TResult pullToRefresh(_PullToRefresh value),
    TResult paginateIfAvailable(_PaginateIfAvailable value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class _$FetchNewsDataCopyWith<$Res> {
  factory _$FetchNewsDataCopyWith(
          _FetchNewsData value, $Res Function(_FetchNewsData) then) =
      __$FetchNewsDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchNewsDataCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements _$FetchNewsDataCopyWith<$Res> {
  __$FetchNewsDataCopyWithImpl(
      _FetchNewsData _value, $Res Function(_FetchNewsData) _then)
      : super(_value, (v) => _then(v as _FetchNewsData));

  @override
  _FetchNewsData get _value => super._value as _FetchNewsData;
}

/// @nodoc
class _$_FetchNewsData implements _FetchNewsData {
  const _$_FetchNewsData();

  @override
  String toString() {
    return 'NewsEvent.fetchNewsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchNewsData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNewsData(),
    @required TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    @required
        TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    @required TResult pullToRefresh(),
    @required TResult paginateIfAvailable(),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return fetchNewsData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNewsData(),
    TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult pullToRefresh(),
    TResult paginateIfAvailable(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchNewsData != null) {
      return fetchNewsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNewsData(_FetchNewsData value),
    @required TResult onSpanShotEvent(_OnSpanShotEvent value),
    @required TResult onCompletedEvent(_OnCompletedEvent value),
    @required TResult pullToRefresh(_PullToRefresh value),
    @required TResult paginateIfAvailable(_PaginateIfAvailable value),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return fetchNewsData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNewsData(_FetchNewsData value),
    TResult onSpanShotEvent(_OnSpanShotEvent value),
    TResult onCompletedEvent(_OnCompletedEvent value),
    TResult pullToRefresh(_PullToRefresh value),
    TResult paginateIfAvailable(_PaginateIfAvailable value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchNewsData != null) {
      return fetchNewsData(this);
    }
    return orElse();
  }
}

abstract class _FetchNewsData implements NewsEvent {
  const factory _FetchNewsData() = _$_FetchNewsData;
}

/// @nodoc
abstract class _$OnSpanShotEventCopyWith<$Res> {
  factory _$OnSpanShotEventCopyWith(
          _OnSpanShotEvent value, $Res Function(_OnSpanShotEvent) then) =
      __$OnSpanShotEventCopyWithImpl<$Res>;
  $Res call({Either<ApiFailure, List<NewsItem>> event});
}

/// @nodoc
class __$OnSpanShotEventCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements _$OnSpanShotEventCopyWith<$Res> {
  __$OnSpanShotEventCopyWithImpl(
      _OnSpanShotEvent _value, $Res Function(_OnSpanShotEvent) _then)
      : super(_value, (v) => _then(v as _OnSpanShotEvent));

  @override
  _OnSpanShotEvent get _value => super._value as _OnSpanShotEvent;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_OnSpanShotEvent(
      event == freezed
          ? _value.event
          : event as Either<ApiFailure, List<NewsItem>>,
    ));
  }
}

/// @nodoc
class _$_OnSpanShotEvent implements _OnSpanShotEvent {
  const _$_OnSpanShotEvent(this.event) : assert(event != null);

  @override
  final Either<ApiFailure, List<NewsItem>> event;

  @override
  String toString() {
    return 'NewsEvent.onSpanShotEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSpanShotEvent &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @JsonKey(ignore: true)
  @override
  _$OnSpanShotEventCopyWith<_OnSpanShotEvent> get copyWith =>
      __$OnSpanShotEventCopyWithImpl<_OnSpanShotEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNewsData(),
    @required TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    @required
        TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    @required TResult pullToRefresh(),
    @required TResult paginateIfAvailable(),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return onSpanShotEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNewsData(),
    TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult pullToRefresh(),
    TResult paginateIfAvailable(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSpanShotEvent != null) {
      return onSpanShotEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNewsData(_FetchNewsData value),
    @required TResult onSpanShotEvent(_OnSpanShotEvent value),
    @required TResult onCompletedEvent(_OnCompletedEvent value),
    @required TResult pullToRefresh(_PullToRefresh value),
    @required TResult paginateIfAvailable(_PaginateIfAvailable value),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return onSpanShotEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNewsData(_FetchNewsData value),
    TResult onSpanShotEvent(_OnSpanShotEvent value),
    TResult onCompletedEvent(_OnCompletedEvent value),
    TResult pullToRefresh(_PullToRefresh value),
    TResult paginateIfAvailable(_PaginateIfAvailable value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSpanShotEvent != null) {
      return onSpanShotEvent(this);
    }
    return orElse();
  }
}

abstract class _OnSpanShotEvent implements NewsEvent {
  const factory _OnSpanShotEvent(Either<ApiFailure, List<NewsItem>> event) =
      _$_OnSpanShotEvent;

  Either<ApiFailure, List<NewsItem>> get event;
  @JsonKey(ignore: true)
  _$OnSpanShotEventCopyWith<_OnSpanShotEvent> get copyWith;
}

/// @nodoc
abstract class _$OnCompletedEventCopyWith<$Res> {
  factory _$OnCompletedEventCopyWith(
          _OnCompletedEvent value, $Res Function(_OnCompletedEvent) then) =
      __$OnCompletedEventCopyWithImpl<$Res>;
  $Res call({Either<ApiFailure, List<NewsItem>> event});
}

/// @nodoc
class __$OnCompletedEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res>
    implements _$OnCompletedEventCopyWith<$Res> {
  __$OnCompletedEventCopyWithImpl(
      _OnCompletedEvent _value, $Res Function(_OnCompletedEvent) _then)
      : super(_value, (v) => _then(v as _OnCompletedEvent));

  @override
  _OnCompletedEvent get _value => super._value as _OnCompletedEvent;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_OnCompletedEvent(
      event == freezed
          ? _value.event
          : event as Either<ApiFailure, List<NewsItem>>,
    ));
  }
}

/// @nodoc
class _$_OnCompletedEvent implements _OnCompletedEvent {
  const _$_OnCompletedEvent(this.event) : assert(event != null);

  @override
  final Either<ApiFailure, List<NewsItem>> event;

  @override
  String toString() {
    return 'NewsEvent.onCompletedEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnCompletedEvent &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @JsonKey(ignore: true)
  @override
  _$OnCompletedEventCopyWith<_OnCompletedEvent> get copyWith =>
      __$OnCompletedEventCopyWithImpl<_OnCompletedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNewsData(),
    @required TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    @required
        TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    @required TResult pullToRefresh(),
    @required TResult paginateIfAvailable(),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return onCompletedEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNewsData(),
    TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult pullToRefresh(),
    TResult paginateIfAvailable(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCompletedEvent != null) {
      return onCompletedEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNewsData(_FetchNewsData value),
    @required TResult onSpanShotEvent(_OnSpanShotEvent value),
    @required TResult onCompletedEvent(_OnCompletedEvent value),
    @required TResult pullToRefresh(_PullToRefresh value),
    @required TResult paginateIfAvailable(_PaginateIfAvailable value),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return onCompletedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNewsData(_FetchNewsData value),
    TResult onSpanShotEvent(_OnSpanShotEvent value),
    TResult onCompletedEvent(_OnCompletedEvent value),
    TResult pullToRefresh(_PullToRefresh value),
    TResult paginateIfAvailable(_PaginateIfAvailable value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCompletedEvent != null) {
      return onCompletedEvent(this);
    }
    return orElse();
  }
}

abstract class _OnCompletedEvent implements NewsEvent {
  const factory _OnCompletedEvent(Either<ApiFailure, List<NewsItem>> event) =
      _$_OnCompletedEvent;

  Either<ApiFailure, List<NewsItem>> get event;
  @JsonKey(ignore: true)
  _$OnCompletedEventCopyWith<_OnCompletedEvent> get copyWith;
}

/// @nodoc
abstract class _$PullToRefreshCopyWith<$Res> {
  factory _$PullToRefreshCopyWith(
          _PullToRefresh value, $Res Function(_PullToRefresh) then) =
      __$PullToRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$PullToRefreshCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements _$PullToRefreshCopyWith<$Res> {
  __$PullToRefreshCopyWithImpl(
      _PullToRefresh _value, $Res Function(_PullToRefresh) _then)
      : super(_value, (v) => _then(v as _PullToRefresh));

  @override
  _PullToRefresh get _value => super._value as _PullToRefresh;
}

/// @nodoc
class _$_PullToRefresh implements _PullToRefresh {
  const _$_PullToRefresh();

  @override
  String toString() {
    return 'NewsEvent.pullToRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PullToRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNewsData(),
    @required TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    @required
        TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    @required TResult pullToRefresh(),
    @required TResult paginateIfAvailable(),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return pullToRefresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNewsData(),
    TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult pullToRefresh(),
    TResult paginateIfAvailable(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pullToRefresh != null) {
      return pullToRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNewsData(_FetchNewsData value),
    @required TResult onSpanShotEvent(_OnSpanShotEvent value),
    @required TResult onCompletedEvent(_OnCompletedEvent value),
    @required TResult pullToRefresh(_PullToRefresh value),
    @required TResult paginateIfAvailable(_PaginateIfAvailable value),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return pullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNewsData(_FetchNewsData value),
    TResult onSpanShotEvent(_OnSpanShotEvent value),
    TResult onCompletedEvent(_OnCompletedEvent value),
    TResult pullToRefresh(_PullToRefresh value),
    TResult paginateIfAvailable(_PaginateIfAvailable value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pullToRefresh != null) {
      return pullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullToRefresh implements NewsEvent {
  const factory _PullToRefresh() = _$_PullToRefresh;
}

/// @nodoc
abstract class _$PaginateIfAvailableCopyWith<$Res> {
  factory _$PaginateIfAvailableCopyWith(_PaginateIfAvailable value,
          $Res Function(_PaginateIfAvailable) then) =
      __$PaginateIfAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaginateIfAvailableCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res>
    implements _$PaginateIfAvailableCopyWith<$Res> {
  __$PaginateIfAvailableCopyWithImpl(
      _PaginateIfAvailable _value, $Res Function(_PaginateIfAvailable) _then)
      : super(_value, (v) => _then(v as _PaginateIfAvailable));

  @override
  _PaginateIfAvailable get _value => super._value as _PaginateIfAvailable;
}

/// @nodoc
class _$_PaginateIfAvailable implements _PaginateIfAvailable {
  const _$_PaginateIfAvailable();

  @override
  String toString() {
    return 'NewsEvent.paginateIfAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaginateIfAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchNewsData(),
    @required TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    @required
        TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    @required TResult pullToRefresh(),
    @required TResult paginateIfAvailable(),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return paginateIfAvailable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchNewsData(),
    TResult onSpanShotEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult onCompletedEvent(Either<ApiFailure, List<NewsItem>> event),
    TResult pullToRefresh(),
    TResult paginateIfAvailable(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paginateIfAvailable != null) {
      return paginateIfAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchNewsData(_FetchNewsData value),
    @required TResult onSpanShotEvent(_OnSpanShotEvent value),
    @required TResult onCompletedEvent(_OnCompletedEvent value),
    @required TResult pullToRefresh(_PullToRefresh value),
    @required TResult paginateIfAvailable(_PaginateIfAvailable value),
  }) {
    assert(fetchNewsData != null);
    assert(onSpanShotEvent != null);
    assert(onCompletedEvent != null);
    assert(pullToRefresh != null);
    assert(paginateIfAvailable != null);
    return paginateIfAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchNewsData(_FetchNewsData value),
    TResult onSpanShotEvent(_OnSpanShotEvent value),
    TResult onCompletedEvent(_OnCompletedEvent value),
    TResult pullToRefresh(_PullToRefresh value),
    TResult paginateIfAvailable(_PaginateIfAvailable value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paginateIfAvailable != null) {
      return paginateIfAvailable(this);
    }
    return orElse();
  }
}

abstract class _PaginateIfAvailable implements NewsEvent {
  const factory _PaginateIfAvailable() = _$_PaginateIfAvailable;
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadingWith loadingWith(List<NewsItem> offlinedata) {
    return _LoadingWith(
      offlinedata,
    );
  }

// ignore: unused_element
  _Loaded loaded(List<NewsItem> newsData) {
    return _Loaded(
      newsData,
    );
  }

// ignore: unused_element
  _ShowPullToRefresh showPullToRefresh(List<NewsItem> newsData) {
    return _ShowPullToRefresh(
      newsData,
    );
  }

// ignore: unused_element
  _Pagination pagination(List<NewsItem> newsData) {
    return _Pagination(
      newsData,
    );
  }

// ignore: unused_element
  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadingWithCopyWith<$Res> {
  factory _$LoadingWithCopyWith(
          _LoadingWith value, $Res Function(_LoadingWith) then) =
      __$LoadingWithCopyWithImpl<$Res>;
  $Res call({List<NewsItem> offlinedata});
}

/// @nodoc
class __$LoadingWithCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingWithCopyWith<$Res> {
  __$LoadingWithCopyWithImpl(
      _LoadingWith _value, $Res Function(_LoadingWith) _then)
      : super(_value, (v) => _then(v as _LoadingWith));

  @override
  _LoadingWith get _value => super._value as _LoadingWith;

  @override
  $Res call({
    Object offlinedata = freezed,
  }) {
    return _then(_LoadingWith(
      offlinedata == freezed
          ? _value.offlinedata
          : offlinedata as List<NewsItem>,
    ));
  }
}

/// @nodoc
class _$_LoadingWith implements _LoadingWith {
  const _$_LoadingWith(this.offlinedata) : assert(offlinedata != null);

  @override
  final List<NewsItem> offlinedata;

  @override
  String toString() {
    return 'NewsState.loadingWith(offlinedata: $offlinedata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingWith &&
            (identical(other.offlinedata, offlinedata) ||
                const DeepCollectionEquality()
                    .equals(other.offlinedata, offlinedata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offlinedata);

  @JsonKey(ignore: true)
  @override
  _$LoadingWithCopyWith<_LoadingWith> get copyWith =>
      __$LoadingWithCopyWithImpl<_LoadingWith>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return loadingWith(offlinedata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingWith != null) {
      return loadingWith(offlinedata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return loadingWith(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingWith != null) {
      return loadingWith(this);
    }
    return orElse();
  }
}

abstract class _LoadingWith implements NewsState {
  const factory _LoadingWith(List<NewsItem> offlinedata) = _$_LoadingWith;

  List<NewsItem> get offlinedata;
  @JsonKey(ignore: true)
  _$LoadingWithCopyWith<_LoadingWith> get copyWith;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<NewsItem> newsData});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object newsData = freezed,
  }) {
    return _then(_Loaded(
      newsData == freezed ? _value.newsData : newsData as List<NewsItem>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.newsData) : assert(newsData != null);

  @override
  final List<NewsItem> newsData;

  @override
  String toString() {
    return 'NewsState.loaded(newsData: $newsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.newsData, newsData) ||
                const DeepCollectionEquality()
                    .equals(other.newsData, newsData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsData);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return loaded(newsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(newsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NewsState {
  const factory _Loaded(List<NewsItem> newsData) = _$_Loaded;

  List<NewsItem> get newsData;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$ShowPullToRefreshCopyWith<$Res> {
  factory _$ShowPullToRefreshCopyWith(
          _ShowPullToRefresh value, $Res Function(_ShowPullToRefresh) then) =
      __$ShowPullToRefreshCopyWithImpl<$Res>;
  $Res call({List<NewsItem> newsData});
}

/// @nodoc
class __$ShowPullToRefreshCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$ShowPullToRefreshCopyWith<$Res> {
  __$ShowPullToRefreshCopyWithImpl(
      _ShowPullToRefresh _value, $Res Function(_ShowPullToRefresh) _then)
      : super(_value, (v) => _then(v as _ShowPullToRefresh));

  @override
  _ShowPullToRefresh get _value => super._value as _ShowPullToRefresh;

  @override
  $Res call({
    Object newsData = freezed,
  }) {
    return _then(_ShowPullToRefresh(
      newsData == freezed ? _value.newsData : newsData as List<NewsItem>,
    ));
  }
}

/// @nodoc
class _$_ShowPullToRefresh implements _ShowPullToRefresh {
  const _$_ShowPullToRefresh(this.newsData) : assert(newsData != null);

  @override
  final List<NewsItem> newsData;

  @override
  String toString() {
    return 'NewsState.showPullToRefresh(newsData: $newsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowPullToRefresh &&
            (identical(other.newsData, newsData) ||
                const DeepCollectionEquality()
                    .equals(other.newsData, newsData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsData);

  @JsonKey(ignore: true)
  @override
  _$ShowPullToRefreshCopyWith<_ShowPullToRefresh> get copyWith =>
      __$ShowPullToRefreshCopyWithImpl<_ShowPullToRefresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return showPullToRefresh(newsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPullToRefresh != null) {
      return showPullToRefresh(newsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return showPullToRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showPullToRefresh != null) {
      return showPullToRefresh(this);
    }
    return orElse();
  }
}

abstract class _ShowPullToRefresh implements NewsState {
  const factory _ShowPullToRefresh(List<NewsItem> newsData) =
      _$_ShowPullToRefresh;

  List<NewsItem> get newsData;
  @JsonKey(ignore: true)
  _$ShowPullToRefreshCopyWith<_ShowPullToRefresh> get copyWith;
}

/// @nodoc
abstract class _$PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(
          _Pagination value, $Res Function(_Pagination) then) =
      __$PaginationCopyWithImpl<$Res>;
  $Res call({List<NewsItem> newsData});
}

/// @nodoc
class __$PaginationCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(
      _Pagination _value, $Res Function(_Pagination) _then)
      : super(_value, (v) => _then(v as _Pagination));

  @override
  _Pagination get _value => super._value as _Pagination;

  @override
  $Res call({
    Object newsData = freezed,
  }) {
    return _then(_Pagination(
      newsData == freezed ? _value.newsData : newsData as List<NewsItem>,
    ));
  }
}

/// @nodoc
class _$_Pagination implements _Pagination {
  const _$_Pagination(this.newsData) : assert(newsData != null);

  @override
  final List<NewsItem> newsData;

  @override
  String toString() {
    return 'NewsState.pagination(newsData: $newsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pagination &&
            (identical(other.newsData, newsData) ||
                const DeepCollectionEquality()
                    .equals(other.newsData, newsData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsData);

  @JsonKey(ignore: true)
  @override
  _$PaginationCopyWith<_Pagination> get copyWith =>
      __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return pagination(newsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pagination != null) {
      return pagination(newsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return pagination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pagination != null) {
      return pagination(this);
    }
    return orElse();
  }
}

abstract class _Pagination implements NewsState {
  const factory _Pagination(List<NewsItem> newsData) = _$_Pagination;

  List<NewsItem> get newsData;
  @JsonKey(ignore: true)
  _$PaginationCopyWith<_Pagination> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'NewsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadingWith(List<NewsItem> offlinedata),
    @required TResult loaded(List<NewsItem> newsData),
    @required TResult showPullToRefresh(List<NewsItem> newsData),
    @required TResult pagination(List<NewsItem> newsData),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadingWith(List<NewsItem> offlinedata),
    TResult loaded(List<NewsItem> newsData),
    TResult showPullToRefresh(List<NewsItem> newsData),
    TResult pagination(List<NewsItem> newsData),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loadingWith(_LoadingWith value),
    @required TResult loaded(_Loaded value),
    @required TResult showPullToRefresh(_ShowPullToRefresh value),
    @required TResult pagination(_Pagination value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadingWith != null);
    assert(loaded != null);
    assert(showPullToRefresh != null);
    assert(pagination != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loadingWith(_LoadingWith value),
    TResult loaded(_Loaded value),
    TResult showPullToRefresh(_ShowPullToRefresh value),
    TResult pagination(_Pagination value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NewsState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}
