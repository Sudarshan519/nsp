// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_preference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsPreferenceEventTearOff {
  const _$NewsPreferenceEventTearOff();

// ignore: unused_element
  _Fetch fetch() {
    return const _Fetch();
  }

// ignore: unused_element
  _ChangeTitleStatus changeTitleStatus(int index) {
    return _ChangeTitleStatus(
      index,
    );
  }

// ignore: unused_element
  _ChangePreferenceStatus changePreferenceStatus(int parentIndex, int index) {
    return _ChangePreferenceStatus(
      parentIndex,
      index,
    );
  }

// ignore: unused_element
  _Save save() {
    return const _Save();
  }
}

/// @nodoc
// ignore: unused_element
const $NewsPreferenceEvent = _$NewsPreferenceEventTearOff();

/// @nodoc
mixin _$NewsPreferenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(),
    @required TResult changeTitleStatus(int index),
    @required TResult changePreferenceStatus(int parentIndex, int index),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    TResult changeTitleStatus(int index),
    TResult changePreferenceStatus(int parentIndex, int index),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
    @required TResult changeTitleStatus(_ChangeTitleStatus value),
    @required TResult changePreferenceStatus(_ChangePreferenceStatus value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
    TResult changeTitleStatus(_ChangeTitleStatus value),
    TResult changePreferenceStatus(_ChangePreferenceStatus value),
    TResult save(_Save value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NewsPreferenceEventCopyWith<$Res> {
  factory $NewsPreferenceEventCopyWith(
          NewsPreferenceEvent value, $Res Function(NewsPreferenceEvent) then) =
      _$NewsPreferenceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsPreferenceEventCopyWithImpl<$Res>
    implements $NewsPreferenceEventCopyWith<$Res> {
  _$NewsPreferenceEventCopyWithImpl(this._value, this._then);

  final NewsPreferenceEvent _value;
  // ignore: unused_field
  final $Res Function(NewsPreferenceEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$NewsPreferenceEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;
}

/// @nodoc
class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'NewsPreferenceEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(),
    @required TResult changeTitleStatus(int index),
    @required TResult changePreferenceStatus(int parentIndex, int index),
    @required TResult save(),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    TResult changeTitleStatus(int index),
    TResult changePreferenceStatus(int parentIndex, int index),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
    @required TResult changeTitleStatus(_ChangeTitleStatus value),
    @required TResult changePreferenceStatus(_ChangePreferenceStatus value),
    @required TResult save(_Save value),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
    TResult changeTitleStatus(_ChangeTitleStatus value),
    TResult changePreferenceStatus(_ChangePreferenceStatus value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements NewsPreferenceEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$ChangeTitleStatusCopyWith<$Res> {
  factory _$ChangeTitleStatusCopyWith(
          _ChangeTitleStatus value, $Res Function(_ChangeTitleStatus) then) =
      __$ChangeTitleStatusCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$ChangeTitleStatusCopyWithImpl<$Res>
    extends _$NewsPreferenceEventCopyWithImpl<$Res>
    implements _$ChangeTitleStatusCopyWith<$Res> {
  __$ChangeTitleStatusCopyWithImpl(
      _ChangeTitleStatus _value, $Res Function(_ChangeTitleStatus) _then)
      : super(_value, (v) => _then(v as _ChangeTitleStatus));

  @override
  _ChangeTitleStatus get _value => super._value as _ChangeTitleStatus;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_ChangeTitleStatus(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_ChangeTitleStatus implements _ChangeTitleStatus {
  const _$_ChangeTitleStatus(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NewsPreferenceEvent.changeTitleStatus(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeTitleStatus &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ChangeTitleStatusCopyWith<_ChangeTitleStatus> get copyWith =>
      __$ChangeTitleStatusCopyWithImpl<_ChangeTitleStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(),
    @required TResult changeTitleStatus(int index),
    @required TResult changePreferenceStatus(int parentIndex, int index),
    @required TResult save(),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return changeTitleStatus(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    TResult changeTitleStatus(int index),
    TResult changePreferenceStatus(int parentIndex, int index),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTitleStatus != null) {
      return changeTitleStatus(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
    @required TResult changeTitleStatus(_ChangeTitleStatus value),
    @required TResult changePreferenceStatus(_ChangePreferenceStatus value),
    @required TResult save(_Save value),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return changeTitleStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
    TResult changeTitleStatus(_ChangeTitleStatus value),
    TResult changePreferenceStatus(_ChangePreferenceStatus value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTitleStatus != null) {
      return changeTitleStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeTitleStatus implements NewsPreferenceEvent {
  const factory _ChangeTitleStatus(int index) = _$_ChangeTitleStatus;

  int get index;
  @JsonKey(ignore: true)
  _$ChangeTitleStatusCopyWith<_ChangeTitleStatus> get copyWith;
}

/// @nodoc
abstract class _$ChangePreferenceStatusCopyWith<$Res> {
  factory _$ChangePreferenceStatusCopyWith(_ChangePreferenceStatus value,
          $Res Function(_ChangePreferenceStatus) then) =
      __$ChangePreferenceStatusCopyWithImpl<$Res>;
  $Res call({int parentIndex, int index});
}

/// @nodoc
class __$ChangePreferenceStatusCopyWithImpl<$Res>
    extends _$NewsPreferenceEventCopyWithImpl<$Res>
    implements _$ChangePreferenceStatusCopyWith<$Res> {
  __$ChangePreferenceStatusCopyWithImpl(_ChangePreferenceStatus _value,
      $Res Function(_ChangePreferenceStatus) _then)
      : super(_value, (v) => _then(v as _ChangePreferenceStatus));

  @override
  _ChangePreferenceStatus get _value => super._value as _ChangePreferenceStatus;

  @override
  $Res call({
    Object parentIndex = freezed,
    Object index = freezed,
  }) {
    return _then(_ChangePreferenceStatus(
      parentIndex == freezed ? _value.parentIndex : parentIndex as int,
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_ChangePreferenceStatus implements _ChangePreferenceStatus {
  const _$_ChangePreferenceStatus(this.parentIndex, this.index)
      : assert(parentIndex != null),
        assert(index != null);

  @override
  final int parentIndex;
  @override
  final int index;

  @override
  String toString() {
    return 'NewsPreferenceEvent.changePreferenceStatus(parentIndex: $parentIndex, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePreferenceStatus &&
            (identical(other.parentIndex, parentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.parentIndex, parentIndex)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parentIndex) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ChangePreferenceStatusCopyWith<_ChangePreferenceStatus> get copyWith =>
      __$ChangePreferenceStatusCopyWithImpl<_ChangePreferenceStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(),
    @required TResult changeTitleStatus(int index),
    @required TResult changePreferenceStatus(int parentIndex, int index),
    @required TResult save(),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return changePreferenceStatus(parentIndex, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    TResult changeTitleStatus(int index),
    TResult changePreferenceStatus(int parentIndex, int index),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePreferenceStatus != null) {
      return changePreferenceStatus(parentIndex, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
    @required TResult changeTitleStatus(_ChangeTitleStatus value),
    @required TResult changePreferenceStatus(_ChangePreferenceStatus value),
    @required TResult save(_Save value),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return changePreferenceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
    TResult changeTitleStatus(_ChangeTitleStatus value),
    TResult changePreferenceStatus(_ChangePreferenceStatus value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePreferenceStatus != null) {
      return changePreferenceStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangePreferenceStatus implements NewsPreferenceEvent {
  const factory _ChangePreferenceStatus(int parentIndex, int index) =
      _$_ChangePreferenceStatus;

  int get parentIndex;
  int get index;
  @JsonKey(ignore: true)
  _$ChangePreferenceStatusCopyWith<_ChangePreferenceStatus> get copyWith;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$NewsPreferenceEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;
}

/// @nodoc
class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'NewsPreferenceEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(),
    @required TResult changeTitleStatus(int index),
    @required TResult changePreferenceStatus(int parentIndex, int index),
    @required TResult save(),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    TResult changeTitleStatus(int index),
    TResult changePreferenceStatus(int parentIndex, int index),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
    @required TResult changeTitleStatus(_ChangeTitleStatus value),
    @required TResult changePreferenceStatus(_ChangePreferenceStatus value),
    @required TResult save(_Save value),
  }) {
    assert(fetch != null);
    assert(changeTitleStatus != null);
    assert(changePreferenceStatus != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
    TResult changeTitleStatus(_ChangeTitleStatus value),
    TResult changePreferenceStatus(_ChangePreferenceStatus value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements NewsPreferenceEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$NewsPreferenceStateTearOff {
  const _$NewsPreferenceStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(List<NewsPreference> genre) {
    return _Loaded(
      genre,
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
const $NewsPreferenceState = _$NewsPreferenceStateTearOff();

/// @nodoc
mixin _$NewsPreferenceState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NewsPreference> genre),
    @required TResult failure(ApiFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NewsPreference> genre),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NewsPreferenceStateCopyWith<$Res> {
  factory $NewsPreferenceStateCopyWith(
          NewsPreferenceState value, $Res Function(NewsPreferenceState) then) =
      _$NewsPreferenceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsPreferenceStateCopyWithImpl<$Res>
    implements $NewsPreferenceStateCopyWith<$Res> {
  _$NewsPreferenceStateCopyWithImpl(this._value, this._then);

  final NewsPreferenceState _value;
  // ignore: unused_field
  final $Res Function(NewsPreferenceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res>
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
    return 'NewsPreferenceState.initial()';
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
    @required TResult loaded(List<NewsPreference> genre),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NewsPreference> genre),
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
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
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

abstract class _Initial implements NewsPreferenceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res>
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
    return 'NewsPreferenceState.loading()';
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
    @required TResult loaded(List<NewsPreference> genre),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NewsPreference> genre),
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
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
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

abstract class _Loading implements NewsPreferenceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<NewsPreference> genre});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(_Loaded(
      genre == freezed ? _value.genre : genre as List<NewsPreference>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.genre) : assert(genre != null);

  @override
  final List<NewsPreference> genre;

  @override
  String toString() {
    return 'NewsPreferenceState.loaded(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NewsPreference> genre),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NewsPreference> genre),
    TResult failure(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
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

abstract class _Loaded implements NewsPreferenceState {
  const factory _Loaded(List<NewsPreference> genre) = _$_Loaded;

  List<NewsPreference> get genre;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res>
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
    return 'NewsPreferenceState.failure(failure: $failure)';
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
    @required TResult loaded(List<NewsPreference> genre),
    @required TResult failure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NewsPreference> genre),
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
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
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

abstract class _Failure implements NewsPreferenceState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}
