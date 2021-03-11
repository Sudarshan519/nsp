// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_work_info_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateWorkInfoWatcherEventTearOff {
  const _$UpdateWorkInfoWatcherEventTearOff();

// ignore: unused_element
  _ChangeToLoadingState changeToLoadingState() {
    return const _ChangeToLoadingState();
  }

// ignore: unused_element
  _SetWorkHistory setWorkHistory(WorkHistory workHistory) {
    return _SetWorkHistory(
      workHistory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateWorkInfoWatcherEvent = _$UpdateWorkInfoWatcherEventTearOff();

/// @nodoc
mixin _$UpdateWorkInfoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeToLoadingState(),
    @required TResult setWorkHistory(WorkHistory workHistory),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeToLoadingState(),
    TResult setWorkHistory(WorkHistory workHistory),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeToLoadingState(_ChangeToLoadingState value),
    @required TResult setWorkHistory(_SetWorkHistory value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeToLoadingState(_ChangeToLoadingState value),
    TResult setWorkHistory(_SetWorkHistory value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateWorkInfoWatcherEventCopyWith<$Res> {
  factory $UpdateWorkInfoWatcherEventCopyWith(UpdateWorkInfoWatcherEvent value,
          $Res Function(UpdateWorkInfoWatcherEvent) then) =
      _$UpdateWorkInfoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateWorkInfoWatcherEventCopyWithImpl<$Res>
    implements $UpdateWorkInfoWatcherEventCopyWith<$Res> {
  _$UpdateWorkInfoWatcherEventCopyWithImpl(this._value, this._then);

  final UpdateWorkInfoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateWorkInfoWatcherEvent) _then;
}

/// @nodoc
abstract class _$ChangeToLoadingStateCopyWith<$Res> {
  factory _$ChangeToLoadingStateCopyWith(_ChangeToLoadingState value,
          $Res Function(_ChangeToLoadingState) then) =
      __$ChangeToLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeToLoadingStateCopyWithImpl<$Res>
    extends _$UpdateWorkInfoWatcherEventCopyWithImpl<$Res>
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
    return 'UpdateWorkInfoWatcherEvent.changeToLoadingState()';
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
    @required TResult setWorkHistory(WorkHistory workHistory),
  }) {
    assert(changeToLoadingState != null);
    assert(setWorkHistory != null);
    return changeToLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeToLoadingState(),
    TResult setWorkHistory(WorkHistory workHistory),
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
    @required TResult setWorkHistory(_SetWorkHistory value),
  }) {
    assert(changeToLoadingState != null);
    assert(setWorkHistory != null);
    return changeToLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeToLoadingState(_ChangeToLoadingState value),
    TResult setWorkHistory(_SetWorkHistory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeToLoadingState != null) {
      return changeToLoadingState(this);
    }
    return orElse();
  }
}

abstract class _ChangeToLoadingState implements UpdateWorkInfoWatcherEvent {
  const factory _ChangeToLoadingState() = _$_ChangeToLoadingState;
}

/// @nodoc
abstract class _$SetWorkHistoryCopyWith<$Res> {
  factory _$SetWorkHistoryCopyWith(
          _SetWorkHistory value, $Res Function(_SetWorkHistory) then) =
      __$SetWorkHistoryCopyWithImpl<$Res>;
  $Res call({WorkHistory workHistory});
}

/// @nodoc
class __$SetWorkHistoryCopyWithImpl<$Res>
    extends _$UpdateWorkInfoWatcherEventCopyWithImpl<$Res>
    implements _$SetWorkHistoryCopyWith<$Res> {
  __$SetWorkHistoryCopyWithImpl(
      _SetWorkHistory _value, $Res Function(_SetWorkHistory) _then)
      : super(_value, (v) => _then(v as _SetWorkHistory));

  @override
  _SetWorkHistory get _value => super._value as _SetWorkHistory;

  @override
  $Res call({
    Object workHistory = freezed,
  }) {
    return _then(_SetWorkHistory(
      workHistory == freezed ? _value.workHistory : workHistory as WorkHistory,
    ));
  }
}

/// @nodoc
class _$_SetWorkHistory implements _SetWorkHistory {
  const _$_SetWorkHistory(this.workHistory) : assert(workHistory != null);

  @override
  final WorkHistory workHistory;

  @override
  String toString() {
    return 'UpdateWorkInfoWatcherEvent.setWorkHistory(workHistory: $workHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetWorkHistory &&
            (identical(other.workHistory, workHistory) ||
                const DeepCollectionEquality()
                    .equals(other.workHistory, workHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workHistory);

  @JsonKey(ignore: true)
  @override
  _$SetWorkHistoryCopyWith<_SetWorkHistory> get copyWith =>
      __$SetWorkHistoryCopyWithImpl<_SetWorkHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeToLoadingState(),
    @required TResult setWorkHistory(WorkHistory workHistory),
  }) {
    assert(changeToLoadingState != null);
    assert(setWorkHistory != null);
    return setWorkHistory(workHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeToLoadingState(),
    TResult setWorkHistory(WorkHistory workHistory),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setWorkHistory != null) {
      return setWorkHistory(workHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeToLoadingState(_ChangeToLoadingState value),
    @required TResult setWorkHistory(_SetWorkHistory value),
  }) {
    assert(changeToLoadingState != null);
    assert(setWorkHistory != null);
    return setWorkHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeToLoadingState(_ChangeToLoadingState value),
    TResult setWorkHistory(_SetWorkHistory value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setWorkHistory != null) {
      return setWorkHistory(this);
    }
    return orElse();
  }
}

abstract class _SetWorkHistory implements UpdateWorkInfoWatcherEvent {
  const factory _SetWorkHistory(WorkHistory workHistory) = _$_SetWorkHistory;

  WorkHistory get workHistory;
  @JsonKey(ignore: true)
  _$SetWorkHistoryCopyWith<_SetWorkHistory> get copyWith;
}

/// @nodoc
class _$UpdateWorkInfoWatcherStateTearOff {
  const _$UpdateWorkInfoWatcherStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(WorkHistory info) {
    return _Loaded(
      info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateWorkInfoWatcherState = _$UpdateWorkInfoWatcherStateTearOff();

/// @nodoc
mixin _$UpdateWorkInfoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(WorkHistory info),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(WorkHistory info),
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
abstract class $UpdateWorkInfoWatcherStateCopyWith<$Res> {
  factory $UpdateWorkInfoWatcherStateCopyWith(UpdateWorkInfoWatcherState value,
          $Res Function(UpdateWorkInfoWatcherState) then) =
      _$UpdateWorkInfoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateWorkInfoWatcherStateCopyWithImpl<$Res>
    implements $UpdateWorkInfoWatcherStateCopyWith<$Res> {
  _$UpdateWorkInfoWatcherStateCopyWithImpl(this._value, this._then);

  final UpdateWorkInfoWatcherState _value;
  // ignore: unused_field
  final $Res Function(UpdateWorkInfoWatcherState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$UpdateWorkInfoWatcherStateCopyWithImpl<$Res>
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
    return 'UpdateWorkInfoWatcherState.loading()';
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
    @required TResult loaded(WorkHistory info),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(WorkHistory info),
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

abstract class _Loading implements UpdateWorkInfoWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({WorkHistory info});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$UpdateWorkInfoWatcherStateCopyWithImpl<$Res>
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
      info == freezed ? _value.info : info as WorkHistory,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.info) : assert(info != null);

  @override
  final WorkHistory info;

  @override
  String toString() {
    return 'UpdateWorkInfoWatcherState.loaded(info: $info)';
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
    @required TResult loaded(WorkHistory info),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(WorkHistory info),
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

abstract class _Loaded implements UpdateWorkInfoWatcherState {
  const factory _Loaded(WorkHistory info) = _$_Loaded;

  WorkHistory get info;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}
