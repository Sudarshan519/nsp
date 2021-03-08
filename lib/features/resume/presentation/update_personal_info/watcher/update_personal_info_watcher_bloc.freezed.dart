// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_personal_info_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdatePersonalInfoWatcherEventTearOff {
  const _$UpdatePersonalInfoWatcherEventTearOff();

// ignore: unused_element
  _SetPersonalInfo setPersonalInfo(PersonalInfo info) {
    return _SetPersonalInfo(
      info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePersonalInfoWatcherEvent =
    _$UpdatePersonalInfoWatcherEventTearOff();

/// @nodoc
mixin _$UpdatePersonalInfoWatcherEvent {
  PersonalInfo get info;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setPersonalInfo(PersonalInfo info),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setPersonalInfo(PersonalInfo info),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setPersonalInfo(_SetPersonalInfo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setPersonalInfo(_SetPersonalInfo value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $UpdatePersonalInfoWatcherEventCopyWith<UpdatePersonalInfoWatcherEvent>
      get copyWith;
}

/// @nodoc
abstract class $UpdatePersonalInfoWatcherEventCopyWith<$Res> {
  factory $UpdatePersonalInfoWatcherEventCopyWith(
          UpdatePersonalInfoWatcherEvent value,
          $Res Function(UpdatePersonalInfoWatcherEvent) then) =
      _$UpdatePersonalInfoWatcherEventCopyWithImpl<$Res>;
  $Res call({PersonalInfo info});
}

/// @nodoc
class _$UpdatePersonalInfoWatcherEventCopyWithImpl<$Res>
    implements $UpdatePersonalInfoWatcherEventCopyWith<$Res> {
  _$UpdatePersonalInfoWatcherEventCopyWithImpl(this._value, this._then);

  final UpdatePersonalInfoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UpdatePersonalInfoWatcherEvent) _then;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed ? _value.info : info as PersonalInfo,
    ));
  }
}

/// @nodoc
abstract class _$SetPersonalInfoCopyWith<$Res>
    implements $UpdatePersonalInfoWatcherEventCopyWith<$Res> {
  factory _$SetPersonalInfoCopyWith(
          _SetPersonalInfo value, $Res Function(_SetPersonalInfo) then) =
      __$SetPersonalInfoCopyWithImpl<$Res>;
  @override
  $Res call({PersonalInfo info});
}

/// @nodoc
class __$SetPersonalInfoCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoWatcherEventCopyWithImpl<$Res>
    implements _$SetPersonalInfoCopyWith<$Res> {
  __$SetPersonalInfoCopyWithImpl(
      _SetPersonalInfo _value, $Res Function(_SetPersonalInfo) _then)
      : super(_value, (v) => _then(v as _SetPersonalInfo));

  @override
  _SetPersonalInfo get _value => super._value as _SetPersonalInfo;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_SetPersonalInfo(
      info == freezed ? _value.info : info as PersonalInfo,
    ));
  }
}

/// @nodoc
class _$_SetPersonalInfo implements _SetPersonalInfo {
  const _$_SetPersonalInfo(this.info) : assert(info != null);

  @override
  final PersonalInfo info;

  @override
  String toString() {
    return 'UpdatePersonalInfoWatcherEvent.setPersonalInfo(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPersonalInfo &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$SetPersonalInfoCopyWith<_SetPersonalInfo> get copyWith =>
      __$SetPersonalInfoCopyWithImpl<_SetPersonalInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setPersonalInfo(PersonalInfo info),
  }) {
    assert(setPersonalInfo != null);
    return setPersonalInfo(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setPersonalInfo(PersonalInfo info),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setPersonalInfo != null) {
      return setPersonalInfo(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setPersonalInfo(_SetPersonalInfo value),
  }) {
    assert(setPersonalInfo != null);
    return setPersonalInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setPersonalInfo(_SetPersonalInfo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setPersonalInfo != null) {
      return setPersonalInfo(this);
    }
    return orElse();
  }
}

abstract class _SetPersonalInfo implements UpdatePersonalInfoWatcherEvent {
  const factory _SetPersonalInfo(PersonalInfo info) = _$_SetPersonalInfo;

  @override
  PersonalInfo get info;
  @override
  @JsonKey(ignore: true)
  _$SetPersonalInfoCopyWith<_SetPersonalInfo> get copyWith;
}

/// @nodoc
class _$UpdatePersonalInfoWatcherStateTearOff {
  const _$UpdatePersonalInfoWatcherStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(PersonalInfo info) {
    return _Loaded(
      info,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePersonalInfoWatcherState =
    _$UpdatePersonalInfoWatcherStateTearOff();

/// @nodoc
mixin _$UpdatePersonalInfoWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(PersonalInfo info),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(PersonalInfo info),
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
abstract class $UpdatePersonalInfoWatcherStateCopyWith<$Res> {
  factory $UpdatePersonalInfoWatcherStateCopyWith(
          UpdatePersonalInfoWatcherState value,
          $Res Function(UpdatePersonalInfoWatcherState) then) =
      _$UpdatePersonalInfoWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatePersonalInfoWatcherStateCopyWithImpl<$Res>
    implements $UpdatePersonalInfoWatcherStateCopyWith<$Res> {
  _$UpdatePersonalInfoWatcherStateCopyWithImpl(this._value, this._then);

  final UpdatePersonalInfoWatcherState _value;
  // ignore: unused_field
  final $Res Function(UpdatePersonalInfoWatcherState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoWatcherStateCopyWithImpl<$Res>
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
    return 'UpdatePersonalInfoWatcherState.loading()';
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
    @required TResult loaded(PersonalInfo info),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(PersonalInfo info),
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

abstract class _Loading implements UpdatePersonalInfoWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({PersonalInfo info});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoWatcherStateCopyWithImpl<$Res>
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
      info == freezed ? _value.info : info as PersonalInfo,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.info) : assert(info != null);

  @override
  final PersonalInfo info;

  @override
  String toString() {
    return 'UpdatePersonalInfoWatcherState.loaded(info: $info)';
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
    @required TResult loaded(PersonalInfo info),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(PersonalInfo info),
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

abstract class _Loaded implements UpdatePersonalInfoWatcherState {
  const factory _Loaded(PersonalInfo info) = _$_Loaded;

  PersonalInfo get info;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}
