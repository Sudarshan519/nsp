// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_academic_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateAcademicInfoActorEventTearOff {
  const _$UpdateAcademicInfoActorEventTearOff();

// ignore: unused_element
  _ChangedNameOfInstitute changedNameOfInstitute(String institute) {
    return _ChangedNameOfInstitute(
      institute,
    );
  }

// ignore: unused_element
  _ChangedMajorSubject changedMajorSubject(String subject) {
    return _ChangedMajorSubject(
      subject,
    );
  }

// ignore: unused_element
  _ChangedYearOfEnroll changedYearOfEnroll(String year) {
    return _ChangedYearOfEnroll(
      year,
    );
  }

// ignore: unused_element
  _ChangedYearOfCompletion changedYearOfCompletion(String year) {
    return _ChangedYearOfCompletion(
      year,
    );
  }

// ignore: unused_element
  _ChangedMonthOfEnroll changedMonthOfEnroll(String month) {
    return _ChangedMonthOfEnroll(
      month,
    );
  }

// ignore: unused_element
  _ChangedMonthOfCompletion changedMonthOfCompletion(String month) {
    return _ChangedMonthOfCompletion(
      month,
    );
  }

// ignore: unused_element
  _SetInitialState setInitialState(AcademicHistory academicHistory) {
    return _SetInitialState(
      academicHistory,
    );
  }

// ignore: unused_element
  _Save save() {
    return const _Save();
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateAcademicInfoActorEvent = _$UpdateAcademicInfoActorEventTearOff();

/// @nodoc
mixin _$UpdateAcademicInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateAcademicInfoActorEventCopyWith<$Res> {
  factory $UpdateAcademicInfoActorEventCopyWith(
          UpdateAcademicInfoActorEvent value,
          $Res Function(UpdateAcademicInfoActorEvent) then) =
      _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements $UpdateAcademicInfoActorEventCopyWith<$Res> {
  _$UpdateAcademicInfoActorEventCopyWithImpl(this._value, this._then);

  final UpdateAcademicInfoActorEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateAcademicInfoActorEvent) _then;
}

/// @nodoc
abstract class _$ChangedNameOfInstituteCopyWith<$Res> {
  factory _$ChangedNameOfInstituteCopyWith(_ChangedNameOfInstitute value,
          $Res Function(_ChangedNameOfInstitute) then) =
      __$ChangedNameOfInstituteCopyWithImpl<$Res>;
  $Res call({String institute});
}

/// @nodoc
class __$ChangedNameOfInstituteCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedNameOfInstituteCopyWith<$Res> {
  __$ChangedNameOfInstituteCopyWithImpl(_ChangedNameOfInstitute _value,
      $Res Function(_ChangedNameOfInstitute) _then)
      : super(_value, (v) => _then(v as _ChangedNameOfInstitute));

  @override
  _ChangedNameOfInstitute get _value => super._value as _ChangedNameOfInstitute;

  @override
  $Res call({
    Object institute = freezed,
  }) {
    return _then(_ChangedNameOfInstitute(
      institute == freezed ? _value.institute : institute as String,
    ));
  }
}

/// @nodoc
class _$_ChangedNameOfInstitute implements _ChangedNameOfInstitute {
  const _$_ChangedNameOfInstitute(this.institute) : assert(institute != null);

  @override
  final String institute;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.changedNameOfInstitute(institute: $institute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedNameOfInstitute &&
            (identical(other.institute, institute) ||
                const DeepCollectionEquality()
                    .equals(other.institute, institute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(institute);

  @JsonKey(ignore: true)
  @override
  _$ChangedNameOfInstituteCopyWith<_ChangedNameOfInstitute> get copyWith =>
      __$ChangedNameOfInstituteCopyWithImpl<_ChangedNameOfInstitute>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedNameOfInstitute(institute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedNameOfInstitute != null) {
      return changedNameOfInstitute(institute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedNameOfInstitute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedNameOfInstitute != null) {
      return changedNameOfInstitute(this);
    }
    return orElse();
  }
}

abstract class _ChangedNameOfInstitute implements UpdateAcademicInfoActorEvent {
  const factory _ChangedNameOfInstitute(String institute) =
      _$_ChangedNameOfInstitute;

  String get institute;
  @JsonKey(ignore: true)
  _$ChangedNameOfInstituteCopyWith<_ChangedNameOfInstitute> get copyWith;
}

/// @nodoc
abstract class _$ChangedMajorSubjectCopyWith<$Res> {
  factory _$ChangedMajorSubjectCopyWith(_ChangedMajorSubject value,
          $Res Function(_ChangedMajorSubject) then) =
      __$ChangedMajorSubjectCopyWithImpl<$Res>;
  $Res call({String subject});
}

/// @nodoc
class __$ChangedMajorSubjectCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedMajorSubjectCopyWith<$Res> {
  __$ChangedMajorSubjectCopyWithImpl(
      _ChangedMajorSubject _value, $Res Function(_ChangedMajorSubject) _then)
      : super(_value, (v) => _then(v as _ChangedMajorSubject));

  @override
  _ChangedMajorSubject get _value => super._value as _ChangedMajorSubject;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(_ChangedMajorSubject(
      subject == freezed ? _value.subject : subject as String,
    ));
  }
}

/// @nodoc
class _$_ChangedMajorSubject implements _ChangedMajorSubject {
  const _$_ChangedMajorSubject(this.subject) : assert(subject != null);

  @override
  final String subject;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.changedMajorSubject(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedMajorSubject &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subject);

  @JsonKey(ignore: true)
  @override
  _$ChangedMajorSubjectCopyWith<_ChangedMajorSubject> get copyWith =>
      __$ChangedMajorSubjectCopyWithImpl<_ChangedMajorSubject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedMajorSubject(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedMajorSubject != null) {
      return changedMajorSubject(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedMajorSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedMajorSubject != null) {
      return changedMajorSubject(this);
    }
    return orElse();
  }
}

abstract class _ChangedMajorSubject implements UpdateAcademicInfoActorEvent {
  const factory _ChangedMajorSubject(String subject) = _$_ChangedMajorSubject;

  String get subject;
  @JsonKey(ignore: true)
  _$ChangedMajorSubjectCopyWith<_ChangedMajorSubject> get copyWith;
}

/// @nodoc
abstract class _$ChangedYearOfEnrollCopyWith<$Res> {
  factory _$ChangedYearOfEnrollCopyWith(_ChangedYearOfEnroll value,
          $Res Function(_ChangedYearOfEnroll) then) =
      __$ChangedYearOfEnrollCopyWithImpl<$Res>;
  $Res call({String year});
}

/// @nodoc
class __$ChangedYearOfEnrollCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedYearOfEnrollCopyWith<$Res> {
  __$ChangedYearOfEnrollCopyWithImpl(
      _ChangedYearOfEnroll _value, $Res Function(_ChangedYearOfEnroll) _then)
      : super(_value, (v) => _then(v as _ChangedYearOfEnroll));

  @override
  _ChangedYearOfEnroll get _value => super._value as _ChangedYearOfEnroll;

  @override
  $Res call({
    Object year = freezed,
  }) {
    return _then(_ChangedYearOfEnroll(
      year == freezed ? _value.year : year as String,
    ));
  }
}

/// @nodoc
class _$_ChangedYearOfEnroll implements _ChangedYearOfEnroll {
  const _$_ChangedYearOfEnroll(this.year) : assert(year != null);

  @override
  final String year;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.changedYearOfEnroll(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedYearOfEnroll &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$ChangedYearOfEnrollCopyWith<_ChangedYearOfEnroll> get copyWith =>
      __$ChangedYearOfEnrollCopyWithImpl<_ChangedYearOfEnroll>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedYearOfEnroll(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedYearOfEnroll != null) {
      return changedYearOfEnroll(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedYearOfEnroll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedYearOfEnroll != null) {
      return changedYearOfEnroll(this);
    }
    return orElse();
  }
}

abstract class _ChangedYearOfEnroll implements UpdateAcademicInfoActorEvent {
  const factory _ChangedYearOfEnroll(String year) = _$_ChangedYearOfEnroll;

  String get year;
  @JsonKey(ignore: true)
  _$ChangedYearOfEnrollCopyWith<_ChangedYearOfEnroll> get copyWith;
}

/// @nodoc
abstract class _$ChangedYearOfCompletionCopyWith<$Res> {
  factory _$ChangedYearOfCompletionCopyWith(_ChangedYearOfCompletion value,
          $Res Function(_ChangedYearOfCompletion) then) =
      __$ChangedYearOfCompletionCopyWithImpl<$Res>;
  $Res call({String year});
}

/// @nodoc
class __$ChangedYearOfCompletionCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedYearOfCompletionCopyWith<$Res> {
  __$ChangedYearOfCompletionCopyWithImpl(_ChangedYearOfCompletion _value,
      $Res Function(_ChangedYearOfCompletion) _then)
      : super(_value, (v) => _then(v as _ChangedYearOfCompletion));

  @override
  _ChangedYearOfCompletion get _value =>
      super._value as _ChangedYearOfCompletion;

  @override
  $Res call({
    Object year = freezed,
  }) {
    return _then(_ChangedYearOfCompletion(
      year == freezed ? _value.year : year as String,
    ));
  }
}

/// @nodoc
class _$_ChangedYearOfCompletion implements _ChangedYearOfCompletion {
  const _$_ChangedYearOfCompletion(this.year) : assert(year != null);

  @override
  final String year;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.changedYearOfCompletion(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedYearOfCompletion &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$ChangedYearOfCompletionCopyWith<_ChangedYearOfCompletion> get copyWith =>
      __$ChangedYearOfCompletionCopyWithImpl<_ChangedYearOfCompletion>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedYearOfCompletion(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedYearOfCompletion != null) {
      return changedYearOfCompletion(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedYearOfCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedYearOfCompletion != null) {
      return changedYearOfCompletion(this);
    }
    return orElse();
  }
}

abstract class _ChangedYearOfCompletion
    implements UpdateAcademicInfoActorEvent {
  const factory _ChangedYearOfCompletion(String year) =
      _$_ChangedYearOfCompletion;

  String get year;
  @JsonKey(ignore: true)
  _$ChangedYearOfCompletionCopyWith<_ChangedYearOfCompletion> get copyWith;
}

/// @nodoc
abstract class _$ChangedMonthOfEnrollCopyWith<$Res> {
  factory _$ChangedMonthOfEnrollCopyWith(_ChangedMonthOfEnroll value,
          $Res Function(_ChangedMonthOfEnroll) then) =
      __$ChangedMonthOfEnrollCopyWithImpl<$Res>;
  $Res call({String month});
}

/// @nodoc
class __$ChangedMonthOfEnrollCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedMonthOfEnrollCopyWith<$Res> {
  __$ChangedMonthOfEnrollCopyWithImpl(
      _ChangedMonthOfEnroll _value, $Res Function(_ChangedMonthOfEnroll) _then)
      : super(_value, (v) => _then(v as _ChangedMonthOfEnroll));

  @override
  _ChangedMonthOfEnroll get _value => super._value as _ChangedMonthOfEnroll;

  @override
  $Res call({
    Object month = freezed,
  }) {
    return _then(_ChangedMonthOfEnroll(
      month == freezed ? _value.month : month as String,
    ));
  }
}

/// @nodoc
class _$_ChangedMonthOfEnroll implements _ChangedMonthOfEnroll {
  const _$_ChangedMonthOfEnroll(this.month) : assert(month != null);

  @override
  final String month;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.changedMonthOfEnroll(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedMonthOfEnroll &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(month);

  @JsonKey(ignore: true)
  @override
  _$ChangedMonthOfEnrollCopyWith<_ChangedMonthOfEnroll> get copyWith =>
      __$ChangedMonthOfEnrollCopyWithImpl<_ChangedMonthOfEnroll>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedMonthOfEnroll(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedMonthOfEnroll != null) {
      return changedMonthOfEnroll(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedMonthOfEnroll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedMonthOfEnroll != null) {
      return changedMonthOfEnroll(this);
    }
    return orElse();
  }
}

abstract class _ChangedMonthOfEnroll implements UpdateAcademicInfoActorEvent {
  const factory _ChangedMonthOfEnroll(String month) = _$_ChangedMonthOfEnroll;

  String get month;
  @JsonKey(ignore: true)
  _$ChangedMonthOfEnrollCopyWith<_ChangedMonthOfEnroll> get copyWith;
}

/// @nodoc
abstract class _$ChangedMonthOfCompletionCopyWith<$Res> {
  factory _$ChangedMonthOfCompletionCopyWith(_ChangedMonthOfCompletion value,
          $Res Function(_ChangedMonthOfCompletion) then) =
      __$ChangedMonthOfCompletionCopyWithImpl<$Res>;
  $Res call({String month});
}

/// @nodoc
class __$ChangedMonthOfCompletionCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedMonthOfCompletionCopyWith<$Res> {
  __$ChangedMonthOfCompletionCopyWithImpl(_ChangedMonthOfCompletion _value,
      $Res Function(_ChangedMonthOfCompletion) _then)
      : super(_value, (v) => _then(v as _ChangedMonthOfCompletion));

  @override
  _ChangedMonthOfCompletion get _value =>
      super._value as _ChangedMonthOfCompletion;

  @override
  $Res call({
    Object month = freezed,
  }) {
    return _then(_ChangedMonthOfCompletion(
      month == freezed ? _value.month : month as String,
    ));
  }
}

/// @nodoc
class _$_ChangedMonthOfCompletion implements _ChangedMonthOfCompletion {
  const _$_ChangedMonthOfCompletion(this.month) : assert(month != null);

  @override
  final String month;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.changedMonthOfCompletion(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedMonthOfCompletion &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(month);

  @JsonKey(ignore: true)
  @override
  _$ChangedMonthOfCompletionCopyWith<_ChangedMonthOfCompletion> get copyWith =>
      __$ChangedMonthOfCompletionCopyWithImpl<_ChangedMonthOfCompletion>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedMonthOfCompletion(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedMonthOfCompletion != null) {
      return changedMonthOfCompletion(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedMonthOfCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedMonthOfCompletion != null) {
      return changedMonthOfCompletion(this);
    }
    return orElse();
  }
}

abstract class _ChangedMonthOfCompletion
    implements UpdateAcademicInfoActorEvent {
  const factory _ChangedMonthOfCompletion(String month) =
      _$_ChangedMonthOfCompletion;

  String get month;
  @JsonKey(ignore: true)
  _$ChangedMonthOfCompletionCopyWith<_ChangedMonthOfCompletion> get copyWith;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({AcademicHistory academicHistory});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object academicHistory = freezed,
  }) {
    return _then(_SetInitialState(
      academicHistory == freezed
          ? _value.academicHistory
          : academicHistory as AcademicHistory,
    ));
  }
}

/// @nodoc
class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.academicHistory)
      : assert(academicHistory != null);

  @override
  final AcademicHistory academicHistory;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorEvent.setInitialState(academicHistory: $academicHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
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
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(academicHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setInitialState != null) {
      return setInitialState(academicHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
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

abstract class _SetInitialState implements UpdateAcademicInfoActorEvent {
  const factory _SetInitialState(AcademicHistory academicHistory) =
      _$_SetInitialState;

  AcademicHistory get academicHistory;
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
    extends _$UpdateAcademicInfoActorEventCopyWithImpl<$Res>
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
    return 'UpdateAcademicInfoActorEvent.save()';
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
    @required TResult changedNameOfInstitute(String institute),
    @required TResult changedMajorSubject(String subject),
    @required TResult changedYearOfEnroll(String year),
    @required TResult changedYearOfCompletion(String year),
    @required TResult changedMonthOfEnroll(String month),
    @required TResult changedMonthOfCompletion(String month),
    @required TResult setInitialState(AcademicHistory academicHistory),
    @required TResult save(),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedNameOfInstitute(String institute),
    TResult changedMajorSubject(String subject),
    TResult changedYearOfEnroll(String year),
    TResult changedYearOfCompletion(String year),
    TResult changedMonthOfEnroll(String month),
    TResult changedMonthOfCompletion(String month),
    TResult setInitialState(AcademicHistory academicHistory),
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
    @required TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    @required TResult changedMajorSubject(_ChangedMajorSubject value),
    @required TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    @required TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    @required TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    @required TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedNameOfInstitute != null);
    assert(changedMajorSubject != null);
    assert(changedYearOfEnroll != null);
    assert(changedYearOfCompletion != null);
    assert(changedMonthOfEnroll != null);
    assert(changedMonthOfCompletion != null);
    assert(setInitialState != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedNameOfInstitute(_ChangedNameOfInstitute value),
    TResult changedMajorSubject(_ChangedMajorSubject value),
    TResult changedYearOfEnroll(_ChangedYearOfEnroll value),
    TResult changedYearOfCompletion(_ChangedYearOfCompletion value),
    TResult changedMonthOfEnroll(_ChangedMonthOfEnroll value),
    TResult changedMonthOfCompletion(_ChangedMonthOfCompletion value),
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

abstract class _Save implements UpdateAcademicInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$UpdateAcademicInfoActorStateTearOff {
  const _$UpdateAcademicInfoActorStateTearOff();

// ignore: unused_element
  _UpdateAcademicInfoActorState call(
      {@required String nameOfInstitute,
      @required String majorSubject,
      @required String yearOFEnroll,
      @required String yearOfCpmpletion,
      @required String monthOfEnroll,
      @required String monthOfCompletion,
      @required bool isSubmitting,
      @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) {
    return _UpdateAcademicInfoActorState(
      nameOfInstitute: nameOfInstitute,
      majorSubject: majorSubject,
      yearOFEnroll: yearOFEnroll,
      yearOfCpmpletion: yearOfCpmpletion,
      monthOfEnroll: monthOfEnroll,
      monthOfCompletion: monthOfCompletion,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateAcademicInfoActorState = _$UpdateAcademicInfoActorStateTearOff();

/// @nodoc
mixin _$UpdateAcademicInfoActorState {
  String get nameOfInstitute;
  String get majorSubject;
  String get yearOFEnroll;
  String get yearOfCpmpletion;
  String get monthOfEnroll;
  String get monthOfCompletion;
  bool get isSubmitting;
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UpdateAcademicInfoActorStateCopyWith<UpdateAcademicInfoActorState>
      get copyWith;
}

/// @nodoc
abstract class $UpdateAcademicInfoActorStateCopyWith<$Res> {
  factory $UpdateAcademicInfoActorStateCopyWith(
          UpdateAcademicInfoActorState value,
          $Res Function(UpdateAcademicInfoActorState) then) =
      _$UpdateAcademicInfoActorStateCopyWithImpl<$Res>;
  $Res call(
      {String nameOfInstitute,
      String majorSubject,
      String yearOFEnroll,
      String yearOfCpmpletion,
      String monthOfEnroll,
      String monthOfCompletion,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateAcademicInfoActorStateCopyWithImpl<$Res>
    implements $UpdateAcademicInfoActorStateCopyWith<$Res> {
  _$UpdateAcademicInfoActorStateCopyWithImpl(this._value, this._then);

  final UpdateAcademicInfoActorState _value;
  // ignore: unused_field
  final $Res Function(UpdateAcademicInfoActorState) _then;

  @override
  $Res call({
    Object nameOfInstitute = freezed,
    Object majorSubject = freezed,
    Object yearOFEnroll = freezed,
    Object yearOfCpmpletion = freezed,
    Object monthOfEnroll = freezed,
    Object monthOfCompletion = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      nameOfInstitute: nameOfInstitute == freezed
          ? _value.nameOfInstitute
          : nameOfInstitute as String,
      majorSubject: majorSubject == freezed
          ? _value.majorSubject
          : majorSubject as String,
      yearOFEnroll: yearOFEnroll == freezed
          ? _value.yearOFEnroll
          : yearOFEnroll as String,
      yearOfCpmpletion: yearOfCpmpletion == freezed
          ? _value.yearOfCpmpletion
          : yearOfCpmpletion as String,
      monthOfEnroll: monthOfEnroll == freezed
          ? _value.monthOfEnroll
          : monthOfEnroll as String,
      monthOfCompletion: monthOfCompletion == freezed
          ? _value.monthOfCompletion
          : monthOfCompletion as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateAcademicInfoActorStateCopyWith<$Res>
    implements $UpdateAcademicInfoActorStateCopyWith<$Res> {
  factory _$UpdateAcademicInfoActorStateCopyWith(
          _UpdateAcademicInfoActorState value,
          $Res Function(_UpdateAcademicInfoActorState) then) =
      __$UpdateAcademicInfoActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nameOfInstitute,
      String majorSubject,
      String yearOFEnroll,
      String yearOfCpmpletion,
      String monthOfEnroll,
      String monthOfCompletion,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$UpdateAcademicInfoActorStateCopyWithImpl<$Res>
    extends _$UpdateAcademicInfoActorStateCopyWithImpl<$Res>
    implements _$UpdateAcademicInfoActorStateCopyWith<$Res> {
  __$UpdateAcademicInfoActorStateCopyWithImpl(
      _UpdateAcademicInfoActorState _value,
      $Res Function(_UpdateAcademicInfoActorState) _then)
      : super(_value, (v) => _then(v as _UpdateAcademicInfoActorState));

  @override
  _UpdateAcademicInfoActorState get _value =>
      super._value as _UpdateAcademicInfoActorState;

  @override
  $Res call({
    Object nameOfInstitute = freezed,
    Object majorSubject = freezed,
    Object yearOFEnroll = freezed,
    Object yearOfCpmpletion = freezed,
    Object monthOfEnroll = freezed,
    Object monthOfCompletion = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateAcademicInfoActorState(
      nameOfInstitute: nameOfInstitute == freezed
          ? _value.nameOfInstitute
          : nameOfInstitute as String,
      majorSubject: majorSubject == freezed
          ? _value.majorSubject
          : majorSubject as String,
      yearOFEnroll: yearOFEnroll == freezed
          ? _value.yearOFEnroll
          : yearOFEnroll as String,
      yearOfCpmpletion: yearOfCpmpletion == freezed
          ? _value.yearOfCpmpletion
          : yearOfCpmpletion as String,
      monthOfEnroll: monthOfEnroll == freezed
          ? _value.monthOfEnroll
          : monthOfEnroll as String,
      monthOfCompletion: monthOfCompletion == freezed
          ? _value.monthOfCompletion
          : monthOfCompletion as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UpdateAcademicInfoActorState implements _UpdateAcademicInfoActorState {
  const _$_UpdateAcademicInfoActorState(
      {@required this.nameOfInstitute,
      @required this.majorSubject,
      @required this.yearOFEnroll,
      @required this.yearOfCpmpletion,
      @required this.monthOfEnroll,
      @required this.monthOfCompletion,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(nameOfInstitute != null),
        assert(majorSubject != null),
        assert(yearOFEnroll != null),
        assert(yearOfCpmpletion != null),
        assert(monthOfEnroll != null),
        assert(monthOfCompletion != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String nameOfInstitute;
  @override
  final String majorSubject;
  @override
  final String yearOFEnroll;
  @override
  final String yearOfCpmpletion;
  @override
  final String monthOfEnroll;
  @override
  final String monthOfCompletion;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateAcademicInfoActorState(nameOfInstitute: $nameOfInstitute, majorSubject: $majorSubject, yearOFEnroll: $yearOFEnroll, yearOfCpmpletion: $yearOfCpmpletion, monthOfEnroll: $monthOfEnroll, monthOfCompletion: $monthOfCompletion, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAcademicInfoActorState &&
            (identical(other.nameOfInstitute, nameOfInstitute) ||
                const DeepCollectionEquality()
                    .equals(other.nameOfInstitute, nameOfInstitute)) &&
            (identical(other.majorSubject, majorSubject) ||
                const DeepCollectionEquality()
                    .equals(other.majorSubject, majorSubject)) &&
            (identical(other.yearOFEnroll, yearOFEnroll) ||
                const DeepCollectionEquality()
                    .equals(other.yearOFEnroll, yearOFEnroll)) &&
            (identical(other.yearOfCpmpletion, yearOfCpmpletion) ||
                const DeepCollectionEquality()
                    .equals(other.yearOfCpmpletion, yearOfCpmpletion)) &&
            (identical(other.monthOfEnroll, monthOfEnroll) ||
                const DeepCollectionEquality()
                    .equals(other.monthOfEnroll, monthOfEnroll)) &&
            (identical(other.monthOfCompletion, monthOfCompletion) ||
                const DeepCollectionEquality()
                    .equals(other.monthOfCompletion, monthOfCompletion)) &&
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
      const DeepCollectionEquality().hash(nameOfInstitute) ^
      const DeepCollectionEquality().hash(majorSubject) ^
      const DeepCollectionEquality().hash(yearOFEnroll) ^
      const DeepCollectionEquality().hash(yearOfCpmpletion) ^
      const DeepCollectionEquality().hash(monthOfEnroll) ^
      const DeepCollectionEquality().hash(monthOfCompletion) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateAcademicInfoActorStateCopyWith<_UpdateAcademicInfoActorState>
      get copyWith => __$UpdateAcademicInfoActorStateCopyWithImpl<
          _UpdateAcademicInfoActorState>(this, _$identity);
}

abstract class _UpdateAcademicInfoActorState
    implements UpdateAcademicInfoActorState {
  const factory _UpdateAcademicInfoActorState(
          {@required
              String nameOfInstitute,
          @required
              String majorSubject,
          @required
              String yearOFEnroll,
          @required
              String yearOfCpmpletion,
          @required
              String monthOfEnroll,
          @required
              String monthOfCompletion,
          @required
              bool isSubmitting,
          @required
              Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) =
      _$_UpdateAcademicInfoActorState;

  @override
  String get nameOfInstitute;
  @override
  String get majorSubject;
  @override
  String get yearOFEnroll;
  @override
  String get yearOfCpmpletion;
  @override
  String get monthOfEnroll;
  @override
  String get monthOfCompletion;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdateAcademicInfoActorStateCopyWith<_UpdateAcademicInfoActorState>
      get copyWith;
}
