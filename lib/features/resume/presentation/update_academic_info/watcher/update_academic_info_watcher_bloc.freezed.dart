// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_academic_info_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateAcademicInfoWatcherEventTearOff {
  const _$UpdateAcademicInfoWatcherEventTearOff();

// ignore: unused_element
  _ChangeToLoadingState changeToLoadingState() {
    return const _ChangeToLoadingState();
  }

// ignore: unused_element
  _SetAcademicHistory setAcademicHistory(AcademicHistory academicHistory) {
    return _SetAcademicHistory(
      academicHistory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateAcademicInfoWatcherEvent =
    _$UpdateAcademicInfoWatcherEventTearOff();

/// @nodoc
mixin _$UpdateAcademicInfoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeToLoadingState(),
    @required TResult setAcademicHistory(AcademicHistory academicHistory),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeToLoadingState(),
    TResult setAcademicHistory(AcademicHistory academicHistory),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeToLoadingState(_ChangeToLoadingState value),
    @required TResult setAcademicHistory(_SetAcademicHistory value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeToLoadingState(_ChangeToLoadingState value),
    TResult setAcademicHistory(_SetAcademicHistory value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateAcademicInfoWatcherEventCopyWith<$Res> {
  factory $UpdateAcademicInfoWatcherEventCopyWith(
          UpdateAcademicInfoWatcherEvent value,
          $Res Function(UpdateAcademicInfoWatcherEvent) then) =
      _$UpdateAcademicInfoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateAcademicInfoWatcherEventCopyWithImpl<$Res>
    implements $UpdateAcademicInfoWatcherEventCopyWith<$Res> {
  _$UpdateAcademicInfoWatcherEventCopyWithImpl(this._value, this._then);

  final UpdateAcademicInfoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateAcademicInfoWatcherEvent) _then;
}

/// @nodoc
abstract class _$ChangeToLoadingStateCopyWith<$Res> {
  factory _$ChangeToLoadingStateCopyWith(_ChangeToLoadingState value,
          $Res Function(_ChangeToLoadingState) then) =
      __$ChangeToLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeToLoadingStateCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoWatcherEventCopyWithImpl<$Res>
    implements _$ChangeToLoadingStateCopyWith<$Res> {
  __$ChangeToLoadingStateCopyWithImpl(
      _ChangeToLoadingState _value, $Res Function(_ChangeToLoadingState) _then)
      : super(_value, (v) => _then(v as _ChangeToLoadingState));

  @override
  _ChangeToLoadingState get _value => super._value as _ChangeToLoadingState;
}

/// @nodoc
class _$_ChangeToLoadingState implements _ChangeToLoadingState {
  const _$_ChangeToLoadingState();

  @override
  String toString() {
    return 'UpdateAcademicInfoWatcherEvent.changeToLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeToLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeToLoadingState(),
    @required TResult setAcademicHistory(AcademicHistory academicHistory),
  }) {
    assert(changeToLoadingState != null);
    assert(setAcademicHistory != null);
    return changeToLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeToLoadingState(),
    TResult setAcademicHistory(AcademicHistory academicHistory),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeToLoadingState != null) {
      return changeToLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeToLoadingState(_ChangeToLoadingState value),
    @required TResult setAcademicHistory(_SetAcademicHistory value),
  }) {
    assert(changeToLoadingState != null);
    assert(setAcademicHistory != null);
    return changeToLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeToLoadingState(_ChangeToLoadingState value),
    TResult setAcademicHistory(_SetAcademicHistory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeToLoadingState != null) {
      return changeToLoadingState(this);
    }
    return orElse();
  }
}

abstract class _ChangeToLoadingState implements UpdateAcademicInfoWatcherEvent {
  const factory _ChangeToLoadingState() = _$_ChangeToLoadingState;
}

/// @nodoc
abstract class _$SetAcademicHistoryCopyWith<$Res> {
  factory _$SetAcademicHistoryCopyWith(
          _SetAcademicHistory value, $Res Function(_SetAcademicHistory) then) =
      __$SetAcademicHistoryCopyWithImpl<$Res>;
  $Res call({AcademicHistory academicHistory});
}

/// @nodoc
class __$SetAcademicHistoryCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoWatcherEventCopyWithImpl<$Res>
    implements _$SetAcademicHistoryCopyWith<$Res> {
  __$SetAcademicHistoryCopyWithImpl(
      _SetAcademicHistory _value, $Res Function(_SetAcademicHistory) _then)
      : super(_value, (v) => _then(v as _SetAcademicHistory));

  @override
  _SetAcademicHistory get _value => super._value as _SetAcademicHistory;

  @override
  $Res call({
    Object academicHistory = freezed,
  }) {
    return _then(_SetAcademicHistory(
      academicHistory == freezed
          ? _value.academicHistory
          : academicHistory as AcademicHistory,
    ));
  }
}

/// @nodoc
class _$_SetAcademicHistory implements _SetAcademicHistory {
  const _$_SetAcademicHistory(this.academicHistory)
      : assert(academicHistory != null);

  @override
  final AcademicHistory academicHistory;

  @override
  String toString() {
    return 'UpdateAcademicInfoWatcherEvent.setAcademicHistory(academicHistory: $academicHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetAcademicHistory &&
            (identical(other.academicHistory, academicHistory) ||
                const DeepCollectionEquality()
                    .equals(other.academicHistory, academicHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(academicHistory);

  @JsonKey(ignore: true)
  @override
  _$SetAcademicHistoryCopyWith<_SetAcademicHistory> get copyWith =>
      __$SetAcademicHistoryCopyWithImpl<_SetAcademicHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeToLoadingState(),
    @required TResult setAcademicHistory(AcademicHistory academicHistory),
  }) {
    assert(changeToLoadingState != null);
    assert(setAcademicHistory != null);
    return setAcademicHistory(academicHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeToLoadingState(),
    TResult setAcademicHistory(AcademicHistory academicHistory),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setAcademicHistory != null) {
      return setAcademicHistory(academicHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeToLoadingState(_ChangeToLoadingState value),
    @required TResult setAcademicHistory(_SetAcademicHistory value),
  }) {
    assert(changeToLoadingState != null);
    assert(setAcademicHistory != null);
    return setAcademicHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeToLoadingState(_ChangeToLoadingState value),
    TResult setAcademicHistory(_SetAcademicHistory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setAcademicHistory != null) {
      return setAcademicHistory(this);
    }
    return orElse();
  }
}

abstract class _SetAcademicHistory implements UpdateAcademicInfoWatcherEvent {
  const factory _SetAcademicHistory(AcademicHistory academicHistory) =
      _$_SetAcademicHistory;

  AcademicHistory get academicHistory;
  @JsonKey(ignore: true)
  _$SetAcademicHistoryCopyWith<_SetAcademicHistory> get copyWith;
}

/// @nodoc
class _$UpdateAcademicInfoWatcherStateTearOff {
  const _$UpdateAcademicInfoWatcherStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(AcademicHistory info) {
    return _Loaded(
      info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateAcademicInfoWatcherState =
    _$UpdateAcademicInfoWatcherStateTearOff();

/// @nodoc
mixin _$UpdateAcademicInfoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(AcademicHistory info),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(AcademicHistory info),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateAcademicInfoWatcherStateCopyWith<$Res> {
  factory $UpdateAcademicInfoWatcherStateCopyWith(
          UpdateAcademicInfoWatcherState value,
          $Res Function(UpdateAcademicInfoWatcherState) then) =
      _$UpdateAcademicInfoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateAcademicInfoWatcherStateCopyWithImpl<$Res>
    implements $UpdateAcademicInfoWatcherStateCopyWith<$Res> {
  _$UpdateAcademicInfoWatcherStateCopyWithImpl(this._value, this._then);

  final UpdateAcademicInfoWatcherState _value;
  // ignore: unused_field
  final $Res Function(UpdateAcademicInfoWatcherState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoWatcherStateCopyWithImpl<$Res>
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
    return 'UpdateAcademicInfoWatcherState.loading()';
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
    @required TResult loading(),
    @required TResult loaded(AcademicHistory info),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(AcademicHistory info),
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
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UpdateAcademicInfoWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({AcademicHistory info});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoWatcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_Loaded(
      info == freezed ? _value.info : info as AcademicHistory,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.info) : assert(info != null);

  @override
  final AcademicHistory info;

  @override
  String toString() {
    return 'UpdateAcademicInfoWatcherState.loaded(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(AcademicHistory info),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(AcademicHistory info),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UpdateAcademicInfoWatcherState {
  const factory _Loaded(AcademicHistory info) = _$_Loaded;

  AcademicHistory get info;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}
