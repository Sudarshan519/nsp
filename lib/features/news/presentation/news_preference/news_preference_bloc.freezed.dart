// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_preference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsPreferenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int index) changeTitleStatus,
    required TResult Function(int parentIndex, int index)
        changePreferenceStatus,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int index)? changeTitleStatus,
    TResult? Function(int parentIndex, int index)? changePreferenceStatus,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int index)? changeTitleStatus,
    TResult Function(int parentIndex, int index)? changePreferenceStatus,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeTitleStatus value) changeTitleStatus,
    required TResult Function(_ChangePreferenceStatus value)
        changePreferenceStatus,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult? Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsPreferenceEventCopyWith<$Res> {
  factory $NewsPreferenceEventCopyWith(
          NewsPreferenceEvent value, $Res Function(NewsPreferenceEvent) then) =
      _$NewsPreferenceEventCopyWithImpl<$Res, NewsPreferenceEvent>;
}

/// @nodoc
class _$NewsPreferenceEventCopyWithImpl<$Res, $Val extends NewsPreferenceEvent>
    implements $NewsPreferenceEventCopyWith<$Res> {
  _$NewsPreferenceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$NewsPreferenceEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int index) changeTitleStatus,
    required TResult Function(int parentIndex, int index)
        changePreferenceStatus,
    required TResult Function() save,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int index)? changeTitleStatus,
    TResult? Function(int parentIndex, int index)? changePreferenceStatus,
    TResult? Function()? save,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int index)? changeTitleStatus,
    TResult Function(int parentIndex, int index)? changePreferenceStatus,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeTitleStatus value) changeTitleStatus,
    required TResult Function(_ChangePreferenceStatus value)
        changePreferenceStatus,
    required TResult Function(_Save value) save,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult? Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult? Function(_Save value)? save,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
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
abstract class _$$_ChangeTitleStatusCopyWith<$Res> {
  factory _$$_ChangeTitleStatusCopyWith(_$_ChangeTitleStatus value,
          $Res Function(_$_ChangeTitleStatus) then) =
      __$$_ChangeTitleStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeTitleStatusCopyWithImpl<$Res>
    extends _$NewsPreferenceEventCopyWithImpl<$Res, _$_ChangeTitleStatus>
    implements _$$_ChangeTitleStatusCopyWith<$Res> {
  __$$_ChangeTitleStatusCopyWithImpl(
      _$_ChangeTitleStatus _value, $Res Function(_$_ChangeTitleStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangeTitleStatus(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTitleStatus implements _ChangeTitleStatus {
  const _$_ChangeTitleStatus(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NewsPreferenceEvent.changeTitleStatus(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTitleStatus &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTitleStatusCopyWith<_$_ChangeTitleStatus> get copyWith =>
      __$$_ChangeTitleStatusCopyWithImpl<_$_ChangeTitleStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int index) changeTitleStatus,
    required TResult Function(int parentIndex, int index)
        changePreferenceStatus,
    required TResult Function() save,
  }) {
    return changeTitleStatus(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int index)? changeTitleStatus,
    TResult? Function(int parentIndex, int index)? changePreferenceStatus,
    TResult? Function()? save,
  }) {
    return changeTitleStatus?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int index)? changeTitleStatus,
    TResult Function(int parentIndex, int index)? changePreferenceStatus,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeTitleStatus != null) {
      return changeTitleStatus(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeTitleStatus value) changeTitleStatus,
    required TResult Function(_ChangePreferenceStatus value)
        changePreferenceStatus,
    required TResult Function(_Save value) save,
  }) {
    return changeTitleStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult? Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult? Function(_Save value)? save,
  }) {
    return changeTitleStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeTitleStatus != null) {
      return changeTitleStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeTitleStatus implements NewsPreferenceEvent {
  const factory _ChangeTitleStatus(final int index) = _$_ChangeTitleStatus;

  int get index;
  @JsonKey(ignore: true)
  _$$_ChangeTitleStatusCopyWith<_$_ChangeTitleStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePreferenceStatusCopyWith<$Res> {
  factory _$$_ChangePreferenceStatusCopyWith(_$_ChangePreferenceStatus value,
          $Res Function(_$_ChangePreferenceStatus) then) =
      __$$_ChangePreferenceStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({int parentIndex, int index});
}

/// @nodoc
class __$$_ChangePreferenceStatusCopyWithImpl<$Res>
    extends _$NewsPreferenceEventCopyWithImpl<$Res, _$_ChangePreferenceStatus>
    implements _$$_ChangePreferenceStatusCopyWith<$Res> {
  __$$_ChangePreferenceStatusCopyWithImpl(_$_ChangePreferenceStatus _value,
      $Res Function(_$_ChangePreferenceStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentIndex = null,
    Object? index = null,
  }) {
    return _then(_$_ChangePreferenceStatus(
      null == parentIndex
          ? _value.parentIndex
          : parentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePreferenceStatus implements _ChangePreferenceStatus {
  const _$_ChangePreferenceStatus(this.parentIndex, this.index);

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
        (other.runtimeType == runtimeType &&
            other is _$_ChangePreferenceStatus &&
            (identical(other.parentIndex, parentIndex) ||
                other.parentIndex == parentIndex) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentIndex, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePreferenceStatusCopyWith<_$_ChangePreferenceStatus> get copyWith =>
      __$$_ChangePreferenceStatusCopyWithImpl<_$_ChangePreferenceStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int index) changeTitleStatus,
    required TResult Function(int parentIndex, int index)
        changePreferenceStatus,
    required TResult Function() save,
  }) {
    return changePreferenceStatus(parentIndex, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int index)? changeTitleStatus,
    TResult? Function(int parentIndex, int index)? changePreferenceStatus,
    TResult? Function()? save,
  }) {
    return changePreferenceStatus?.call(parentIndex, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int index)? changeTitleStatus,
    TResult Function(int parentIndex, int index)? changePreferenceStatus,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changePreferenceStatus != null) {
      return changePreferenceStatus(parentIndex, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeTitleStatus value) changeTitleStatus,
    required TResult Function(_ChangePreferenceStatus value)
        changePreferenceStatus,
    required TResult Function(_Save value) save,
  }) {
    return changePreferenceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult? Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult? Function(_Save value)? save,
  }) {
    return changePreferenceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changePreferenceStatus != null) {
      return changePreferenceStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangePreferenceStatus implements NewsPreferenceEvent {
  const factory _ChangePreferenceStatus(
      final int parentIndex, final int index) = _$_ChangePreferenceStatus;

  int get parentIndex;
  int get index;
  @JsonKey(ignore: true)
  _$$_ChangePreferenceStatusCopyWith<_$_ChangePreferenceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res>
    extends _$NewsPreferenceEventCopyWithImpl<$Res, _$_Save>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int index) changeTitleStatus,
    required TResult Function(int parentIndex, int index)
        changePreferenceStatus,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int index)? changeTitleStatus,
    TResult? Function(int parentIndex, int index)? changePreferenceStatus,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int index)? changeTitleStatus,
    TResult Function(int parentIndex, int index)? changePreferenceStatus,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeTitleStatus value) changeTitleStatus,
    required TResult Function(_ChangePreferenceStatus value)
        changePreferenceStatus,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult? Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeTitleStatus value)? changeTitleStatus,
    TResult Function(_ChangePreferenceStatus value)? changePreferenceStatus,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
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
mixin _$NewsPreferenceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsPreference> genre) loaded,
    required TResult Function(ApiFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsPreference> genre)? loaded,
    TResult? Function(ApiFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsPreference> genre)? loaded,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsPreferenceStateCopyWith<$Res> {
  factory $NewsPreferenceStateCopyWith(
          NewsPreferenceState value, $Res Function(NewsPreferenceState) then) =
      _$NewsPreferenceStateCopyWithImpl<$Res, NewsPreferenceState>;
}

/// @nodoc
class _$NewsPreferenceStateCopyWithImpl<$Res, $Val extends NewsPreferenceState>
    implements $NewsPreferenceStateCopyWith<$Res> {
  _$NewsPreferenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsPreference> genre) loaded,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsPreference> genre)? loaded,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsPreference> genre)? loaded,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
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
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsPreference> genre) loaded,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsPreference> genre)? loaded,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsPreference> genre)? loaded,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
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
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsPreference> genre});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
  }) {
    return _then(_$_Loaded(
      null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<NewsPreference>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<NewsPreference> genre) : _genre = genre;

  final List<NewsPreference> _genre;
  @override
  List<NewsPreference> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  String toString() {
    return 'NewsPreferenceState.loaded(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._genre, _genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genre));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsPreference> genre) loaded,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return loaded(genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsPreference> genre)? loaded,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return loaded?.call(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsPreference> genre)? loaded,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NewsPreferenceState {
  const factory _Loaded(final List<NewsPreference> genre) = _$_Loaded;

  List<NewsPreference> get genre;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$NewsPreferenceStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiFailureCopyWith<$Res> get failure {
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'NewsPreferenceState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsPreference> genre) loaded,
    required TResult Function(ApiFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsPreference> genre)? loaded,
    TResult? Function(ApiFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsPreference> genre)? loaded,
    TResult Function(ApiFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NewsPreferenceState {
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
