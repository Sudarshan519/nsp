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
  _ChangedTypeOfCompany changedTypeOfCompany(String type) {
    return _ChangedTypeOfCompany(
      type,
    );
  }

// ignore: unused_element
  _ChangedStartedYear changedStartedYear(String year) {
    return _ChangedStartedYear(
      year,
    );
  }

// ignore: unused_element
  _ChangedStartedMonth changedStartedMonth(String month) {
    return _ChangedStartedMonth(
      month,
    );
  }

// ignore: unused_element
  _ChangedEndYear changedEndYear(String year) {
    return _ChangedEndYear(
      year,
    );
  }

// ignore: unused_element
  _ChangedEndMonth changedEndMonth(String month) {
    return _ChangedEndMonth(
      month,
    );
  }

// ignore: unused_element
  _ChangedPurposeOfResign changedPurposeOfResign(String puropse) {
    return _ChangedPurposeOfResign(
      puropse,
    );
  }

// ignore: unused_element
  _SetInitialState setInitialState(
      WorkHistory workHistory, List<String> typeOfCompanyList) {
    return _SetInitialState(
      workHistory,
      typeOfCompanyList,
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
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
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
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedNameOfCompany(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
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
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedNameOfCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
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
abstract class _$ChangedTypeOfCompanyCopyWith<$Res> {
  factory _$ChangedTypeOfCompanyCopyWith(_ChangedTypeOfCompany value,
          $Res Function(_ChangedTypeOfCompany) then) =
      __$ChangedTypeOfCompanyCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class __$ChangedTypeOfCompanyCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedTypeOfCompanyCopyWith<$Res> {
  __$ChangedTypeOfCompanyCopyWithImpl(
      _ChangedTypeOfCompany _value, $Res Function(_ChangedTypeOfCompany) _then)
      : super(_value, (v) => _then(v as _ChangedTypeOfCompany));

  @override
  _ChangedTypeOfCompany get _value => super._value as _ChangedTypeOfCompany;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_ChangedTypeOfCompany(
      type == freezed ? _value.type : type as String,
    ));
  }
}

/// @nodoc
class _$_ChangedTypeOfCompany implements _ChangedTypeOfCompany {
  const _$_ChangedTypeOfCompany(this.type) : assert(type != null);

  @override
  final String type;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedTypeOfCompany(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedTypeOfCompany &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$ChangedTypeOfCompanyCopyWith<_ChangedTypeOfCompany> get copyWith =>
      __$ChangedTypeOfCompanyCopyWithImpl<_ChangedTypeOfCompany>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedTypeOfCompany(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedTypeOfCompany != null) {
      return changedTypeOfCompany(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedTypeOfCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedTypeOfCompany != null) {
      return changedTypeOfCompany(this);
    }
    return orElse();
  }
}

abstract class _ChangedTypeOfCompany implements UpdateWorkInfoActorEvent {
  const factory _ChangedTypeOfCompany(String type) = _$_ChangedTypeOfCompany;

  String get type;
  @JsonKey(ignore: true)
  _$ChangedTypeOfCompanyCopyWith<_ChangedTypeOfCompany> get copyWith;
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
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedStartedYear(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
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
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedStartedYear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
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
abstract class _$ChangedStartedMonthCopyWith<$Res> {
  factory _$ChangedStartedMonthCopyWith(_ChangedStartedMonth value,
          $Res Function(_ChangedStartedMonth) then) =
      __$ChangedStartedMonthCopyWithImpl<$Res>;
  $Res call({String month});
}

/// @nodoc
class __$ChangedStartedMonthCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedStartedMonthCopyWith<$Res> {
  __$ChangedStartedMonthCopyWithImpl(
      _ChangedStartedMonth _value, $Res Function(_ChangedStartedMonth) _then)
      : super(_value, (v) => _then(v as _ChangedStartedMonth));

  @override
  _ChangedStartedMonth get _value => super._value as _ChangedStartedMonth;

  @override
  $Res call({
    Object month = freezed,
  }) {
    return _then(_ChangedStartedMonth(
      month == freezed ? _value.month : month as String,
    ));
  }
}

/// @nodoc
class _$_ChangedStartedMonth implements _ChangedStartedMonth {
  const _$_ChangedStartedMonth(this.month) : assert(month != null);

  @override
  final String month;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedStartedMonth(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedStartedMonth &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(month);

  @JsonKey(ignore: true)
  @override
  _$ChangedStartedMonthCopyWith<_ChangedStartedMonth> get copyWith =>
      __$ChangedStartedMonthCopyWithImpl<_ChangedStartedMonth>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedStartedMonth(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedStartedMonth != null) {
      return changedStartedMonth(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedStartedMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedStartedMonth != null) {
      return changedStartedMonth(this);
    }
    return orElse();
  }
}

abstract class _ChangedStartedMonth implements UpdateWorkInfoActorEvent {
  const factory _ChangedStartedMonth(String month) = _$_ChangedStartedMonth;

  String get month;
  @JsonKey(ignore: true)
  _$ChangedStartedMonthCopyWith<_ChangedStartedMonth> get copyWith;
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
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedEndYear(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
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
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedEndYear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
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
abstract class _$ChangedEndMonthCopyWith<$Res> {
  factory _$ChangedEndMonthCopyWith(
          _ChangedEndMonth value, $Res Function(_ChangedEndMonth) then) =
      __$ChangedEndMonthCopyWithImpl<$Res>;
  $Res call({String month});
}

/// @nodoc
class __$ChangedEndMonthCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedEndMonthCopyWith<$Res> {
  __$ChangedEndMonthCopyWithImpl(
      _ChangedEndMonth _value, $Res Function(_ChangedEndMonth) _then)
      : super(_value, (v) => _then(v as _ChangedEndMonth));

  @override
  _ChangedEndMonth get _value => super._value as _ChangedEndMonth;

  @override
  $Res call({
    Object month = freezed,
  }) {
    return _then(_ChangedEndMonth(
      month == freezed ? _value.month : month as String,
    ));
  }
}

/// @nodoc
class _$_ChangedEndMonth implements _ChangedEndMonth {
  const _$_ChangedEndMonth(this.month) : assert(month != null);

  @override
  final String month;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedEndMonth(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedEndMonth &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(month);

  @JsonKey(ignore: true)
  @override
  _$ChangedEndMonthCopyWith<_ChangedEndMonth> get copyWith =>
      __$ChangedEndMonthCopyWithImpl<_ChangedEndMonth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedEndMonth(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedEndMonth != null) {
      return changedEndMonth(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedEndMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedEndMonth != null) {
      return changedEndMonth(this);
    }
    return orElse();
  }
}

abstract class _ChangedEndMonth implements UpdateWorkInfoActorEvent {
  const factory _ChangedEndMonth(String month) = _$_ChangedEndMonth;

  String get month;
  @JsonKey(ignore: true)
  _$ChangedEndMonthCopyWith<_ChangedEndMonth> get copyWith;
}

/// @nodoc
abstract class _$ChangedPurposeOfResignCopyWith<$Res> {
  factory _$ChangedPurposeOfResignCopyWith(_ChangedPurposeOfResign value,
          $Res Function(_ChangedPurposeOfResign) then) =
      __$ChangedPurposeOfResignCopyWithImpl<$Res>;
  $Res call({String puropse});
}

/// @nodoc
class __$ChangedPurposeOfResignCopyWithImpl<$Res>
    extends _$UpdateWorkInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedPurposeOfResignCopyWith<$Res> {
  __$ChangedPurposeOfResignCopyWithImpl(_ChangedPurposeOfResign _value,
      $Res Function(_ChangedPurposeOfResign) _then)
      : super(_value, (v) => _then(v as _ChangedPurposeOfResign));

  @override
  _ChangedPurposeOfResign get _value => super._value as _ChangedPurposeOfResign;

  @override
  $Res call({
    Object puropse = freezed,
  }) {
    return _then(_ChangedPurposeOfResign(
      puropse == freezed ? _value.puropse : puropse as String,
    ));
  }
}

/// @nodoc
class _$_ChangedPurposeOfResign implements _ChangedPurposeOfResign {
  const _$_ChangedPurposeOfResign(this.puropse) : assert(puropse != null);

  @override
  final String puropse;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.changedPurposeOfResign(puropse: $puropse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedPurposeOfResign &&
            (identical(other.puropse, puropse) ||
                const DeepCollectionEquality().equals(other.puropse, puropse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(puropse);

  @JsonKey(ignore: true)
  @override
  _$ChangedPurposeOfResignCopyWith<_ChangedPurposeOfResign> get copyWith =>
      __$ChangedPurposeOfResignCopyWithImpl<_ChangedPurposeOfResign>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPurposeOfResign(puropse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPurposeOfResign != null) {
      return changedPurposeOfResign(puropse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPurposeOfResign(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPurposeOfResign != null) {
      return changedPurposeOfResign(this);
    }
    return orElse();
  }
}

abstract class _ChangedPurposeOfResign implements UpdateWorkInfoActorEvent {
  const factory _ChangedPurposeOfResign(String puropse) =
      _$_ChangedPurposeOfResign;

  String get puropse;
  @JsonKey(ignore: true)
  _$ChangedPurposeOfResignCopyWith<_ChangedPurposeOfResign> get copyWith;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({WorkHistory workHistory, List<String> typeOfCompanyList});
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
    Object typeOfCompanyList = freezed,
  }) {
    return _then(_SetInitialState(
      workHistory == freezed ? _value.workHistory : workHistory as WorkHistory,
      typeOfCompanyList == freezed
          ? _value.typeOfCompanyList
          : typeOfCompanyList as List<String>,
    ));
  }
}

/// @nodoc
class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.workHistory, this.typeOfCompanyList)
      : assert(workHistory != null),
        assert(typeOfCompanyList != null);

  @override
  final WorkHistory workHistory;
  @override
  final List<String> typeOfCompanyList;

  @override
  String toString() {
    return 'UpdateWorkInfoActorEvent.setInitialState(workHistory: $workHistory, typeOfCompanyList: $typeOfCompanyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
            (identical(other.workHistory, workHistory) ||
                const DeepCollectionEquality()
                    .equals(other.workHistory, workHistory)) &&
            (identical(other.typeOfCompanyList, typeOfCompanyList) ||
                const DeepCollectionEquality()
                    .equals(other.typeOfCompanyList, typeOfCompanyList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workHistory) ^
      const DeepCollectionEquality().hash(typeOfCompanyList);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfCompany(String company),
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(workHistory, typeOfCompanyList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setInitialState != null) {
      return setInitialState(workHistory, typeOfCompanyList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfCompany(_ChangedNameOfCompany value),
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
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
  const factory _SetInitialState(
          WorkHistory workHistory, List<String> typeOfCompanyList) =
      _$_SetInitialState;

  WorkHistory get workHistory;
  List<String> get typeOfCompanyList;
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
    @required TResult changedTypeOfCompany(String type),
    @required TResult changedStartedYear(String year),
    @required TResult changedStartedMonth(String month),
    @required TResult changedEndYear(String year),
    @required TResult changedEndMonth(String month),
    @required TResult changedPurposeOfResign(String puropse),
    @required
        TResult setInitialState(
            WorkHistory workHistory, List<String> typeOfCompanyList),
    @required TResult save(),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfCompany(String company),
    TResult changedTypeOfCompany(String type),
    TResult changedStartedYear(String year),
    TResult changedStartedMonth(String month),
    TResult changedEndYear(String year),
    TResult changedEndMonth(String month),
    TResult changedPurposeOfResign(String puropse),
    TResult setInitialState(
        WorkHistory workHistory, List<String> typeOfCompanyList),
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
    @required TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    @required TResult changedStartedYear(_ChangedStartedYear value),
    @required TResult changedStartedMonth(_ChangedStartedMonth value),
    @required TResult changedEndYear(_ChangedEndYear value),
    @required TResult changedEndMonth(_ChangedEndMonth value),
    @required TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfCompany != null);
    assert(changedTypeOfCompany != null);
    assert(changedStartedYear != null);
    assert(changedStartedMonth != null);
    assert(changedEndYear != null);
    assert(changedEndMonth != null);
    assert(changedPurposeOfResign != null);
    assert(setInitialState != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfCompany(_ChangedNameOfCompany value),
    TResult changedTypeOfCompany(_ChangedTypeOfCompany value),
    TResult changedStartedYear(_ChangedStartedYear value),
    TResult changedStartedMonth(_ChangedStartedMonth value),
    TResult changedEndYear(_ChangedEndYear value),
    TResult changedEndMonth(_ChangedEndMonth value),
    TResult changedPurposeOfResign(_ChangedPurposeOfResign value),
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
      @required String companyType,
      @required String startedYear,
      @required String startedMonth,
      @required String endYear,
      @required String endMonth,
      @required String purposeOfResign,
      @required List<String> typeOfCompanyList,
      @required bool isSubmitting,
      @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) {
    return _UpdateWorkInfoActorState(
      nameOfComapny: nameOfComapny,
      companyType: companyType,
      startedYear: startedYear,
      startedMonth: startedMonth,
      endYear: endYear,
      endMonth: endMonth,
      purposeOfResign: purposeOfResign,
      typeOfCompanyList: typeOfCompanyList,
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
  String get companyType;
  String get startedYear;
  String get startedMonth;
  String get endYear;
  String get endMonth;
  String get purposeOfResign;
  List<String> get typeOfCompanyList;
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
      String companyType,
      String startedYear,
      String startedMonth,
      String endYear,
      String endMonth,
      String purposeOfResign,
      List<String> typeOfCompanyList,
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
    Object companyType = freezed,
    Object startedYear = freezed,
    Object startedMonth = freezed,
    Object endYear = freezed,
    Object endMonth = freezed,
    Object purposeOfResign = freezed,
    Object typeOfCompanyList = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      nameOfComapny: nameOfComapny == freezed
          ? _value.nameOfComapny
          : nameOfComapny as String,
      companyType:
          companyType == freezed ? _value.companyType : companyType as String,
      startedYear:
          startedYear == freezed ? _value.startedYear : startedYear as String,
      startedMonth: startedMonth == freezed
          ? _value.startedMonth
          : startedMonth as String,
      endYear: endYear == freezed ? _value.endYear : endYear as String,
      endMonth: endMonth == freezed ? _value.endMonth : endMonth as String,
      purposeOfResign: purposeOfResign == freezed
          ? _value.purposeOfResign
          : purposeOfResign as String,
      typeOfCompanyList: typeOfCompanyList == freezed
          ? _value.typeOfCompanyList
          : typeOfCompanyList as List<String>,
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
      String companyType,
      String startedYear,
      String startedMonth,
      String endYear,
      String endMonth,
      String purposeOfResign,
      List<String> typeOfCompanyList,
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
    Object companyType = freezed,
    Object startedYear = freezed,
    Object startedMonth = freezed,
    Object endYear = freezed,
    Object endMonth = freezed,
    Object purposeOfResign = freezed,
    Object typeOfCompanyList = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateWorkInfoActorState(
      nameOfComapny: nameOfComapny == freezed
          ? _value.nameOfComapny
          : nameOfComapny as String,
      companyType:
          companyType == freezed ? _value.companyType : companyType as String,
      startedYear:
          startedYear == freezed ? _value.startedYear : startedYear as String,
      startedMonth: startedMonth == freezed
          ? _value.startedMonth
          : startedMonth as String,
      endYear: endYear == freezed ? _value.endYear : endYear as String,
      endMonth: endMonth == freezed ? _value.endMonth : endMonth as String,
      purposeOfResign: purposeOfResign == freezed
          ? _value.purposeOfResign
          : purposeOfResign as String,
      typeOfCompanyList: typeOfCompanyList == freezed
          ? _value.typeOfCompanyList
          : typeOfCompanyList as List<String>,
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
      @required this.companyType,
      @required this.startedYear,
      @required this.startedMonth,
      @required this.endYear,
      @required this.endMonth,
      @required this.purposeOfResign,
      @required this.typeOfCompanyList,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(nameOfComapny != null),
        assert(companyType != null),
        assert(startedYear != null),
        assert(startedMonth != null),
        assert(endYear != null),
        assert(endMonth != null),
        assert(purposeOfResign != null),
        assert(typeOfCompanyList != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String nameOfComapny;
  @override
  final String companyType;
  @override
  final String startedYear;
  @override
  final String startedMonth;
  @override
  final String endYear;
  @override
  final String endMonth;
  @override
  final String purposeOfResign;
  @override
  final List<String> typeOfCompanyList;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateWorkInfoActorState(nameOfComapny: $nameOfComapny, companyType: $companyType, startedYear: $startedYear, startedMonth: $startedMonth, endYear: $endYear, endMonth: $endMonth, purposeOfResign: $purposeOfResign, typeOfCompanyList: $typeOfCompanyList, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateWorkInfoActorState &&
            (identical(other.nameOfComapny, nameOfComapny) ||
                const DeepCollectionEquality()
                    .equals(other.nameOfComapny, nameOfComapny)) &&
            (identical(other.companyType, companyType) ||
                const DeepCollectionEquality()
                    .equals(other.companyType, companyType)) &&
            (identical(other.startedYear, startedYear) ||
                const DeepCollectionEquality()
                    .equals(other.startedYear, startedYear)) &&
            (identical(other.startedMonth, startedMonth) ||
                const DeepCollectionEquality()
                    .equals(other.startedMonth, startedMonth)) &&
            (identical(other.endYear, endYear) ||
                const DeepCollectionEquality()
                    .equals(other.endYear, endYear)) &&
            (identical(other.endMonth, endMonth) ||
                const DeepCollectionEquality()
                    .equals(other.endMonth, endMonth)) &&
            (identical(other.purposeOfResign, purposeOfResign) ||
                const DeepCollectionEquality()
                    .equals(other.purposeOfResign, purposeOfResign)) &&
            (identical(other.typeOfCompanyList, typeOfCompanyList) ||
                const DeepCollectionEquality()
                    .equals(other.typeOfCompanyList, typeOfCompanyList)) &&
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
      const DeepCollectionEquality().hash(companyType) ^
      const DeepCollectionEquality().hash(startedYear) ^
      const DeepCollectionEquality().hash(startedMonth) ^
      const DeepCollectionEquality().hash(endYear) ^
      const DeepCollectionEquality().hash(endMonth) ^
      const DeepCollectionEquality().hash(purposeOfResign) ^
      const DeepCollectionEquality().hash(typeOfCompanyList) ^
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
              String companyType,
          @required
              String startedYear,
          @required
              String startedMonth,
          @required
              String endYear,
          @required
              String endMonth,
          @required
              String purposeOfResign,
          @required
              List<String> typeOfCompanyList,
          @required
              bool isSubmitting,
          @required
              Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) =
      _$_UpdateWorkInfoActorState;

  @override
  String get nameOfComapny;
  @override
  String get companyType;
  @override
  String get startedYear;
  @override
  String get startedMonth;
  @override
  String get endYear;
  @override
  String get endMonth;
  @override
  String get purposeOfResign;
  @override
  List<String> get typeOfCompanyList;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdateWorkInfoActorStateCopyWith<_UpdateWorkInfoActorState> get copyWith;
}
