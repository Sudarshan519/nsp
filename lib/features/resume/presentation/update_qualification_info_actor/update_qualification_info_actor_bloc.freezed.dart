// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_qualification_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateQualificationInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changedQualificationName,
    required TResult Function(String year) changedCertifiedYear,
    required TResult Function(String month) changedCertifiedMonth,
    required TResult Function(
            QualificationHistory qualificationHistory, String lang)
        setInitialState,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changedQualificationName,
    TResult? Function(String year)? changedCertifiedYear,
    TResult? Function(String month)? changedCertifiedMonth,
    TResult? Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changedQualificationName,
    TResult Function(String year)? changedCertifiedYear,
    TResult Function(String month)? changedCertifiedMonth,
    TResult Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedQualificationName value)
        changedQualificationName,
    required TResult Function(_ChangedCertifiedYear value) changedCertifiedYear,
    required TResult Function(_ChangedCertifiedMonth value)
        changedCertifiedMonth,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedQualificationName value)?
        changedQualificationName,
    TResult? Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult? Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedQualificationName value)? changedQualificationName,
    TResult Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQualificationInfoActorEventCopyWith<$Res> {
  factory $UpdateQualificationInfoActorEventCopyWith(
          UpdateQualificationInfoActorEvent value,
          $Res Function(UpdateQualificationInfoActorEvent) then) =
      _$UpdateQualificationInfoActorEventCopyWithImpl<$Res,
          UpdateQualificationInfoActorEvent>;
}

/// @nodoc
class _$UpdateQualificationInfoActorEventCopyWithImpl<$Res,
        $Val extends UpdateQualificationInfoActorEvent>
    implements $UpdateQualificationInfoActorEventCopyWith<$Res> {
  _$UpdateQualificationInfoActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangedQualificationNameCopyWith<$Res> {
  factory _$$_ChangedQualificationNameCopyWith(
          _$_ChangedQualificationName value,
          $Res Function(_$_ChangedQualificationName) then) =
      __$$_ChangedQualificationNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ChangedQualificationNameCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res,
        _$_ChangedQualificationName>
    implements _$$_ChangedQualificationNameCopyWith<$Res> {
  __$$_ChangedQualificationNameCopyWithImpl(_$_ChangedQualificationName _value,
      $Res Function(_$_ChangedQualificationName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ChangedQualificationName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangedQualificationName implements _ChangedQualificationName {
  const _$_ChangedQualificationName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorEvent.changedQualificationName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedQualificationName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedQualificationNameCopyWith<_$_ChangedQualificationName>
      get copyWith => __$$_ChangedQualificationNameCopyWithImpl<
          _$_ChangedQualificationName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changedQualificationName,
    required TResult Function(String year) changedCertifiedYear,
    required TResult Function(String month) changedCertifiedMonth,
    required TResult Function(
            QualificationHistory qualificationHistory, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changedQualificationName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changedQualificationName,
    TResult? Function(String year)? changedCertifiedYear,
    TResult? Function(String month)? changedCertifiedMonth,
    TResult? Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changedQualificationName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changedQualificationName,
    TResult Function(String year)? changedCertifiedYear,
    TResult Function(String month)? changedCertifiedMonth,
    TResult Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changedQualificationName != null) {
      return changedQualificationName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedQualificationName value)
        changedQualificationName,
    required TResult Function(_ChangedCertifiedYear value) changedCertifiedYear,
    required TResult Function(_ChangedCertifiedMonth value)
        changedCertifiedMonth,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changedQualificationName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedQualificationName value)?
        changedQualificationName,
    TResult? Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult? Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changedQualificationName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedQualificationName value)? changedQualificationName,
    TResult Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changedQualificationName != null) {
      return changedQualificationName(this);
    }
    return orElse();
  }
}

abstract class _ChangedQualificationName
    implements UpdateQualificationInfoActorEvent {
  const factory _ChangedQualificationName(final String name) =
      _$_ChangedQualificationName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ChangedQualificationNameCopyWith<_$_ChangedQualificationName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangedCertifiedYearCopyWith<$Res> {
  factory _$$_ChangedCertifiedYearCopyWith(_$_ChangedCertifiedYear value,
          $Res Function(_$_ChangedCertifiedYear) then) =
      __$$_ChangedCertifiedYearCopyWithImpl<$Res>;
  @useResult
  $Res call({String year});
}

/// @nodoc
class __$$_ChangedCertifiedYearCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res,
        _$_ChangedCertifiedYear>
    implements _$$_ChangedCertifiedYearCopyWith<$Res> {
  __$$_ChangedCertifiedYearCopyWithImpl(_$_ChangedCertifiedYear _value,
      $Res Function(_$_ChangedCertifiedYear) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
  }) {
    return _then(_$_ChangedCertifiedYear(
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangedCertifiedYear implements _ChangedCertifiedYear {
  const _$_ChangedCertifiedYear(this.year);

  @override
  final String year;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorEvent.changedCertifiedYear(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedCertifiedYear &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedCertifiedYearCopyWith<_$_ChangedCertifiedYear> get copyWith =>
      __$$_ChangedCertifiedYearCopyWithImpl<_$_ChangedCertifiedYear>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changedQualificationName,
    required TResult Function(String year) changedCertifiedYear,
    required TResult Function(String month) changedCertifiedMonth,
    required TResult Function(
            QualificationHistory qualificationHistory, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changedCertifiedYear(year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changedQualificationName,
    TResult? Function(String year)? changedCertifiedYear,
    TResult? Function(String month)? changedCertifiedMonth,
    TResult? Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changedCertifiedYear?.call(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changedQualificationName,
    TResult Function(String year)? changedCertifiedYear,
    TResult Function(String month)? changedCertifiedMonth,
    TResult Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changedCertifiedYear != null) {
      return changedCertifiedYear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedQualificationName value)
        changedQualificationName,
    required TResult Function(_ChangedCertifiedYear value) changedCertifiedYear,
    required TResult Function(_ChangedCertifiedMonth value)
        changedCertifiedMonth,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changedCertifiedYear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedQualificationName value)?
        changedQualificationName,
    TResult? Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult? Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changedCertifiedYear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedQualificationName value)? changedQualificationName,
    TResult Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changedCertifiedYear != null) {
      return changedCertifiedYear(this);
    }
    return orElse();
  }
}

abstract class _ChangedCertifiedYear
    implements UpdateQualificationInfoActorEvent {
  const factory _ChangedCertifiedYear(final String year) =
      _$_ChangedCertifiedYear;

  String get year;
  @JsonKey(ignore: true)
  _$$_ChangedCertifiedYearCopyWith<_$_ChangedCertifiedYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangedCertifiedMonthCopyWith<$Res> {
  factory _$$_ChangedCertifiedMonthCopyWith(_$_ChangedCertifiedMonth value,
          $Res Function(_$_ChangedCertifiedMonth) then) =
      __$$_ChangedCertifiedMonthCopyWithImpl<$Res>;
  @useResult
  $Res call({String month});
}

/// @nodoc
class __$$_ChangedCertifiedMonthCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res,
        _$_ChangedCertifiedMonth>
    implements _$$_ChangedCertifiedMonthCopyWith<$Res> {
  __$$_ChangedCertifiedMonthCopyWithImpl(_$_ChangedCertifiedMonth _value,
      $Res Function(_$_ChangedCertifiedMonth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
  }) {
    return _then(_$_ChangedCertifiedMonth(
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangedCertifiedMonth implements _ChangedCertifiedMonth {
  const _$_ChangedCertifiedMonth(this.month);

  @override
  final String month;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorEvent.changedCertifiedMonth(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedCertifiedMonth &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedCertifiedMonthCopyWith<_$_ChangedCertifiedMonth> get copyWith =>
      __$$_ChangedCertifiedMonthCopyWithImpl<_$_ChangedCertifiedMonth>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changedQualificationName,
    required TResult Function(String year) changedCertifiedYear,
    required TResult Function(String month) changedCertifiedMonth,
    required TResult Function(
            QualificationHistory qualificationHistory, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changedCertifiedMonth(month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changedQualificationName,
    TResult? Function(String year)? changedCertifiedYear,
    TResult? Function(String month)? changedCertifiedMonth,
    TResult? Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changedCertifiedMonth?.call(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changedQualificationName,
    TResult Function(String year)? changedCertifiedYear,
    TResult Function(String month)? changedCertifiedMonth,
    TResult Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changedCertifiedMonth != null) {
      return changedCertifiedMonth(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedQualificationName value)
        changedQualificationName,
    required TResult Function(_ChangedCertifiedYear value) changedCertifiedYear,
    required TResult Function(_ChangedCertifiedMonth value)
        changedCertifiedMonth,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changedCertifiedMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedQualificationName value)?
        changedQualificationName,
    TResult? Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult? Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changedCertifiedMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedQualificationName value)? changedQualificationName,
    TResult Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changedCertifiedMonth != null) {
      return changedCertifiedMonth(this);
    }
    return orElse();
  }
}

abstract class _ChangedCertifiedMonth
    implements UpdateQualificationInfoActorEvent {
  const factory _ChangedCertifiedMonth(final String month) =
      _$_ChangedCertifiedMonth;

  String get month;
  @JsonKey(ignore: true)
  _$$_ChangedCertifiedMonthCopyWith<_$_ChangedCertifiedMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetInitialStateCopyWith<$Res> {
  factory _$$_SetInitialStateCopyWith(
          _$_SetInitialState value, $Res Function(_$_SetInitialState) then) =
      __$$_SetInitialStateCopyWithImpl<$Res>;
  @useResult
  $Res call({QualificationHistory qualificationHistory, String lang});
}

/// @nodoc
class __$$_SetInitialStateCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res,
        _$_SetInitialState> implements _$$_SetInitialStateCopyWith<$Res> {
  __$$_SetInitialStateCopyWithImpl(
      _$_SetInitialState _value, $Res Function(_$_SetInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualificationHistory = null,
    Object? lang = null,
  }) {
    return _then(_$_SetInitialState(
      null == qualificationHistory
          ? _value.qualificationHistory
          : qualificationHistory // ignore: cast_nullable_to_non_nullable
              as QualificationHistory,
      null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.qualificationHistory, this.lang);

  @override
  final QualificationHistory qualificationHistory;
  @override
  final String lang;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorEvent.setInitialState(qualificationHistory: $qualificationHistory, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetInitialState &&
            (identical(other.qualificationHistory, qualificationHistory) ||
                other.qualificationHistory == qualificationHistory) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualificationHistory, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetInitialStateCopyWith<_$_SetInitialState> get copyWith =>
      __$$_SetInitialStateCopyWithImpl<_$_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changedQualificationName,
    required TResult Function(String year) changedCertifiedYear,
    required TResult Function(String month) changedCertifiedMonth,
    required TResult Function(
            QualificationHistory qualificationHistory, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return setInitialState(qualificationHistory, lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changedQualificationName,
    TResult? Function(String year)? changedCertifiedYear,
    TResult? Function(String month)? changedCertifiedMonth,
    TResult? Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return setInitialState?.call(qualificationHistory, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changedQualificationName,
    TResult Function(String year)? changedCertifiedYear,
    TResult Function(String month)? changedCertifiedMonth,
    TResult Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(qualificationHistory, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedQualificationName value)
        changedQualificationName,
    required TResult Function(_ChangedCertifiedYear value) changedCertifiedYear,
    required TResult Function(_ChangedCertifiedMonth value)
        changedCertifiedMonth,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedQualificationName value)?
        changedQualificationName,
    TResult? Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult? Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return setInitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedQualificationName value)? changedQualificationName,
    TResult Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(this);
    }
    return orElse();
  }
}

abstract class _SetInitialState implements UpdateQualificationInfoActorEvent {
  const factory _SetInitialState(
          final QualificationHistory qualificationHistory, final String lang) =
      _$_SetInitialState;

  QualificationHistory get qualificationHistory;
  String get lang;
  @JsonKey(ignore: true)
  _$$_SetInitialStateCopyWith<_$_SetInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res, _$_Save>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'UpdateQualificationInfoActorEvent.save()';
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
    required TResult Function(String name) changedQualificationName,
    required TResult Function(String year) changedCertifiedYear,
    required TResult Function(String month) changedCertifiedMonth,
    required TResult Function(
            QualificationHistory qualificationHistory, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changedQualificationName,
    TResult? Function(String year)? changedCertifiedYear,
    TResult? Function(String month)? changedCertifiedMonth,
    TResult? Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changedQualificationName,
    TResult Function(String year)? changedCertifiedYear,
    TResult Function(String month)? changedCertifiedMonth,
    TResult Function(QualificationHistory qualificationHistory, String lang)?
        setInitialState,
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
    required TResult Function(_ChangedQualificationName value)
        changedQualificationName,
    required TResult Function(_ChangedCertifiedYear value) changedCertifiedYear,
    required TResult Function(_ChangedCertifiedMonth value)
        changedCertifiedMonth,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedQualificationName value)?
        changedQualificationName,
    TResult? Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult? Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedQualificationName value)? changedQualificationName,
    TResult Function(_ChangedCertifiedYear value)? changedCertifiedYear,
    TResult Function(_ChangedCertifiedMonth value)? changedCertifiedMonth,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements UpdateQualificationInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
mixin _$UpdateQualificationInfoActorState {
  Key? get key => throw _privateConstructorUsedError;
  String get qualificationName => throw _privateConstructorUsedError;
  String get certifiedYear => throw _privateConstructorUsedError;
  String get certifiedMonth => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  List<String> get listOfYear => throw _privateConstructorUsedError;
  bool get hasSetInitialData => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateQualificationInfoActorStateCopyWith<UpdateQualificationInfoActorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQualificationInfoActorStateCopyWith<$Res> {
  factory $UpdateQualificationInfoActorStateCopyWith(
          UpdateQualificationInfoActorState value,
          $Res Function(UpdateQualificationInfoActorState) then) =
      _$UpdateQualificationInfoActorStateCopyWithImpl<$Res,
          UpdateQualificationInfoActorState>;
  @useResult
  $Res call(
      {Key? key,
      String qualificationName,
      String certifiedYear,
      String certifiedMonth,
      bool isSubmitting,
      List<String> listOfYear,
      bool hasSetInitialData,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$UpdateQualificationInfoActorStateCopyWithImpl<$Res,
        $Val extends UpdateQualificationInfoActorState>
    implements $UpdateQualificationInfoActorStateCopyWith<$Res> {
  _$UpdateQualificationInfoActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? qualificationName = null,
    Object? certifiedYear = null,
    Object? certifiedMonth = null,
    Object? isSubmitting = null,
    Object? listOfYear = null,
    Object? hasSetInitialData = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      qualificationName: null == qualificationName
          ? _value.qualificationName
          : qualificationName // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedYear: null == certifiedYear
          ? _value.certifiedYear
          : certifiedYear // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedMonth: null == certifiedMonth
          ? _value.certifiedMonth
          : certifiedMonth // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfYear: null == listOfYear
          ? _value.listOfYear
          : listOfYear // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasSetInitialData: null == hasSetInitialData
          ? _value.hasSetInitialData
          : hasSetInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateQualificationInfoActorStateCopyWith<$Res>
    implements $UpdateQualificationInfoActorStateCopyWith<$Res> {
  factory _$$_UpdateQualificationInfoActorStateCopyWith(
          _$_UpdateQualificationInfoActorState value,
          $Res Function(_$_UpdateQualificationInfoActorState) then) =
      __$$_UpdateQualificationInfoActorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Key? key,
      String qualificationName,
      String certifiedYear,
      String certifiedMonth,
      bool isSubmitting,
      List<String> listOfYear,
      bool hasSetInitialData,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_UpdateQualificationInfoActorStateCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorStateCopyWithImpl<$Res,
        _$_UpdateQualificationInfoActorState>
    implements _$$_UpdateQualificationInfoActorStateCopyWith<$Res> {
  __$$_UpdateQualificationInfoActorStateCopyWithImpl(
      _$_UpdateQualificationInfoActorState _value,
      $Res Function(_$_UpdateQualificationInfoActorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? qualificationName = null,
    Object? certifiedYear = null,
    Object? certifiedMonth = null,
    Object? isSubmitting = null,
    Object? listOfYear = null,
    Object? hasSetInitialData = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_UpdateQualificationInfoActorState(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      qualificationName: null == qualificationName
          ? _value.qualificationName
          : qualificationName // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedYear: null == certifiedYear
          ? _value.certifiedYear
          : certifiedYear // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedMonth: null == certifiedMonth
          ? _value.certifiedMonth
          : certifiedMonth // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfYear: null == listOfYear
          ? _value._listOfYear
          : listOfYear // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasSetInitialData: null == hasSetInitialData
          ? _value.hasSetInitialData
          : hasSetInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UpdateQualificationInfoActorState
    implements _UpdateQualificationInfoActorState {
  const _$_UpdateQualificationInfoActorState(
      {required this.key,
      required this.qualificationName,
      required this.certifiedYear,
      required this.certifiedMonth,
      required this.isSubmitting,
      required final List<String> listOfYear,
      required this.hasSetInitialData,
      required this.failureOrSuccessOption})
      : _listOfYear = listOfYear;

  @override
  final Key? key;
  @override
  final String qualificationName;
  @override
  final String certifiedYear;
  @override
  final String certifiedMonth;
  @override
  final bool isSubmitting;
  final List<String> _listOfYear;
  @override
  List<String> get listOfYear {
    if (_listOfYear is EqualUnmodifiableListView) return _listOfYear;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfYear);
  }

  @override
  final bool hasSetInitialData;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorState(key: $key, qualificationName: $qualificationName, certifiedYear: $certifiedYear, certifiedMonth: $certifiedMonth, isSubmitting: $isSubmitting, listOfYear: $listOfYear, hasSetInitialData: $hasSetInitialData, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateQualificationInfoActorState &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.qualificationName, qualificationName) ||
                other.qualificationName == qualificationName) &&
            (identical(other.certifiedYear, certifiedYear) ||
                other.certifiedYear == certifiedYear) &&
            (identical(other.certifiedMonth, certifiedMonth) ||
                other.certifiedMonth == certifiedMonth) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other._listOfYear, _listOfYear) &&
            (identical(other.hasSetInitialData, hasSetInitialData) ||
                other.hasSetInitialData == hasSetInitialData) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      qualificationName,
      certifiedYear,
      certifiedMonth,
      isSubmitting,
      const DeepCollectionEquality().hash(_listOfYear),
      hasSetInitialData,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateQualificationInfoActorStateCopyWith<
          _$_UpdateQualificationInfoActorState>
      get copyWith => __$$_UpdateQualificationInfoActorStateCopyWithImpl<
          _$_UpdateQualificationInfoActorState>(this, _$identity);
}

abstract class _UpdateQualificationInfoActorState
    implements UpdateQualificationInfoActorState {
  const factory _UpdateQualificationInfoActorState(
      {required final Key? key,
      required final String qualificationName,
      required final String certifiedYear,
      required final String certifiedMonth,
      required final bool isSubmitting,
      required final List<String> listOfYear,
      required final bool hasSetInitialData,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_UpdateQualificationInfoActorState;

  @override
  Key? get key;
  @override
  String get qualificationName;
  @override
  String get certifiedYear;
  @override
  String get certifiedMonth;
  @override
  bool get isSubmitting;
  @override
  List<String> get listOfYear;
  @override
  bool get hasSetInitialData;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateQualificationInfoActorStateCopyWith<
          _$_UpdateQualificationInfoActorState>
      get copyWith => throw _privateConstructorUsedError;
}
