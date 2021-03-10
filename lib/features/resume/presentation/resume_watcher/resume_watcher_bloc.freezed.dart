// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'resume_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResumeWatcherEventTearOff {
  const _$ResumeWatcherEventTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _SetResumeData setResumeData(ResumeData data) {
    return _SetResumeData(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResumeWatcherEvent = _$ResumeWatcherEventTearOff();

/// @nodoc
mixin _$ResumeWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult setResumeData(ResumeData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult setResumeData(ResumeData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult setResumeData(_SetResumeData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult setResumeData(_SetResumeData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ResumeWatcherEventCopyWith<$Res> {
  factory $ResumeWatcherEventCopyWith(
          ResumeWatcherEvent value, $Res Function(ResumeWatcherEvent) then) =
      _$ResumeWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeWatcherEventCopyWithImpl<$Res>
    implements $ResumeWatcherEventCopyWith<$Res> {
  _$ResumeWatcherEventCopyWithImpl(this._value, this._then);

  final ResumeWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ResumeWatcherEvent) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ResumeWatcherEventCopyWithImpl<$Res>
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
    return 'ResumeWatcherEvent.loading()';
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
    @required TResult setResumeData(ResumeData data),
  }) {
    assert(loading != null);
    assert(setResumeData != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult setResumeData(ResumeData data),
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
    @required TResult setResumeData(_SetResumeData value),
  }) {
    assert(loading != null);
    assert(setResumeData != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult setResumeData(_SetResumeData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ResumeWatcherEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SetResumeDataCopyWith<$Res> {
  factory _$SetResumeDataCopyWith(
          _SetResumeData value, $Res Function(_SetResumeData) then) =
      __$SetResumeDataCopyWithImpl<$Res>;
  $Res call({ResumeData data});
}

/// @nodoc
class __$SetResumeDataCopyWithImpl<$Res>
    extends _$ResumeWatcherEventCopyWithImpl<$Res>
    implements _$SetResumeDataCopyWith<$Res> {
  __$SetResumeDataCopyWithImpl(
      _SetResumeData _value, $Res Function(_SetResumeData) _then)
      : super(_value, (v) => _then(v as _SetResumeData));

  @override
  _SetResumeData get _value => super._value as _SetResumeData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_SetResumeData(
      data == freezed ? _value.data : data as ResumeData,
    ));
  }
}

/// @nodoc
class _$_SetResumeData implements _SetResumeData {
  const _$_SetResumeData(this.data) : assert(data != null);

  @override
  final ResumeData data;

  @override
  String toString() {
    return 'ResumeWatcherEvent.setResumeData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetResumeData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetResumeDataCopyWith<_SetResumeData> get copyWith =>
      __$SetResumeDataCopyWithImpl<_SetResumeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult setResumeData(ResumeData data),
  }) {
    assert(loading != null);
    assert(setResumeData != null);
    return setResumeData(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult setResumeData(ResumeData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setResumeData != null) {
      return setResumeData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult setResumeData(_SetResumeData value),
  }) {
    assert(loading != null);
    assert(setResumeData != null);
    return setResumeData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult setResumeData(_SetResumeData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setResumeData != null) {
      return setResumeData(this);
    }
    return orElse();
  }
}

abstract class _SetResumeData implements ResumeWatcherEvent {
  const factory _SetResumeData(ResumeData data) = _$_SetResumeData;

  ResumeData get data;
  @JsonKey(ignore: true)
  _$SetResumeDataCopyWith<_SetResumeData> get copyWith;
}

/// @nodoc
class _$ResumeWatcherStateTearOff {
  const _$ResumeWatcherStateTearOff();

// ignore: unused_element
  _ResumeWatcherState call(
      {@required PersonalInfo info,
      @required List<AcademicHistory> academics,
      @required List<WorkHistory> works,
      @required List<QualificationHistory> qualifications,
      @required bool isLoading}) {
    return _ResumeWatcherState(
      info: info,
      academics: academics,
      works: works,
      qualifications: qualifications,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResumeWatcherState = _$ResumeWatcherStateTearOff();

/// @nodoc
mixin _$ResumeWatcherState {
  PersonalInfo get info;
  List<AcademicHistory> get academics;
  List<WorkHistory> get works;
  List<QualificationHistory> get qualifications;
  bool get isLoading;

  @JsonKey(ignore: true)
  $ResumeWatcherStateCopyWith<ResumeWatcherState> get copyWith;
}

/// @nodoc
abstract class $ResumeWatcherStateCopyWith<$Res> {
  factory $ResumeWatcherStateCopyWith(
          ResumeWatcherState value, $Res Function(ResumeWatcherState) then) =
      _$ResumeWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {PersonalInfo info,
      List<AcademicHistory> academics,
      List<WorkHistory> works,
      List<QualificationHistory> qualifications,
      bool isLoading});
}

/// @nodoc
class _$ResumeWatcherStateCopyWithImpl<$Res>
    implements $ResumeWatcherStateCopyWith<$Res> {
  _$ResumeWatcherStateCopyWithImpl(this._value, this._then);

  final ResumeWatcherState _value;
  // ignore: unused_field
  final $Res Function(ResumeWatcherState) _then;

  @override
  $Res call({
    Object info = freezed,
    Object academics = freezed,
    Object works = freezed,
    Object qualifications = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed ? _value.info : info as PersonalInfo,
      academics: academics == freezed
          ? _value.academics
          : academics as List<AcademicHistory>,
      works: works == freezed ? _value.works : works as List<WorkHistory>,
      qualifications: qualifications == freezed
          ? _value.qualifications
          : qualifications as List<QualificationHistory>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ResumeWatcherStateCopyWith<$Res>
    implements $ResumeWatcherStateCopyWith<$Res> {
  factory _$ResumeWatcherStateCopyWith(
          _ResumeWatcherState value, $Res Function(_ResumeWatcherState) then) =
      __$ResumeWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PersonalInfo info,
      List<AcademicHistory> academics,
      List<WorkHistory> works,
      List<QualificationHistory> qualifications,
      bool isLoading});
}

/// @nodoc
class __$ResumeWatcherStateCopyWithImpl<$Res>
    extends _$ResumeWatcherStateCopyWithImpl<$Res>
    implements _$ResumeWatcherStateCopyWith<$Res> {
  __$ResumeWatcherStateCopyWithImpl(
      _ResumeWatcherState _value, $Res Function(_ResumeWatcherState) _then)
      : super(_value, (v) => _then(v as _ResumeWatcherState));

  @override
  _ResumeWatcherState get _value => super._value as _ResumeWatcherState;

  @override
  $Res call({
    Object info = freezed,
    Object academics = freezed,
    Object works = freezed,
    Object qualifications = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_ResumeWatcherState(
      info: info == freezed ? _value.info : info as PersonalInfo,
      academics: academics == freezed
          ? _value.academics
          : academics as List<AcademicHistory>,
      works: works == freezed ? _value.works : works as List<WorkHistory>,
      qualifications: qualifications == freezed
          ? _value.qualifications
          : qualifications as List<QualificationHistory>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_ResumeWatcherState implements _ResumeWatcherState {
  const _$_ResumeWatcherState(
      {@required this.info,
      @required this.academics,
      @required this.works,
      @required this.qualifications,
      @required this.isLoading})
      : assert(info != null),
        assert(academics != null),
        assert(works != null),
        assert(qualifications != null),
        assert(isLoading != null);

  @override
  final PersonalInfo info;
  @override
  final List<AcademicHistory> academics;
  @override
  final List<WorkHistory> works;
  @override
  final List<QualificationHistory> qualifications;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ResumeWatcherState(info: $info, academics: $academics, works: $works, qualifications: $qualifications, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResumeWatcherState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.academics, academics) ||
                const DeepCollectionEquality()
                    .equals(other.academics, academics)) &&
            (identical(other.works, works) ||
                const DeepCollectionEquality().equals(other.works, works)) &&
            (identical(other.qualifications, qualifications) ||
                const DeepCollectionEquality()
                    .equals(other.qualifications, qualifications)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(academics) ^
      const DeepCollectionEquality().hash(works) ^
      const DeepCollectionEquality().hash(qualifications) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ResumeWatcherStateCopyWith<_ResumeWatcherState> get copyWith =>
      __$ResumeWatcherStateCopyWithImpl<_ResumeWatcherState>(this, _$identity);
}

abstract class _ResumeWatcherState implements ResumeWatcherState {
  const factory _ResumeWatcherState(
      {@required PersonalInfo info,
      @required List<AcademicHistory> academics,
      @required List<WorkHistory> works,
      @required List<QualificationHistory> qualifications,
      @required bool isLoading}) = _$_ResumeWatcherState;

  @override
  PersonalInfo get info;
  @override
  List<AcademicHistory> get academics;
  @override
  List<WorkHistory> get works;
  @override
  List<QualificationHistory> get qualifications;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ResumeWatcherStateCopyWith<_ResumeWatcherState> get copyWith;
}
