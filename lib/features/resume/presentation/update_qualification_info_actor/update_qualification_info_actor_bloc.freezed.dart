// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_qualification_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateQualificationInfoActorEventTearOff {
  const _$UpdateQualificationInfoActorEventTearOff();

// ignore: unused_element
  _ChangedQualificationName changedQualificationName(String name) {
    return _ChangedQualificationName(
      name,
    );
  }

// ignore: unused_element
  _ChangedCertifiedYear changedCertifiedYear(String year) {
    return _ChangedCertifiedYear(
      year,
    );
  }

// ignore: unused_element
  _ChangedCertifiedMonth changedCertifiedMonth(String month) {
    return _ChangedCertifiedMonth(
      month,
    );
  }

// ignore: unused_element
  _SetInitialState setInitialState(
      QualificationHistory qualificationHistory, String lang) {
    return _SetInitialState(
      qualificationHistory,
      lang,
    );
  }

// ignore: unused_element
  _Save save() {
    return const _Save();
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQualificationInfoActorEvent =
    _$UpdateQualificationInfoActorEventTearOff();

/// @nodoc
mixin _$UpdateQualificationInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedQualificationName(String name),
    @required TResult changedCertifiedYear(String year),
    @required TResult changedCertifiedMonth(String month),
    @required
        TResult setInitialState(
            QualificationHistory qualificationHistory, String lang),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedQualificationName(String name),
    TResult changedCertifiedYear(String year),
    TResult changedCertifiedMonth(String month),
    TResult setInitialState(
        QualificationHistory qualificationHistory, String lang),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedQualificationName(_ChangedQualificationName value),
    @required TResult changedCertifiedYear(_ChangedCertifiedYear value),
    @required TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedQualificationName(_ChangedQualificationName value),
    TResult changedCertifiedYear(_ChangedCertifiedYear value),
    TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  });
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
    Object name = freezed,
  }) {
    return _then(_ChangedQualificationName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChangedQualificationName implements _ChangedQualificationName {
  const _$_ChangedQualificationName(this.name) : assert(name != null);

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
  TResult when<TResult extends Object>({
    @required TResult changedQualificationName(String name),
    @required TResult changedCertifiedYear(String year),
    @required TResult changedCertifiedMonth(String month),
    @required
        TResult setInitialState(
            QualificationHistory qualificationHistory, String lang),
    @required TResult save(),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedQualificationName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedQualificationName(String name),
    TResult changedCertifiedYear(String year),
    TResult changedCertifiedMonth(String month),
    TResult setInitialState(
        QualificationHistory qualificationHistory, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedQualificationName != null) {
      return changedQualificationName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedQualificationName(_ChangedQualificationName value),
    @required TResult changedCertifiedYear(_ChangedCertifiedYear value),
    @required TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedQualificationName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedQualificationName(_ChangedQualificationName value),
    TResult changedCertifiedYear(_ChangedCertifiedYear value),
    TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

  String get name;
  @JsonKey(ignore: true)
  _$ChangedQualificationNameCopyWith<_ChangedQualificationName> get copyWith;
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
    Object year = freezed,
  }) {
    return _then(_ChangedCertifiedYear(
      year == freezed ? _value.year : year as String,
    ));
  }
}

/// @nodoc
class _$_ChangedCertifiedYear implements _ChangedCertifiedYear {
  const _$_ChangedCertifiedYear(this.year) : assert(year != null);

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
  TResult when<TResult extends Object>({
    @required TResult changedQualificationName(String name),
    @required TResult changedCertifiedYear(String year),
    @required TResult changedCertifiedMonth(String month),
    @required
        TResult setInitialState(
            QualificationHistory qualificationHistory, String lang),
    @required TResult save(),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedCertifiedYear(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedQualificationName(String name),
    TResult changedCertifiedYear(String year),
    TResult changedCertifiedMonth(String month),
    TResult setInitialState(
        QualificationHistory qualificationHistory, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCertifiedYear != null) {
      return changedCertifiedYear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedQualificationName(_ChangedQualificationName value),
    @required TResult changedCertifiedYear(_ChangedCertifiedYear value),
    @required TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedCertifiedYear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedQualificationName(_ChangedQualificationName value),
    TResult changedCertifiedYear(_ChangedCertifiedYear value),
    TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCertifiedYear != null) {
      return changedCertifiedYear(this);
    }
    return orElse();
  }
}

abstract class _ChangedCertifiedYear
    implements UpdateQualificationInfoActorEvent {
  const factory _ChangedCertifiedYear(String year) = _$_ChangedCertifiedYear;

  String get year;
  @JsonKey(ignore: true)
  _$ChangedCertifiedYearCopyWith<_ChangedCertifiedYear> get copyWith;
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
    Object month = freezed,
  }) {
    return _then(_ChangedCertifiedMonth(
      month == freezed ? _value.month : month as String,
    ));
  }
}

/// @nodoc
class _$_ChangedCertifiedMonth implements _ChangedCertifiedMonth {
  const _$_ChangedCertifiedMonth(this.month) : assert(month != null);

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
  TResult when<TResult extends Object>({
    @required TResult changedQualificationName(String name),
    @required TResult changedCertifiedYear(String year),
    @required TResult changedCertifiedMonth(String month),
    @required
        TResult setInitialState(
            QualificationHistory qualificationHistory, String lang),
    @required TResult save(),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedCertifiedMonth(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedQualificationName(String name),
    TResult changedCertifiedYear(String year),
    TResult changedCertifiedMonth(String month),
    TResult setInitialState(
        QualificationHistory qualificationHistory, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCertifiedMonth != null) {
      return changedCertifiedMonth(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedQualificationName(_ChangedQualificationName value),
    @required TResult changedCertifiedYear(_ChangedCertifiedYear value),
    @required TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedCertifiedMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedQualificationName(_ChangedQualificationName value),
    TResult changedCertifiedYear(_ChangedCertifiedYear value),
    TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCertifiedMonth != null) {
      return changedCertifiedMonth(this);
    }
    return orElse();
  }
}

abstract class _ChangedCertifiedMonth
    implements UpdateQualificationInfoActorEvent {
  const factory _ChangedCertifiedMonth(String month) = _$_ChangedCertifiedMonth;

  String get month;
  @JsonKey(ignore: true)
  _$ChangedCertifiedMonthCopyWith<_ChangedCertifiedMonth> get copyWith;
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
    Object qualificationHistory = freezed,
    Object lang = freezed,
  }) {
    return _then(_SetInitialState(
      qualificationHistory == freezed
          ? _value.qualificationHistory
          : qualificationHistory as QualificationHistory,
      lang == freezed ? _value.lang : lang as String,
    ));
  }
}

/// @nodoc
class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.qualificationHistory, this.lang)
      : assert(qualificationHistory != null),
        assert(lang != null);

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
  TResult when<TResult extends Object>({
    @required TResult changedQualificationName(String name),
    @required TResult changedCertifiedYear(String year),
    @required TResult changedCertifiedMonth(String month),
    @required
        TResult setInitialState(
            QualificationHistory qualificationHistory, String lang),
    @required TResult save(),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(qualificationHistory, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedQualificationName(String name),
    TResult changedCertifiedYear(String year),
    TResult changedCertifiedMonth(String month),
    TResult setInitialState(
        QualificationHistory qualificationHistory, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setInitialState != null) {
      return setInitialState(qualificationHistory, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedQualificationName(_ChangedQualificationName value),
    @required TResult changedCertifiedYear(_ChangedCertifiedYear value),
    @required TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedQualificationName(_ChangedQualificationName value),
    TResult changedCertifiedYear(_ChangedCertifiedYear value),
    TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

  QualificationHistory get qualificationHistory;
  String get lang;
  @JsonKey(ignore: true)
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult changedQualificationName(String name),
    @required TResult changedCertifiedYear(String year),
    @required TResult changedCertifiedMonth(String month),
    @required
        TResult setInitialState(
            QualificationHistory qualificationHistory, String lang),
    @required TResult save(),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedQualificationName(String name),
    TResult changedCertifiedYear(String year),
    TResult changedCertifiedMonth(String month),
    TResult setInitialState(
        QualificationHistory qualificationHistory, String lang),
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
    @required TResult changedQualificationName(_ChangedQualificationName value),
    @required TResult changedCertifiedYear(_ChangedCertifiedYear value),
    @required TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedQualificationName != null);
    assert(changedCertifiedYear != null);
    assert(changedCertifiedMonth != null);
    assert(setInitialState != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedQualificationName(_ChangedQualificationName value),
    TResult changedCertifiedYear(_ChangedCertifiedYear value),
    TResult changedCertifiedMonth(_ChangedCertifiedMonth value),
    TResult setInitialState(_SetInitialState value),
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

abstract class _Save implements UpdateQualificationInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$UpdateQualificationInfoActorStateTearOff {
  const _$UpdateQualificationInfoActorStateTearOff();

// ignore: unused_element
  _UpdateQualificationInfoActorState call(
      {@required String qualificationName,
      @required String certifiedYear,
      @required String certifiedMonth,
      @required bool isSubmitting,
      @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) {
    return _UpdateQualificationInfoActorState(
      qualificationName: qualificationName,
      certifiedYear: certifiedYear,
      certifiedMonth: certifiedMonth,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQualificationInfoActorState =
    _$UpdateQualificationInfoActorStateTearOff();

/// @nodoc
mixin _$UpdateQualificationInfoActorState {
  String get qualificationName;
  String get certifiedYear;
  String get certifiedMonth;
  bool get isSubmitting;
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UpdateQualificationInfoActorStateCopyWith<UpdateQualificationInfoActorState>
      get copyWith;
}

/// @nodoc
abstract class $UpdateQualificationInfoActorStateCopyWith<$Res> {
  factory $UpdateQualificationInfoActorStateCopyWith(
          UpdateQualificationInfoActorState value,
          $Res Function(UpdateQualificationInfoActorState) then) =
      _$UpdateQualificationInfoActorStateCopyWithImpl<$Res>;
  $Res call(
      {String qualificationName,
      String certifiedYear,
      String certifiedMonth,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
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
    Object qualificationName = freezed,
    Object certifiedYear = freezed,
    Object certifiedMonth = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      qualificationName: qualificationName == freezed
          ? _value.qualificationName
          : qualificationName as String,
      certifiedYear: certifiedYear == freezed
          ? _value.certifiedYear
          : certifiedYear as String,
      certifiedMonth: certifiedMonth == freezed
          ? _value.certifiedMonth
          : certifiedMonth as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
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
      {String qualificationName,
      String certifiedYear,
      String certifiedMonth,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
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
    Object qualificationName = freezed,
    Object certifiedYear = freezed,
    Object certifiedMonth = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateQualificationInfoActorState(
      qualificationName: qualificationName == freezed
          ? _value.qualificationName
          : qualificationName as String,
      certifiedYear: certifiedYear == freezed
          ? _value.certifiedYear
          : certifiedYear as String,
      certifiedMonth: certifiedMonth == freezed
          ? _value.certifiedMonth
          : certifiedMonth as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UpdateQualificationInfoActorState
    implements _UpdateQualificationInfoActorState {
  const _$_UpdateQualificationInfoActorState(
      {@required this.qualificationName,
      @required this.certifiedYear,
      @required this.certifiedMonth,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(qualificationName != null),
        assert(certifiedYear != null),
        assert(certifiedMonth != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String qualificationName;
  @override
  final String certifiedYear;
  @override
  final String certifiedMonth;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateQualificationInfoActorState(qualificationName: $qualificationName, certifiedYear: $certifiedYear, certifiedMonth: $certifiedMonth, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQualificationInfoActorState &&
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
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(qualificationName) ^
      const DeepCollectionEquality().hash(certifiedYear) ^
      const DeepCollectionEquality().hash(certifiedMonth) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

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
          {@required
              String qualificationName,
          @required
              String certifiedYear,
          @required
              String certifiedMonth,
          @required
              bool isSubmitting,
          @required
              Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) =
      _$_UpdateQualificationInfoActorState;

  @override
  String get qualificationName;
  @override
  String get certifiedYear;
  @override
  String get certifiedMonth;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdateQualificationInfoActorStateCopyWith<
      _UpdateQualificationInfoActorState> get copyWith;
}
