// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_qualification_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateQualificationInfoActorEventTearOff {
  const _$UpdateQualificationInfoActorEventTearOff();

  _ChangedQualificationName changedQualificationName(String name) {
    return _ChangedQualificationName(
      name,
    );
  }

  _ChangedCertifiedYear changedCertifiedYear(String year) {
    return _ChangedCertifiedYear(
      year,
    );
  }

  _ChangedCertifiedMonth changedCertifiedMonth(String month) {
    return _ChangedCertifiedMonth(
      month,
    );
  }

  _SetInitialState setInitialState(
      QualificationHistory qualificationHistory, String lang) {
    return _SetInitialState(
      qualificationHistory,
      lang,
    );
  }

  _Save save() {
    return const _Save();
  }
}

/// @nodoc
const $UpdateQualificationInfoActorEvent =
    _$UpdateQualificationInfoActorEventTearOff();

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
      _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>
    implements $UpdateQualificationInfoActorEventCopyWith<$Res> {
  _$UpdateQualificationInfoActorEventCopyWithImpl(this._value, this._then);

  final UpdateQualificationInfoActorEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateQualificationInfoActorEvent) _then;
}

/// @nodoc
abstract class _$ChangedQualificationNameCopyWith<$Res> {
  factory _$ChangedQualificationNameCopyWith(_ChangedQualificationName value,
          $Res Function(_ChangedQualificationName) then) =
      __$ChangedQualificationNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangedQualificationNameCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedQualificationNameCopyWith<$Res> {
  __$ChangedQualificationNameCopyWithImpl(_ChangedQualificationName _value,
      $Res Function(_ChangedQualificationName) _then)
      : super(_value, (v) => _then(v as _ChangedQualificationName));

  @override
  _ChangedQualificationName get _value =>
      super._value as _ChangedQualificationName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ChangedQualificationName(
      name == freezed
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
        (other is _ChangedQualificationName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangedQualificationNameCopyWith<_ChangedQualificationName> get copyWith =>
      __$ChangedQualificationNameCopyWithImpl<_ChangedQualificationName>(
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
    return changedQualificationName(name);
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
  const factory _ChangedQualificationName(String name) =
      _$_ChangedQualificationName;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangedQualificationNameCopyWith<_ChangedQualificationName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedCertifiedYearCopyWith<$Res> {
  factory _$ChangedCertifiedYearCopyWith(_ChangedCertifiedYear value,
          $Res Function(_ChangedCertifiedYear) then) =
      __$ChangedCertifiedYearCopyWithImpl<$Res>;
  $Res call({String year});
}

/// @nodoc
class __$ChangedCertifiedYearCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedCertifiedYearCopyWith<$Res> {
  __$ChangedCertifiedYearCopyWithImpl(
      _ChangedCertifiedYear _value, $Res Function(_ChangedCertifiedYear) _then)
      : super(_value, (v) => _then(v as _ChangedCertifiedYear));

  @override
  _ChangedCertifiedYear get _value => super._value as _ChangedCertifiedYear;

  @override
  $Res call({
    Object? year = freezed,
  }) {
    return _then(_ChangedCertifiedYear(
      year == freezed
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
        (other is _ChangedCertifiedYear &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$ChangedCertifiedYearCopyWith<_ChangedCertifiedYear> get copyWith =>
      __$ChangedCertifiedYearCopyWithImpl<_ChangedCertifiedYear>(
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
  const factory _ChangedCertifiedYear(String year) = _$_ChangedCertifiedYear;

  String get year => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangedCertifiedYearCopyWith<_ChangedCertifiedYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedCertifiedMonthCopyWith<$Res> {
  factory _$ChangedCertifiedMonthCopyWith(_ChangedCertifiedMonth value,
          $Res Function(_ChangedCertifiedMonth) then) =
      __$ChangedCertifiedMonthCopyWithImpl<$Res>;
  $Res call({String month});
}

/// @nodoc
class __$ChangedCertifiedMonthCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedCertifiedMonthCopyWith<$Res> {
  __$ChangedCertifiedMonthCopyWithImpl(_ChangedCertifiedMonth _value,
      $Res Function(_ChangedCertifiedMonth) _then)
      : super(_value, (v) => _then(v as _ChangedCertifiedMonth));

  @override
  _ChangedCertifiedMonth get _value => super._value as _ChangedCertifiedMonth;

  @override
  $Res call({
    Object? month = freezed,
  }) {
    return _then(_ChangedCertifiedMonth(
      month == freezed
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
        (other is _ChangedCertifiedMonth &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(month);

  @JsonKey(ignore: true)
  @override
  _$ChangedCertifiedMonthCopyWith<_ChangedCertifiedMonth> get copyWith =>
      __$ChangedCertifiedMonthCopyWithImpl<_ChangedCertifiedMonth>(
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
  const factory _ChangedCertifiedMonth(String month) = _$_ChangedCertifiedMonth;

  String get month => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangedCertifiedMonthCopyWith<_ChangedCertifiedMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({QualificationHistory qualificationHistory, String lang});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object? qualificationHistory = freezed,
    Object? lang = freezed,
  }) {
    return _then(_SetInitialState(
      qualificationHistory == freezed
          ? _value.qualificationHistory
          : qualificationHistory // ignore: cast_nullable_to_non_nullable
              as QualificationHistory,
      lang == freezed
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
        (other is _SetInitialState &&
            (identical(other.qualificationHistory, qualificationHistory) ||
                const DeepCollectionEquality().equals(
                    other.qualificationHistory, qualificationHistory)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(qualificationHistory) ^
      const DeepCollectionEquality().hash(lang);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

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
          QualificationHistory qualificationHistory, String lang) =
      _$_SetInitialState;

  QualificationHistory get qualificationHistory =>
      throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorEventCopyWithImpl<$Res>
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
    return 'UpdateQualificationInfoActorEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Save);
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
class _$UpdateQualificationInfoActorStateTearOff {
  const _$UpdateQualificationInfoActorStateTearOff();

  _UpdateQualificationInfoActorState call(
      {required Key? key,
      required String qualificationName,
      required String certifiedYear,
      required String certifiedMonth,
      required bool isSubmitting,
      required bool hasSetInitialData,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _UpdateQualificationInfoActorState(
      key: key,
      qualificationName: qualificationName,
      certifiedYear: certifiedYear,
      certifiedMonth: certifiedMonth,
      isSubmitting: isSubmitting,
      hasSetInitialData: hasSetInitialData,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UpdateQualificationInfoActorState =
    _$UpdateQualificationInfoActorStateTearOff();

/// @nodoc
mixin _$UpdateQualificationInfoActorState {
  Key? get key => throw _privateConstructorUsedError;
  String get qualificationName => throw _privateConstructorUsedError;
  String get certifiedYear => throw _privateConstructorUsedError;
  String get certifiedMonth => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
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
      _$UpdateQualificationInfoActorStateCopyWithImpl<$Res>;
  $Res call(
      {Key? key,
      String qualificationName,
      String certifiedYear,
      String certifiedMonth,
      bool isSubmitting,
      bool hasSetInitialData,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$UpdateQualificationInfoActorStateCopyWithImpl<$Res>
    implements $UpdateQualificationInfoActorStateCopyWith<$Res> {
  _$UpdateQualificationInfoActorStateCopyWithImpl(this._value, this._then);

  final UpdateQualificationInfoActorState _value;
  // ignore: unused_field
  final $Res Function(UpdateQualificationInfoActorState) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? qualificationName = freezed,
    Object? certifiedYear = freezed,
    Object? certifiedMonth = freezed,
    Object? isSubmitting = freezed,
    Object? hasSetInitialData = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      qualificationName: qualificationName == freezed
          ? _value.qualificationName
          : qualificationName // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedYear: certifiedYear == freezed
          ? _value.certifiedYear
          : certifiedYear // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedMonth: certifiedMonth == freezed
          ? _value.certifiedMonth
          : certifiedMonth // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSetInitialData: hasSetInitialData == freezed
          ? _value.hasSetInitialData
          : hasSetInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateQualificationInfoActorStateCopyWith<$Res>
    implements $UpdateQualificationInfoActorStateCopyWith<$Res> {
  factory _$UpdateQualificationInfoActorStateCopyWith(
          _UpdateQualificationInfoActorState value,
          $Res Function(_UpdateQualificationInfoActorState) then) =
      __$UpdateQualificationInfoActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key? key,
      String qualificationName,
      String certifiedYear,
      String certifiedMonth,
      bool isSubmitting,
      bool hasSetInitialData,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$UpdateQualificationInfoActorStateCopyWithImpl<$Res>
    extends _$UpdateQualificationInfoActorStateCopyWithImpl<$Res>
    implements _$UpdateQualificationInfoActorStateCopyWith<$Res> {
  __$UpdateQualificationInfoActorStateCopyWithImpl(
      _UpdateQualificationInfoActorState _value,
      $Res Function(_UpdateQualificationInfoActorState) _then)
      : super(_value, (v) => _then(v as _UpdateQualificationInfoActorState));

  @override
  _UpdateQualificationInfoActorState get _value =>
      super._value as _UpdateQualificationInfoActorState;

  @override
  $Res call({
    Object? key = freezed,
    Object? qualificationName = freezed,
    Object? certifiedYear = freezed,
    Object? certifiedMonth = freezed,
    Object? isSubmitting = freezed,
    Object? hasSetInitialData = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateQualificationInfoActorState(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      qualificationName: qualificationName == freezed
          ? _value.qualificationName
          : qualificationName // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedYear: certifiedYear == freezed
          ? _value.certifiedYear
          : certifiedYear // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedMonth: certifiedMonth == freezed
          ? _value.certifiedMonth
          : certifiedMonth // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSetInitialData: hasSetInitialData == freezed
          ? _value.hasSetInitialData
          : hasSetInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
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
      required this.hasSetInitialData,
      required this.failureOrSuccessOption});

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
  @override
  final bool hasSetInitialData;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorState(key: $key, qualificationName: $qualificationName, certifiedYear: $certifiedYear, certifiedMonth: $certifiedMonth, isSubmitting: $isSubmitting, hasSetInitialData: $hasSetInitialData, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQualificationInfoActorState &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.qualificationName, qualificationName) ||
                const DeepCollectionEquality()
                    .equals(other.qualificationName, qualificationName)) &&
            (identical(other.certifiedYear, certifiedYear) ||
                const DeepCollectionEquality()
                    .equals(other.certifiedYear, certifiedYear)) &&
            (identical(other.certifiedMonth, certifiedMonth) ||
                const DeepCollectionEquality()
                    .equals(other.certifiedMonth, certifiedMonth)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.hasSetInitialData, hasSetInitialData) ||
                const DeepCollectionEquality()
                    .equals(other.hasSetInitialData, hasSetInitialData)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(qualificationName) ^
      const DeepCollectionEquality().hash(certifiedYear) ^
      const DeepCollectionEquality().hash(certifiedMonth) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(hasSetInitialData) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateQualificationInfoActorStateCopyWith<
          _UpdateQualificationInfoActorState>
      get copyWith => __$UpdateQualificationInfoActorStateCopyWithImpl<
          _UpdateQualificationInfoActorState>(this, _$identity);
}

abstract class _UpdateQualificationInfoActorState
    implements UpdateQualificationInfoActorState {
  const factory _UpdateQualificationInfoActorState(
          {required Key? key,
          required String qualificationName,
          required String certifiedYear,
          required String certifiedMonth,
          required bool isSubmitting,
          required bool hasSetInitialData,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_UpdateQualificationInfoActorState;

  @override
  Key? get key => throw _privateConstructorUsedError;
  @override
  String get qualificationName => throw _privateConstructorUsedError;
  @override
  String get certifiedYear => throw _privateConstructorUsedError;
  @override
  String get certifiedMonth => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get hasSetInitialData => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateQualificationInfoActorStateCopyWith<
          _UpdateQualificationInfoActorState>
      get copyWith => throw _privateConstructorUsedError;
}
