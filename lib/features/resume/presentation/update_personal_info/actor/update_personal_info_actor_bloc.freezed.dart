// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_personal_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdatePersonalInfoActorEventTearOff {
  const _$UpdatePersonalInfoActorEventTearOff();

// ignore: unused_element
  _ChangeFirstName changeFirstName(String name) {
    return _ChangeFirstName(
      name,
    );
  }

// ignore: unused_element
  _ChangeLastName changeLastName(String name) {
    return _ChangeLastName(
      name,
    );
  }

// ignore: unused_element
  _ChangeFuriganaName changeFuriganaName(String name) {
    return _ChangeFuriganaName(
      name,
    );
  }

// ignore: unused_element
  _ChangeProfession changeProfession(String profession) {
    return _ChangeProfession(
      profession,
    );
  }

// ignore: unused_element
  _ChangeDob changeDob(String dob) {
    return _ChangeDob(
      dob,
    );
  }

// ignore: unused_element
  _ChangeAge changeAge(String age) {
    return _ChangeAge(
      age,
    );
  }

// ignore: unused_element
  _ChangeGender changeGender(String gender) {
    return _ChangeGender(
      gender,
    );
  }

// ignore: unused_element
  _ChangeNationality changeNationality(String nationality) {
    return _ChangeNationality(
      nationality,
    );
  }

// ignore: unused_element
  _ChangeEmail changeEmail(String email) {
    return _ChangeEmail(
      email,
    );
  }

// ignore: unused_element
  _ChangePhone changePhone(String phone) {
    return _ChangePhone(
      phone,
    );
  }

// ignore: unused_element
  _SetInitialState setInitialState(
      {@required PersonalInfo info,
      @required List<String> listOfNationality,
      @required List<String> listOfProfession,
      @required String lang}) {
    return _SetInitialState(
      info: info,
      listOfNationality: listOfNationality,
      listOfProfession: listOfProfession,
      lang: lang,
    );
  }

// ignore: unused_element
  _Save save() {
    return const _Save();
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePersonalInfoActorEvent = _$UpdatePersonalInfoActorEventTearOff();

/// @nodoc
mixin _$UpdatePersonalInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdatePersonalInfoActorEventCopyWith<$Res> {
  factory $UpdatePersonalInfoActorEventCopyWith(
          UpdatePersonalInfoActorEvent value,
          $Res Function(UpdatePersonalInfoActorEvent) then) =
      _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements $UpdatePersonalInfoActorEventCopyWith<$Res> {
  _$UpdatePersonalInfoActorEventCopyWithImpl(this._value, this._then);

  final UpdatePersonalInfoActorEvent _value;
  // ignore: unused_field
  final $Res Function(UpdatePersonalInfoActorEvent) _then;
}

/// @nodoc
abstract class _$ChangeFirstNameCopyWith<$Res> {
  factory _$ChangeFirstNameCopyWith(
          _ChangeFirstName value, $Res Function(_ChangeFirstName) then) =
      __$ChangeFirstNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeFirstNameCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeFirstNameCopyWith<$Res> {
  __$ChangeFirstNameCopyWithImpl(
      _ChangeFirstName _value, $Res Function(_ChangeFirstName) _then)
      : super(_value, (v) => _then(v as _ChangeFirstName));

  @override
  _ChangeFirstName get _value => super._value as _ChangeFirstName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChangeFirstName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChangeFirstName implements _ChangeFirstName {
  const _$_ChangeFirstName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeFirstName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFirstName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeFirstNameCopyWith<_ChangeFirstName> get copyWith =>
      __$ChangeFirstNameCopyWithImpl<_ChangeFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeFirstName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstName implements UpdatePersonalInfoActorEvent {
  const factory _ChangeFirstName(String name) = _$_ChangeFirstName;

  String get name;
  @JsonKey(ignore: true)
  _$ChangeFirstNameCopyWith<_ChangeFirstName> get copyWith;
}

/// @nodoc
abstract class _$ChangeLastNameCopyWith<$Res> {
  factory _$ChangeLastNameCopyWith(
          _ChangeLastName value, $Res Function(_ChangeLastName) then) =
      __$ChangeLastNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeLastNameCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeLastNameCopyWith<$Res> {
  __$ChangeLastNameCopyWithImpl(
      _ChangeLastName _value, $Res Function(_ChangeLastName) _then)
      : super(_value, (v) => _then(v as _ChangeLastName));

  @override
  _ChangeLastName get _value => super._value as _ChangeLastName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChangeLastName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChangeLastName implements _ChangeLastName {
  const _$_ChangeLastName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeLastName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLastName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeLastNameCopyWith<_ChangeLastName> get copyWith =>
      __$ChangeLastNameCopyWithImpl<_ChangeLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeLastName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastName implements UpdatePersonalInfoActorEvent {
  const factory _ChangeLastName(String name) = _$_ChangeLastName;

  String get name;
  @JsonKey(ignore: true)
  _$ChangeLastNameCopyWith<_ChangeLastName> get copyWith;
}

/// @nodoc
abstract class _$ChangeFuriganaNameCopyWith<$Res> {
  factory _$ChangeFuriganaNameCopyWith(
          _ChangeFuriganaName value, $Res Function(_ChangeFuriganaName) then) =
      __$ChangeFuriganaNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeFuriganaNameCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeFuriganaNameCopyWith<$Res> {
  __$ChangeFuriganaNameCopyWithImpl(
      _ChangeFuriganaName _value, $Res Function(_ChangeFuriganaName) _then)
      : super(_value, (v) => _then(v as _ChangeFuriganaName));

  @override
  _ChangeFuriganaName get _value => super._value as _ChangeFuriganaName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChangeFuriganaName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChangeFuriganaName implements _ChangeFuriganaName {
  const _$_ChangeFuriganaName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeFuriganaName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFuriganaName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeFuriganaNameCopyWith<_ChangeFuriganaName> get copyWith =>
      __$ChangeFuriganaNameCopyWithImpl<_ChangeFuriganaName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeFuriganaName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeFuriganaName != null) {
      return changeFuriganaName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeFuriganaName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeFuriganaName != null) {
      return changeFuriganaName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFuriganaName implements UpdatePersonalInfoActorEvent {
  const factory _ChangeFuriganaName(String name) = _$_ChangeFuriganaName;

  String get name;
  @JsonKey(ignore: true)
  _$ChangeFuriganaNameCopyWith<_ChangeFuriganaName> get copyWith;
}

/// @nodoc
abstract class _$ChangeProfessionCopyWith<$Res> {
  factory _$ChangeProfessionCopyWith(
          _ChangeProfession value, $Res Function(_ChangeProfession) then) =
      __$ChangeProfessionCopyWithImpl<$Res>;
  $Res call({String profession});
}

/// @nodoc
class __$ChangeProfessionCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeProfessionCopyWith<$Res> {
  __$ChangeProfessionCopyWithImpl(
      _ChangeProfession _value, $Res Function(_ChangeProfession) _then)
      : super(_value, (v) => _then(v as _ChangeProfession));

  @override
  _ChangeProfession get _value => super._value as _ChangeProfession;

  @override
  $Res call({
    Object profession = freezed,
  }) {
    return _then(_ChangeProfession(
      profession == freezed ? _value.profession : profession as String,
    ));
  }
}

/// @nodoc
class _$_ChangeProfession implements _ChangeProfession {
  const _$_ChangeProfession(this.profession) : assert(profession != null);

  @override
  final String profession;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeProfession(profession: $profession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeProfession &&
            (identical(other.profession, profession) ||
                const DeepCollectionEquality()
                    .equals(other.profession, profession)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profession);

  @JsonKey(ignore: true)
  @override
  _$ChangeProfessionCopyWith<_ChangeProfession> get copyWith =>
      __$ChangeProfessionCopyWithImpl<_ChangeProfession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeProfession(profession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeProfession != null) {
      return changeProfession(profession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeProfession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeProfession != null) {
      return changeProfession(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfession implements UpdatePersonalInfoActorEvent {
  const factory _ChangeProfession(String profession) = _$_ChangeProfession;

  String get profession;
  @JsonKey(ignore: true)
  _$ChangeProfessionCopyWith<_ChangeProfession> get copyWith;
}

/// @nodoc
abstract class _$ChangeDobCopyWith<$Res> {
  factory _$ChangeDobCopyWith(
          _ChangeDob value, $Res Function(_ChangeDob) then) =
      __$ChangeDobCopyWithImpl<$Res>;
  $Res call({String dob});
}

/// @nodoc
class __$ChangeDobCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeDobCopyWith<$Res> {
  __$ChangeDobCopyWithImpl(_ChangeDob _value, $Res Function(_ChangeDob) _then)
      : super(_value, (v) => _then(v as _ChangeDob));

  @override
  _ChangeDob get _value => super._value as _ChangeDob;

  @override
  $Res call({
    Object dob = freezed,
  }) {
    return _then(_ChangeDob(
      dob == freezed ? _value.dob : dob as String,
    ));
  }
}

/// @nodoc
class _$_ChangeDob implements _ChangeDob {
  const _$_ChangeDob(this.dob) : assert(dob != null);

  @override
  final String dob;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeDob(dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDob &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dob);

  @JsonKey(ignore: true)
  @override
  _$ChangeDobCopyWith<_ChangeDob> get copyWith =>
      __$ChangeDobCopyWithImpl<_ChangeDob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeDob(dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeDob != null) {
      return changeDob(dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeDob(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeDob != null) {
      return changeDob(this);
    }
    return orElse();
  }
}

abstract class _ChangeDob implements UpdatePersonalInfoActorEvent {
  const factory _ChangeDob(String dob) = _$_ChangeDob;

  String get dob;
  @JsonKey(ignore: true)
  _$ChangeDobCopyWith<_ChangeDob> get copyWith;
}

/// @nodoc
abstract class _$ChangeAgeCopyWith<$Res> {
  factory _$ChangeAgeCopyWith(
          _ChangeAge value, $Res Function(_ChangeAge) then) =
      __$ChangeAgeCopyWithImpl<$Res>;
  $Res call({String age});
}

/// @nodoc
class __$ChangeAgeCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeAgeCopyWith<$Res> {
  __$ChangeAgeCopyWithImpl(_ChangeAge _value, $Res Function(_ChangeAge) _then)
      : super(_value, (v) => _then(v as _ChangeAge));

  @override
  _ChangeAge get _value => super._value as _ChangeAge;

  @override
  $Res call({
    Object age = freezed,
  }) {
    return _then(_ChangeAge(
      age == freezed ? _value.age : age as String,
    ));
  }
}

/// @nodoc
class _$_ChangeAge implements _ChangeAge {
  const _$_ChangeAge(this.age) : assert(age != null);

  @override
  final String age;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeAge(age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAge &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  _$ChangeAgeCopyWith<_ChangeAge> get copyWith =>
      __$ChangeAgeCopyWithImpl<_ChangeAge>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeAge(age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAge != null) {
      return changeAge(age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeAge(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAge != null) {
      return changeAge(this);
    }
    return orElse();
  }
}

abstract class _ChangeAge implements UpdatePersonalInfoActorEvent {
  const factory _ChangeAge(String age) = _$_ChangeAge;

  String get age;
  @JsonKey(ignore: true)
  _$ChangeAgeCopyWith<_ChangeAge> get copyWith;
}

/// @nodoc
abstract class _$ChangeGenderCopyWith<$Res> {
  factory _$ChangeGenderCopyWith(
          _ChangeGender value, $Res Function(_ChangeGender) then) =
      __$ChangeGenderCopyWithImpl<$Res>;
  $Res call({String gender});
}

/// @nodoc
class __$ChangeGenderCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeGenderCopyWith<$Res> {
  __$ChangeGenderCopyWithImpl(
      _ChangeGender _value, $Res Function(_ChangeGender) _then)
      : super(_value, (v) => _then(v as _ChangeGender));

  @override
  _ChangeGender get _value => super._value as _ChangeGender;

  @override
  $Res call({
    Object gender = freezed,
  }) {
    return _then(_ChangeGender(
      gender == freezed ? _value.gender : gender as String,
    ));
  }
}

/// @nodoc
class _$_ChangeGender implements _ChangeGender {
  const _$_ChangeGender(this.gender) : assert(gender != null);

  @override
  final String gender;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeGender(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeGender &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  _$ChangeGenderCopyWith<_ChangeGender> get copyWith =>
      __$ChangeGenderCopyWithImpl<_ChangeGender>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeGender(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeGender != null) {
      return changeGender(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeGender(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeGender != null) {
      return changeGender(this);
    }
    return orElse();
  }
}

abstract class _ChangeGender implements UpdatePersonalInfoActorEvent {
  const factory _ChangeGender(String gender) = _$_ChangeGender;

  String get gender;
  @JsonKey(ignore: true)
  _$ChangeGenderCopyWith<_ChangeGender> get copyWith;
}

/// @nodoc
abstract class _$ChangeNationalityCopyWith<$Res> {
  factory _$ChangeNationalityCopyWith(
          _ChangeNationality value, $Res Function(_ChangeNationality) then) =
      __$ChangeNationalityCopyWithImpl<$Res>;
  $Res call({String nationality});
}

/// @nodoc
class __$ChangeNationalityCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeNationalityCopyWith<$Res> {
  __$ChangeNationalityCopyWithImpl(
      _ChangeNationality _value, $Res Function(_ChangeNationality) _then)
      : super(_value, (v) => _then(v as _ChangeNationality));

  @override
  _ChangeNationality get _value => super._value as _ChangeNationality;

  @override
  $Res call({
    Object nationality = freezed,
  }) {
    return _then(_ChangeNationality(
      nationality == freezed ? _value.nationality : nationality as String,
    ));
  }
}

/// @nodoc
class _$_ChangeNationality implements _ChangeNationality {
  const _$_ChangeNationality(this.nationality) : assert(nationality != null);

  @override
  final String nationality;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeNationality(nationality: $nationality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeNationality &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality()
                    .equals(other.nationality, nationality)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nationality);

  @JsonKey(ignore: true)
  @override
  _$ChangeNationalityCopyWith<_ChangeNationality> get copyWith =>
      __$ChangeNationalityCopyWithImpl<_ChangeNationality>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeNationality(nationality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeNationality != null) {
      return changeNationality(nationality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeNationality(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeNationality != null) {
      return changeNationality(this);
    }
    return orElse();
  }
}

abstract class _ChangeNationality implements UpdatePersonalInfoActorEvent {
  const factory _ChangeNationality(String nationality) = _$_ChangeNationality;

  String get nationality;
  @JsonKey(ignore: true)
  _$ChangeNationalityCopyWith<_ChangeNationality> get copyWith;
}

/// @nodoc
abstract class _$ChangeEmailCopyWith<$Res> {
  factory _$ChangeEmailCopyWith(
          _ChangeEmail value, $Res Function(_ChangeEmail) then) =
      __$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ChangeEmailCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangeEmailCopyWith<$Res> {
  __$ChangeEmailCopyWithImpl(
      _ChangeEmail _value, $Res Function(_ChangeEmail) _then)
      : super(_value, (v) => _then(v as _ChangeEmail));

  @override
  _ChangeEmail get _value => super._value as _ChangeEmail;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_ChangeEmail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      __$ChangeEmailCopyWithImpl<_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements UpdatePersonalInfoActorEvent {
  const factory _ChangeEmail(String email) = _$_ChangeEmail;

  String get email;
  @JsonKey(ignore: true)
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith;
}

/// @nodoc
abstract class _$ChangePhoneCopyWith<$Res> {
  factory _$ChangePhoneCopyWith(
          _ChangePhone value, $Res Function(_ChangePhone) then) =
      __$ChangePhoneCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$ChangePhoneCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$ChangePhoneCopyWith<$Res> {
  __$ChangePhoneCopyWithImpl(
      _ChangePhone _value, $Res Function(_ChangePhone) _then)
      : super(_value, (v) => _then(v as _ChangePhone));

  @override
  _ChangePhone get _value => super._value as _ChangePhone;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(_ChangePhone(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$_ChangePhone implements _ChangePhone {
  const _$_ChangePhone(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changePhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePhone &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneCopyWith<_ChangePhone> get copyWith =>
      __$ChangePhoneCopyWithImpl<_ChangePhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changePhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePhone != null) {
      return changePhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class _ChangePhone implements UpdatePersonalInfoActorEvent {
  const factory _ChangePhone(String phone) = _$_ChangePhone;

  String get phone;
  @JsonKey(ignore: true)
  _$ChangePhoneCopyWith<_ChangePhone> get copyWith;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call(
      {PersonalInfo info,
      List<String> listOfNationality,
      List<String> listOfProfession,
      String lang});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object info = freezed,
    Object listOfNationality = freezed,
    Object listOfProfession = freezed,
    Object lang = freezed,
  }) {
    return _then(_SetInitialState(
      info: info == freezed ? _value.info : info as PersonalInfo,
      listOfNationality: listOfNationality == freezed
          ? _value.listOfNationality
          : listOfNationality as List<String>,
      listOfProfession: listOfProfession == freezed
          ? _value.listOfProfession
          : listOfProfession as List<String>,
      lang: lang == freezed ? _value.lang : lang as String,
    ));
  }
}

/// @nodoc
class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(
      {@required this.info,
      @required this.listOfNationality,
      @required this.listOfProfession,
      @required this.lang})
      : assert(info != null),
        assert(listOfNationality != null),
        assert(listOfProfession != null),
        assert(lang != null);

  @override
  final PersonalInfo info;
  @override
  final List<String> listOfNationality;
  @override
  final List<String> listOfProfession;
  @override
  final String lang;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.setInitialState(info: $info, listOfNationality: $listOfNationality, listOfProfession: $listOfProfession, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.listOfNationality, listOfNationality) ||
                const DeepCollectionEquality()
                    .equals(other.listOfNationality, listOfNationality)) &&
            (identical(other.listOfProfession, listOfProfession) ||
                const DeepCollectionEquality()
                    .equals(other.listOfProfession, listOfProfession)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(listOfNationality) ^
      const DeepCollectionEquality().hash(listOfProfession) ^
      const DeepCollectionEquality().hash(lang);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(info, listOfNationality, listOfProfession, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setInitialState != null) {
      return setInitialState(info, listOfNationality, listOfProfession, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
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

abstract class _SetInitialState implements UpdatePersonalInfoActorEvent {
  const factory _SetInitialState(
      {@required PersonalInfo info,
      @required List<String> listOfNationality,
      @required List<String> listOfProfession,
      @required String lang}) = _$_SetInitialState;

  PersonalInfo get info;
  List<String> get listOfNationality;
  List<String> get listOfProfession;
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
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res>
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
    return 'UpdatePersonalInfoActorEvent.save()';
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
    @required TResult changeFirstName(String name),
    @required TResult changeLastName(String name),
    @required TResult changeFuriganaName(String name),
    @required TResult changeProfession(String profession),
    @required TResult changeDob(String dob),
    @required TResult changeAge(String age),
    @required TResult changeGender(String gender),
    @required TResult changeNationality(String nationality),
    @required TResult changeEmail(String email),
    @required TResult changePhone(String phone),
    @required
        TResult setInitialState(
            PersonalInfo info,
            List<String> listOfNationality,
            List<String> listOfProfession,
            String lang),
    @required TResult save(),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeFirstName(String name),
    TResult changeLastName(String name),
    TResult changeFuriganaName(String name),
    TResult changeProfession(String profession),
    TResult changeDob(String dob),
    TResult changeAge(String age),
    TResult changeGender(String gender),
    TResult changeNationality(String nationality),
    TResult changeEmail(String email),
    TResult changePhone(String phone),
    TResult setInitialState(PersonalInfo info, List<String> listOfNationality,
        List<String> listOfProfession, String lang),
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
    @required TResult changeFirstName(_ChangeFirstName value),
    @required TResult changeLastName(_ChangeLastName value),
    @required TResult changeFuriganaName(_ChangeFuriganaName value),
    @required TResult changeProfession(_ChangeProfession value),
    @required TResult changeDob(_ChangeDob value),
    @required TResult changeAge(_ChangeAge value),
    @required TResult changeGender(_ChangeGender value),
    @required TResult changeNationality(_ChangeNationality value),
    @required TResult changeEmail(_ChangeEmail value),
    @required TResult changePhone(_ChangePhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changeFuriganaName != null);
    assert(changeProfession != null);
    assert(changeDob != null);
    assert(changeAge != null);
    assert(changeGender != null);
    assert(changeNationality != null);
    assert(changeEmail != null);
    assert(changePhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeFirstName(_ChangeFirstName value),
    TResult changeLastName(_ChangeLastName value),
    TResult changeFuriganaName(_ChangeFuriganaName value),
    TResult changeProfession(_ChangeProfession value),
    TResult changeDob(_ChangeDob value),
    TResult changeAge(_ChangeAge value),
    TResult changeGender(_ChangeGender value),
    TResult changeNationality(_ChangeNationality value),
    TResult changeEmail(_ChangeEmail value),
    TResult changePhone(_ChangePhone value),
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

abstract class _Save implements UpdatePersonalInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$UpdatePersonalInfoActorStateTearOff {
  const _$UpdatePersonalInfoActorStateTearOff();

// ignore: unused_element
  _UpdatePersonalInfoActorState call(
      {@required String firstName,
      @required String lastName,
      @required String furigana,
      @required String profession,
      @required String dob,
      @required String age,
      @required String gender,
      @required String nationality,
      @required String email,
      @required String phone,
      @required List<String> listOfNationality,
      @required List<String> listOfProfession,
      @required bool hasSetInitialData,
      @required bool isSubmitting,
      @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) {
    return _UpdatePersonalInfoActorState(
      firstName: firstName,
      lastName: lastName,
      furigana: furigana,
      profession: profession,
      dob: dob,
      age: age,
      gender: gender,
      nationality: nationality,
      email: email,
      phone: phone,
      listOfNationality: listOfNationality,
      listOfProfession: listOfProfession,
      hasSetInitialData: hasSetInitialData,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePersonalInfoActorState = _$UpdatePersonalInfoActorStateTearOff();

/// @nodoc
mixin _$UpdatePersonalInfoActorState {
  String get firstName;
  String get lastName;
  String get furigana;
  String get profession;
  String get dob;
  String get age;
  String get gender;
  String get nationality;
  String get email;
  String get phone;
  List<String> get listOfNationality;
  List<String> get listOfProfession;
  bool get hasSetInitialData;
  bool get isSubmitting;
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UpdatePersonalInfoActorStateCopyWith<UpdatePersonalInfoActorState>
      get copyWith;
}

/// @nodoc
abstract class $UpdatePersonalInfoActorStateCopyWith<$Res> {
  factory $UpdatePersonalInfoActorStateCopyWith(
          UpdatePersonalInfoActorState value,
          $Res Function(UpdatePersonalInfoActorState) then) =
      _$UpdatePersonalInfoActorStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String furigana,
      String profession,
      String dob,
      String age,
      String gender,
      String nationality,
      String email,
      String phone,
      List<String> listOfNationality,
      List<String> listOfProfession,
      bool hasSetInitialData,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UpdatePersonalInfoActorStateCopyWithImpl<$Res>
    implements $UpdatePersonalInfoActorStateCopyWith<$Res> {
  _$UpdatePersonalInfoActorStateCopyWithImpl(this._value, this._then);

  final UpdatePersonalInfoActorState _value;
  // ignore: unused_field
  final $Res Function(UpdatePersonalInfoActorState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object furigana = freezed,
    Object profession = freezed,
    Object dob = freezed,
    Object age = freezed,
    Object gender = freezed,
    Object nationality = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object listOfNationality = freezed,
    Object listOfProfession = freezed,
    Object hasSetInitialData = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      furigana: furigana == freezed ? _value.furigana : furigana as String,
      profession:
          profession == freezed ? _value.profession : profession as String,
      dob: dob == freezed ? _value.dob : dob as String,
      age: age == freezed ? _value.age : age as String,
      gender: gender == freezed ? _value.gender : gender as String,
      nationality:
          nationality == freezed ? _value.nationality : nationality as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      listOfNationality: listOfNationality == freezed
          ? _value.listOfNationality
          : listOfNationality as List<String>,
      listOfProfession: listOfProfession == freezed
          ? _value.listOfProfession
          : listOfProfession as List<String>,
      hasSetInitialData: hasSetInitialData == freezed
          ? _value.hasSetInitialData
          : hasSetInitialData as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdatePersonalInfoActorStateCopyWith<$Res>
    implements $UpdatePersonalInfoActorStateCopyWith<$Res> {
  factory _$UpdatePersonalInfoActorStateCopyWith(
          _UpdatePersonalInfoActorState value,
          $Res Function(_UpdatePersonalInfoActorState) then) =
      __$UpdatePersonalInfoActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String furigana,
      String profession,
      String dob,
      String age,
      String gender,
      String nationality,
      String email,
      String phone,
      List<String> listOfNationality,
      List<String> listOfProfession,
      bool hasSetInitialData,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$UpdatePersonalInfoActorStateCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorStateCopyWithImpl<$Res>
    implements _$UpdatePersonalInfoActorStateCopyWith<$Res> {
  __$UpdatePersonalInfoActorStateCopyWithImpl(
      _UpdatePersonalInfoActorState _value,
      $Res Function(_UpdatePersonalInfoActorState) _then)
      : super(_value, (v) => _then(v as _UpdatePersonalInfoActorState));

  @override
  _UpdatePersonalInfoActorState get _value =>
      super._value as _UpdatePersonalInfoActorState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object furigana = freezed,
    Object profession = freezed,
    Object dob = freezed,
    Object age = freezed,
    Object gender = freezed,
    Object nationality = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object listOfNationality = freezed,
    Object listOfProfession = freezed,
    Object hasSetInitialData = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdatePersonalInfoActorState(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      furigana: furigana == freezed ? _value.furigana : furigana as String,
      profession:
          profession == freezed ? _value.profession : profession as String,
      dob: dob == freezed ? _value.dob : dob as String,
      age: age == freezed ? _value.age : age as String,
      gender: gender == freezed ? _value.gender : gender as String,
      nationality:
          nationality == freezed ? _value.nationality : nationality as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      listOfNationality: listOfNationality == freezed
          ? _value.listOfNationality
          : listOfNationality as List<String>,
      listOfProfession: listOfProfession == freezed
          ? _value.listOfProfession
          : listOfProfession as List<String>,
      hasSetInitialData: hasSetInitialData == freezed
          ? _value.hasSetInitialData
          : hasSetInitialData as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UpdatePersonalInfoActorState implements _UpdatePersonalInfoActorState {
  const _$_UpdatePersonalInfoActorState(
      {@required this.firstName,
      @required this.lastName,
      @required this.furigana,
      @required this.profession,
      @required this.dob,
      @required this.age,
      @required this.gender,
      @required this.nationality,
      @required this.email,
      @required this.phone,
      @required this.listOfNationality,
      @required this.listOfProfession,
      @required this.hasSetInitialData,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(firstName != null),
        assert(lastName != null),
        assert(furigana != null),
        assert(profession != null),
        assert(dob != null),
        assert(age != null),
        assert(gender != null),
        assert(nationality != null),
        assert(email != null),
        assert(phone != null),
        assert(listOfNationality != null),
        assert(listOfProfession != null),
        assert(hasSetInitialData != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String furigana;
  @override
  final String profession;
  @override
  final String dob;
  @override
  final String age;
  @override
  final String gender;
  @override
  final String nationality;
  @override
  final String email;
  @override
  final String phone;
  @override
  final List<String> listOfNationality;
  @override
  final List<String> listOfProfession;
  @override
  final bool hasSetInitialData;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorState(firstName: $firstName, lastName: $lastName, furigana: $furigana, profession: $profession, dob: $dob, age: $age, gender: $gender, nationality: $nationality, email: $email, phone: $phone, listOfNationality: $listOfNationality, listOfProfession: $listOfProfession, hasSetInitialData: $hasSetInitialData, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePersonalInfoActorState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.furigana, furigana) ||
                const DeepCollectionEquality()
                    .equals(other.furigana, furigana)) &&
            (identical(other.profession, profession) ||
                const DeepCollectionEquality()
                    .equals(other.profession, profession)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality()
                    .equals(other.nationality, nationality)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.listOfNationality, listOfNationality) ||
                const DeepCollectionEquality()
                    .equals(other.listOfNationality, listOfNationality)) &&
            (identical(other.listOfProfession, listOfProfession) ||
                const DeepCollectionEquality()
                    .equals(other.listOfProfession, listOfProfession)) &&
            (identical(other.hasSetInitialData, hasSetInitialData) ||
                const DeepCollectionEquality()
                    .equals(other.hasSetInitialData, hasSetInitialData)) &&
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
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(furigana) ^
      const DeepCollectionEquality().hash(profession) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(nationality) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(listOfNationality) ^
      const DeepCollectionEquality().hash(listOfProfession) ^
      const DeepCollectionEquality().hash(hasSetInitialData) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdatePersonalInfoActorStateCopyWith<_UpdatePersonalInfoActorState>
      get copyWith => __$UpdatePersonalInfoActorStateCopyWithImpl<
          _UpdatePersonalInfoActorState>(this, _$identity);
}

abstract class _UpdatePersonalInfoActorState
    implements UpdatePersonalInfoActorState {
  const factory _UpdatePersonalInfoActorState(
          {@required
              String firstName,
          @required
              String lastName,
          @required
              String furigana,
          @required
              String profession,
          @required
              String dob,
          @required
              String age,
          @required
              String gender,
          @required
              String nationality,
          @required
              String email,
          @required
              String phone,
          @required
              List<String> listOfNationality,
          @required
              List<String> listOfProfession,
          @required
              bool hasSetInitialData,
          @required
              bool isSubmitting,
          @required
              Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) =
      _$_UpdatePersonalInfoActorState;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get furigana;
  @override
  String get profession;
  @override
  String get dob;
  @override
  String get age;
  @override
  String get gender;
  @override
  String get nationality;
  @override
  String get email;
  @override
  String get phone;
  @override
  List<String> get listOfNationality;
  @override
  List<String> get listOfProfession;
  @override
  bool get hasSetInitialData;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdatePersonalInfoActorStateCopyWith<_UpdatePersonalInfoActorState>
      get copyWith;
}
