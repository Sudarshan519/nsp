// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_work_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateWorkInfoActorEventTearOff {
  const _$UpdateWorkInfoActorEventTearOff();

// ignore: unused_element
  _ChangedNameOfCompany changedNameOfCompany(String company) {
    return _ChangedNameOfCompany(
      company,
    );
  }

// ignore: unused_element
  _ChangedDesignation changedDesignation(String designation) {
    return _ChangedDesignation(
      designation,
    );
  }

// ignore: unused_element
  _ChangedStartedYear changedStartedYear(String year) {
    return _ChangedStartedYear(
      year,
    );
  }

// ignore: unused_element
  _ChangedEndYear changedEndYear(String year) {
    return _ChangedEndYear(
      year,
    );
  }

// ignore: unused_element
  _SetInitialState setInitialState(WorkHistory workHistory) {
    return _SetInitialState(
      workHistory,
    );
  }

// ignore: unused_element
  _Save save() {
    return const _Save();
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateWorkInfoActorEvent = _$UpdateWorkInfoActorEventTearOff();

/// @nodoc
mixin _$UpdateWorkInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateWorkInfoActorEventCopyWith<$Res> {
  factory $UpdateWorkInfoActorEventCopyWith(UpdateWorkInfoActorEvent value,
          $Res Function(UpdateWorkInfoActorEvent) then) =
      _$UpdateWorkInfoActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements $UpdateWorkInfoActorEventCopyWith<$Res> {
  _$UpdateWorkInfoActorEventCopyWithImpl(this._value, this._then);

  final UpdateWorkInfoActorEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateWorkInfoActorEvent) _then;
}

/// @nodoc
abstract class _$ChangedNameOfCompanyCopyWith<$Res> {
  factory _$ChangedNameOfCompanyCopyWith(_ChangedNameOfCompany value,
          $Res Function(_ChangedNameOfCompany) then) =
      __$ChangedNameOfCompanyCopyWithImpl<$Res>;
  $Res call({String company});
}

/// @nodoc
class __$ChangedNameOfCompanyCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedNameOfCompanyCopyWith<$Res> {
  __$ChangedNameOfCompanyCopyWithImpl(
      _ChangedNameOfCompany _value, $Res Function(_ChangedNameOfCompany) _then)
      : super(_value, (v) => _then(v as _ChangedNameOfCompany));

  @override
  _ChangedNameOfCompany get _value => super._value as _ChangedNameOfCompany;

  @override
  $Res call({
    Object company = freezed,
  }) {
    return _then(_ChangedNameOfCompany(
      company == freezed ? _value.company : company as String,
    ));
  }
}

/// @nodoc
class _$_ChangedNameOfCompany implements _ChangedNameOfCompany {
  const _$_ChangedNameOfCompany(this.company) : assert(company != null);

  @override
  final String company;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedNameOfCompany(company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedNameOfCompany &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(company);

  @JsonKey(ignore: true)
  @override
  _$ChangedNameOfCompanyCopyWith<_ChangedNameOfCompany> get copyWith =>
      __$ChangedNameOfCompanyCopyWithImpl<_ChangedNameOfCompany>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedNameOfCompany(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedNameOfCompany != null) {
      return changedNameOfCompany(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedNameOfCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedNameOfCompany != null) {
      return changedNameOfCompany(this);
    }
    return orElse();
  }
}

abstract class _ChangedNameOfCompany implements UpdateWorkInfoActorEvent {
  const factory _ChangedNameOfCompany(String company) = _$_ChangedNameOfCompany;

  String get company;
  @JsonKey(ignore: true)
  _$ChangedNameOfCompanyCopyWith<_ChangedNameOfCompany> get copyWith;
}

/// @nodoc
abstract class _$ChangedDesignationCopyWith<$Res> {
  factory _$ChangedDesignationCopyWith(
          _ChangedDesignation value, $Res Function(_ChangedDesignation) then) =
      __$ChangedDesignationCopyWithImpl<$Res>;
  $Res call({String designation});
}

/// @nodoc
class __$ChangedDesignationCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedDesignationCopyWith<$Res> {
  __$ChangedDesignationCopyWithImpl(
      _ChangedDesignation _value, $Res Function(_ChangedDesignation) _then)
      : super(_value, (v) => _then(v as _ChangedDesignation));

  @override
  _ChangedDesignation get _value => super._value as _ChangedDesignation;

  @override
  $Res call({
    Object designation = freezed,
  }) {
    return _then(_ChangedDesignation(
      designation == freezed ? _value.designation : designation as String,
    ));
  }
}

/// @nodoc
class _$_ChangedDesignation implements _ChangedDesignation {
  const _$_ChangedDesignation(this.designation) : assert(designation != null);

  @override
  final String designation;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedDesignation(designation: $designation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedDesignation &&
            (identical(other.designation, designation) ||
                const DeepCollectionEquality()
                    .equals(other.designation, designation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(designation);

  @JsonKey(ignore: true)
  @override
  _$ChangedDesignationCopyWith<_ChangedDesignation> get copyWith =>
      __$ChangedDesignationCopyWithImpl<_ChangedDesignation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedDesignation(designation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedDesignation != null) {
      return changedDesignation(designation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedDesignation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedDesignation != null) {
      return changedDesignation(this);
    }
    return orElse();
  }
}

abstract class _ChangedDesignation implements UpdateWorkInfoActorEvent {
  const factory _ChangedDesignation(String designation) = _$_ChangedDesignation;

  String get designation;
  @JsonKey(ignore: true)
  _$ChangedDesignationCopyWith<_ChangedDesignation> get copyWith;
}

/// @nodoc
abstract class _$ChangedStartedYearCopyWith<$Res> {
  factory _$ChangedStartedYearCopyWith(
          _ChangedStartedYear value, $Res Function(_ChangedStartedYear) then) =
      __$ChangedStartedYearCopyWithImpl<$Res>;
  $Res call({String year});
}

/// @nodoc
class __$ChangedStartedYearCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedStartedYearCopyWith<$Res> {
  __$ChangedStartedYearCopyWithImpl(
      _ChangedStartedYear _value, $Res Function(_ChangedStartedYear) _then)
      : super(_value, (v) => _then(v as _ChangedStartedYear));

  @override
  _ChangedStartedYear get _value => super._value as _ChangedStartedYear;

  @override
  $Res call({
    Object year = freezed,
  }) {
    return _then(_ChangedStartedYear(
      year == freezed ? _value.year : year as String,
    ));
  }
}

/// @nodoc
class _$_ChangedStartedYear implements _ChangedStartedYear {
  const _$_ChangedStartedYear(this.year) : assert(year != null);

  @override
  final String year;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedStartedYear(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedStartedYear &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$ChangedStartedYearCopyWith<_ChangedStartedYear> get copyWith =>
      __$ChangedStartedYearCopyWithImpl<_ChangedStartedYear>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedStartedYear(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedStartedYear != null) {
      return changedStartedYear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedStartedYear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedStartedYear != null) {
      return changedStartedYear(this);
    }
    return orElse();
  }
}

abstract class _ChangedStartedYear implements UpdateWorkInfoActorEvent {
  const factory _ChangedStartedYear(String year) = _$_ChangedStartedYear;

  String get year;
  @JsonKey(ignore: true)
  _$ChangedStartedYearCopyWith<_ChangedStartedYear> get copyWith;
}

/// @nodoc
abstract class _$ChangedEndYearCopyWith<$Res> {
  factory _$ChangedEndYearCopyWith(
          _ChangedEndYear value, $Res Function(_ChangedEndYear) then) =
      __$ChangedEndYearCopyWithImpl<$Res>;
  $Res call({String year});
}

/// @nodoc
class __$ChangedEndYearCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedEndYearCopyWith<$Res> {
  __$ChangedEndYearCopyWithImpl(
      _ChangedEndYear _value, $Res Function(_ChangedEndYear) _then)
      : super(_value, (v) => _then(v as _ChangedEndYear));

  @override
  _ChangedEndYear get _value => super._value as _ChangedEndYear;

  @override
  $Res call({
    Object year = freezed,
  }) {
    return _then(_ChangedEndYear(
      year == freezed ? _value.year : year as String,
    ));
  }
}

/// @nodoc
class _$_ChangedEndYear implements _ChangedEndYear {
  const _$_ChangedEndYear(this.year) : assert(year != null);

  @override
  final String year;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedEndYear(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedEndYear &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$ChangedEndYearCopyWith<_ChangedEndYear> get copyWith =>
      __$ChangedEndYearCopyWithImpl<_ChangedEndYear>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedEndYear(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedEndYear != null) {
      return changedEndYear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedEndYear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedEndYear != null) {
      return changedEndYear(this);
    }
    return orElse();
  }
}

abstract class _ChangedEndYear implements UpdateWorkInfoActorEvent {
  const factory _ChangedEndYear(String year) = _$_ChangedEndYear;

  String get year;
  @JsonKey(ignore: true)
  _$ChangedEndYearCopyWith<_ChangedEndYear> get copyWith;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({WorkHistory workHistory});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object workHistory = freezed,
  }) {
    return _then(_SetInitialState(
      workHistory == freezed ? _value.workHistory : workHistory as WorkHistory,
    ));
  }
}

/// @nodoc
class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.workHistory) : assert(workHistory != null);

  @override
  final WorkHistory workHistory;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.setInitialState(workHistory: $workHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
            (identical(other.workHistory, workHistory) ||
                const DeepCollectionEquality()
                    .equals(other.workHistory, workHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workHistory);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(workHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setInitialState != null) {
      return setInitialState(workHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
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

abstract class _SetInitialState implements UpdateWorkInfoActorEvent {
  const factory _SetInitialState(WorkHistory workHistory) = _$_SetInitialState;

  WorkHistory get workHistory;
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
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
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
    return 'UpdateWorkInfoActorEvent.save()';
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
    @required TResult changedNameOfCompany(String company),
    @required TResult changedDesignation(String designation),
    @required TResult changedStartedYear(String year),
    @required TResult changedEndYear(String year),
    @required TResult setInitialState(WorkHistory workHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedDesignation(String designation),
    TResult changedStartedYear(String year),
    TResult changedEndYear(String year),
    TResult setInitialState(WorkHistory workHistory),
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
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedDesignation(_ChangedDesignation value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedDesignation != null);
    assert(changedStartedYear != null);
    assert(changedEndYear != null);
    assert(setInitialState != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedDesignation(_ChangedDesignation value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedEndYear(_ChangedEndYear value),
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

abstract class _Save implements UpdateWorkInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$UpdateWorkInfoActorStateTearOff {
  const _$UpdateWorkInfoActorStateTearOff();

// ignore: unused_element
  _UpdateWorkInfoActorState call(
      {@required String nameOfComapny,
      @required String designation,
      @required String startedYear,
      @required String endYear,
      @required bool isSubmitting,
      @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) {
    return _UpdateWorkInfoActorState(
      nameOfComapny: nameOfComapny,
      designation: designation,
      startedYear: startedYear,
      endYear: endYear,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateWorkInfoActorState = _$UpdateWorkInfoActorStateTearOff();

/// @nodoc
mixin _$UpdateWorkInfoActorState {
  String get nameOfComapny;
  String get designation;
  String get startedYear;
  String get endYear;
  bool get isSubmitting;
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UpdateWorkInfoActorStateCopyWith<UpdateWorkInfoActorState> get copyWith;
}

/// @nodoc
abstract class $UpdateWorkInfoActorStateCopyWith<$Res> {
  factory $UpdateWorkInfoActorStateCopyWith(UpdateWorkInfoActorState value,
          $Res Function(UpdateWorkInfoActorState) then) =
      _$UpdateWorkInfoActorStateCopyWithImpl<$Res>;
  $Res call(
      {String nameOfComapny,
      String designation,
      String startedYear,
      String endYear,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateWorkInfoActorStateCopyWithImpl<$Res>
    implements $UpdateWorkInfoActorStateCopyWith<$Res> {
  _$UpdateWorkInfoActorStateCopyWithImpl(this._value, this._then);

  final UpdateWorkInfoActorState _value;
  // ignore: unused_field
  final $Res Function(UpdateWorkInfoActorState) _then;

  @override
  $Res call({
    Object nameOfComapny = freezed,
    Object designation = freezed,
    Object startedYear = freezed,
    Object endYear = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      nameOfComapny: nameOfComapny == freezed
          ? _value.nameOfComapny
          : nameOfComapny as String,
      designation:
          designation == freezed ? _value.designation : designation as String,
      startedYear:
          startedYear == freezed ? _value.startedYear : startedYear as String,
      endYear: endYear == freezed ? _value.endYear : endYear as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateWorkInfoActorStateCopyWith<$Res>
    implements $UpdateWorkInfoActorStateCopyWith<$Res> {
  factory _$UpdateWorkInfoActorStateCopyWith(_UpdateWorkInfoActorState value,
          $Res Function(_UpdateWorkInfoActorState) then) =
      __$UpdateWorkInfoActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nameOfComapny,
      String designation,
      String startedYear,
      String endYear,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$UpdateWorkInfoActorStateCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorStateCopyWithImpl<$Res>
    implements _$UpdateWorkInfoActorStateCopyWith<$Res> {
  __$UpdateWorkInfoActorStateCopyWithImpl(_UpdateWorkInfoActorState _value,
      $Res Function(_UpdateWorkInfoActorState) _then)
      : super(_value, (v) => _then(v as _UpdateWorkInfoActorState));

  @override
  _UpdateWorkInfoActorState get _value =>
      super._value as _UpdateWorkInfoActorState;

  @override
  $Res call({
    Object nameOfComapny = freezed,
    Object designation = freezed,
    Object startedYear = freezed,
    Object endYear = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateWorkInfoActorState(
      nameOfComapny: nameOfComapny == freezed
          ? _value.nameOfComapny
          : nameOfComapny as String,
      designation:
          designation == freezed ? _value.designation : designation as String,
      startedYear:
          startedYear == freezed ? _value.startedYear : startedYear as String,
      endYear: endYear == freezed ? _value.endYear : endYear as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UpdateWorkInfoActorState implements _UpdateWorkInfoActorState {
  const _$_UpdateWorkInfoActorState(
      {@required this.nameOfComapny,
      @required this.designation,
      @required this.startedYear,
      @required this.endYear,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(nameOfComapny != null),
        assert(designation != null),
        assert(startedYear != null),
        assert(endYear != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String nameOfComapny;
  @override
  final String designation;
  @override
  final String startedYear;
  @override
  final String endYear;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateWorkInfoActorState(nameOfComapny: $nameOfComapny, designation: $designation, startedYear: $startedYear, endYear: $endYear, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateWorkInfoActorState &&
            (identical(other.nameOfComapny, nameOfComapny) ||
                const DeepCollectionEquality()
                    .equals(other.nameOfComapny, nameOfComapny)) &&
            (identical(other.designation, designation) ||
                const DeepCollectionEquality()
                    .equals(other.designation, designation)) &&
            (identical(other.startedYear, startedYear) ||
                const DeepCollectionEquality()
                    .equals(other.startedYear, startedYear)) &&
            (identical(other.endYear, endYear) ||
                const DeepCollectionEquality()
                    .equals(other.endYear, endYear)) &&
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
      const DeepCollectionEquality().hash(nameOfComapny) ^
      const DeepCollectionEquality().hash(designation) ^
      const DeepCollectionEquality().hash(startedYear) ^
      const DeepCollectionEquality().hash(endYear) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateWorkInfoActorStateCopyWith<_UpdateWorkInfoActorState> get copyWith =>
      __$UpdateWorkInfoActorStateCopyWithImpl<_UpdateWorkInfoActorState>(
          this, _$identity);
}

abstract class _UpdateWorkInfoActorState implements UpdateWorkInfoActorState {
  const factory _UpdateWorkInfoActorState(
          {@required
              String nameOfComapny,
          @required
              String designation,
          @required
              String startedYear,
          @required
              String endYear,
          @required
              bool isSubmitting,
          @required
              Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) =
      _$_UpdateWorkInfoActorState;

  @override
  String get nameOfComapny;
  @override
  String get designation;
  @override
  String get startedYear;
  @override
  String get endYear;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdateWorkInfoActorStateCopyWith<_UpdateWorkInfoActorState> get copyWith;
}
