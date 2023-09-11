// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_personal_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdatePersonalInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePersonalInfoActorEventCopyWith<$Res> {
  factory $UpdatePersonalInfoActorEventCopyWith(
          UpdatePersonalInfoActorEvent value,
          $Res Function(UpdatePersonalInfoActorEvent) then) =
      _$UpdatePersonalInfoActorEventCopyWithImpl<$Res,
          UpdatePersonalInfoActorEvent>;
}

/// @nodoc
class _$UpdatePersonalInfoActorEventCopyWithImpl<$Res,
        $Val extends UpdatePersonalInfoActorEvent>
    implements $UpdatePersonalInfoActorEventCopyWith<$Res> {
  _$UpdatePersonalInfoActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeFirstNameCopyWith<$Res> {
  factory _$$_ChangeFirstNameCopyWith(
          _$_ChangeFirstName value, $Res Function(_$_ChangeFirstName) then) =
      __$$_ChangeFirstNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ChangeFirstNameCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangeFirstName>
    implements _$$_ChangeFirstNameCopyWith<$Res> {
  __$$_ChangeFirstNameCopyWithImpl(
      _$_ChangeFirstName _value, $Res Function(_$_ChangeFirstName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ChangeFirstName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeFirstName implements _ChangeFirstName {
  const _$_ChangeFirstName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeFirstName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFirstName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFirstNameCopyWith<_$_ChangeFirstName> get copyWith =>
      __$$_ChangeFirstNameCopyWithImpl<_$_ChangeFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeFirstName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeFirstName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstName implements UpdatePersonalInfoActorEvent {
  const factory _ChangeFirstName(final String name) = _$_ChangeFirstName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ChangeFirstNameCopyWith<_$_ChangeFirstName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLastNameCopyWith<$Res> {
  factory _$$_ChangeLastNameCopyWith(
          _$_ChangeLastName value, $Res Function(_$_ChangeLastName) then) =
      __$$_ChangeLastNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ChangeLastNameCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangeLastName>
    implements _$$_ChangeLastNameCopyWith<$Res> {
  __$$_ChangeLastNameCopyWithImpl(
      _$_ChangeLastName _value, $Res Function(_$_ChangeLastName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ChangeLastName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLastName implements _ChangeLastName {
  const _$_ChangeLastName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeLastName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLastName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLastNameCopyWith<_$_ChangeLastName> get copyWith =>
      __$$_ChangeLastNameCopyWithImpl<_$_ChangeLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeLastName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeLastName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastName implements UpdatePersonalInfoActorEvent {
  const factory _ChangeLastName(final String name) = _$_ChangeLastName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ChangeLastNameCopyWith<_$_ChangeLastName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeFuriganaNameCopyWith<$Res> {
  factory _$$_ChangeFuriganaNameCopyWith(_$_ChangeFuriganaName value,
          $Res Function(_$_ChangeFuriganaName) then) =
      __$$_ChangeFuriganaNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ChangeFuriganaNameCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res,
        _$_ChangeFuriganaName> implements _$$_ChangeFuriganaNameCopyWith<$Res> {
  __$$_ChangeFuriganaNameCopyWithImpl(
      _$_ChangeFuriganaName _value, $Res Function(_$_ChangeFuriganaName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ChangeFuriganaName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeFuriganaName implements _ChangeFuriganaName {
  const _$_ChangeFuriganaName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeFuriganaName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFuriganaName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFuriganaNameCopyWith<_$_ChangeFuriganaName> get copyWith =>
      __$$_ChangeFuriganaNameCopyWithImpl<_$_ChangeFuriganaName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeFuriganaName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeFuriganaName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeFuriganaName != null) {
      return changeFuriganaName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeFuriganaName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeFuriganaName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeFuriganaName != null) {
      return changeFuriganaName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFuriganaName implements UpdatePersonalInfoActorEvent {
  const factory _ChangeFuriganaName(final String name) = _$_ChangeFuriganaName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ChangeFuriganaNameCopyWith<_$_ChangeFuriganaName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeProfessionCopyWith<$Res> {
  factory _$$_ChangeProfessionCopyWith(
          _$_ChangeProfession value, $Res Function(_$_ChangeProfession) then) =
      __$$_ChangeProfessionCopyWithImpl<$Res>;
  @useResult
  $Res call({String profession});
}

/// @nodoc
class __$$_ChangeProfessionCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res,
        _$_ChangeProfession> implements _$$_ChangeProfessionCopyWith<$Res> {
  __$$_ChangeProfessionCopyWithImpl(
      _$_ChangeProfession _value, $Res Function(_$_ChangeProfession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profession = null,
  }) {
    return _then(_$_ChangeProfession(
      null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeProfession implements _ChangeProfession {
  const _$_ChangeProfession(this.profession);

  @override
  final String profession;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeProfession(profession: $profession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeProfession &&
            (identical(other.profession, profession) ||
                other.profession == profession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeProfessionCopyWith<_$_ChangeProfession> get copyWith =>
      __$$_ChangeProfessionCopyWithImpl<_$_ChangeProfession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeProfession(profession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeProfession?.call(profession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeProfession != null) {
      return changeProfession(profession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeProfession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeProfession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeProfession != null) {
      return changeProfession(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfession implements UpdatePersonalInfoActorEvent {
  const factory _ChangeProfession(final String profession) =
      _$_ChangeProfession;

  String get profession;
  @JsonKey(ignore: true)
  _$$_ChangeProfessionCopyWith<_$_ChangeProfession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeDobCopyWith<$Res> {
  factory _$$_ChangeDobCopyWith(
          _$_ChangeDob value, $Res Function(_$_ChangeDob) then) =
      __$$_ChangeDobCopyWithImpl<$Res>;
  @useResult
  $Res call({String dob});
}

/// @nodoc
class __$$_ChangeDobCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangeDob>
    implements _$$_ChangeDobCopyWith<$Res> {
  __$$_ChangeDobCopyWithImpl(
      _$_ChangeDob _value, $Res Function(_$_ChangeDob) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dob = null,
  }) {
    return _then(_$_ChangeDob(
      null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeDob implements _ChangeDob {
  const _$_ChangeDob(this.dob);

  @override
  final String dob;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeDob(dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDob &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDobCopyWith<_$_ChangeDob> get copyWith =>
      __$$_ChangeDobCopyWithImpl<_$_ChangeDob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeDob(dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeDob?.call(dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeDob != null) {
      return changeDob(dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeDob(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeDob?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeDob != null) {
      return changeDob(this);
    }
    return orElse();
  }
}

abstract class _ChangeDob implements UpdatePersonalInfoActorEvent {
  const factory _ChangeDob(final String dob) = _$_ChangeDob;

  String get dob;
  @JsonKey(ignore: true)
  _$$_ChangeDobCopyWith<_$_ChangeDob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAgeCopyWith<$Res> {
  factory _$$_ChangeAgeCopyWith(
          _$_ChangeAge value, $Res Function(_$_ChangeAge) then) =
      __$$_ChangeAgeCopyWithImpl<$Res>;
  @useResult
  $Res call({String age});
}

/// @nodoc
class __$$_ChangeAgeCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangeAge>
    implements _$$_ChangeAgeCopyWith<$Res> {
  __$$_ChangeAgeCopyWithImpl(
      _$_ChangeAge _value, $Res Function(_$_ChangeAge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
  }) {
    return _then(_$_ChangeAge(
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeAge implements _ChangeAge {
  const _$_ChangeAge(this.age);

  @override
  final String age;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeAge(age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAge &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAgeCopyWith<_$_ChangeAge> get copyWith =>
      __$$_ChangeAgeCopyWithImpl<_$_ChangeAge>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeAge(age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeAge?.call(age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeAge != null) {
      return changeAge(age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeAge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeAge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeAge != null) {
      return changeAge(this);
    }
    return orElse();
  }
}

abstract class _ChangeAge implements UpdatePersonalInfoActorEvent {
  const factory _ChangeAge(final String age) = _$_ChangeAge;

  String get age;
  @JsonKey(ignore: true)
  _$$_ChangeAgeCopyWith<_$_ChangeAge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeGenderCopyWith<$Res> {
  factory _$$_ChangeGenderCopyWith(
          _$_ChangeGender value, $Res Function(_$_ChangeGender) then) =
      __$$_ChangeGenderCopyWithImpl<$Res>;
  @useResult
  $Res call({String gender});
}

/// @nodoc
class __$$_ChangeGenderCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangeGender>
    implements _$$_ChangeGenderCopyWith<$Res> {
  __$$_ChangeGenderCopyWithImpl(
      _$_ChangeGender _value, $Res Function(_$_ChangeGender) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$_ChangeGender(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeGender implements _ChangeGender {
  const _$_ChangeGender(this.gender);

  @override
  final String gender;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeGender(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeGender &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeGenderCopyWith<_$_ChangeGender> get copyWith =>
      __$$_ChangeGenderCopyWithImpl<_$_ChangeGender>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeGender(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeGender?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeGender != null) {
      return changeGender(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeGender != null) {
      return changeGender(this);
    }
    return orElse();
  }
}

abstract class _ChangeGender implements UpdatePersonalInfoActorEvent {
  const factory _ChangeGender(final String gender) = _$_ChangeGender;

  String get gender;
  @JsonKey(ignore: true)
  _$$_ChangeGenderCopyWith<_$_ChangeGender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeNationalityCopyWith<$Res> {
  factory _$$_ChangeNationalityCopyWith(_$_ChangeNationality value,
          $Res Function(_$_ChangeNationality) then) =
      __$$_ChangeNationalityCopyWithImpl<$Res>;
  @useResult
  $Res call({String nationality});
}

/// @nodoc
class __$$_ChangeNationalityCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res,
        _$_ChangeNationality> implements _$$_ChangeNationalityCopyWith<$Res> {
  __$$_ChangeNationalityCopyWithImpl(
      _$_ChangeNationality _value, $Res Function(_$_ChangeNationality) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationality = null,
  }) {
    return _then(_$_ChangeNationality(
      null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeNationality implements _ChangeNationality {
  const _$_ChangeNationality(this.nationality);

  @override
  final String nationality;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeNationality(nationality: $nationality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeNationality &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nationality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeNationalityCopyWith<_$_ChangeNationality> get copyWith =>
      __$$_ChangeNationalityCopyWithImpl<_$_ChangeNationality>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeNationality(nationality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeNationality?.call(nationality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeNationality != null) {
      return changeNationality(nationality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeNationality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeNationality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeNationality != null) {
      return changeNationality(this);
    }
    return orElse();
  }
}

abstract class _ChangeNationality implements UpdatePersonalInfoActorEvent {
  const factory _ChangeNationality(final String nationality) =
      _$_ChangeNationality;

  String get nationality;
  @JsonKey(ignore: true)
  _$$_ChangeNationalityCopyWith<_$_ChangeNationality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeEmailCopyWith<$Res> {
  factory _$$_ChangeEmailCopyWith(
          _$_ChangeEmail value, $Res Function(_$_ChangeEmail) then) =
      __$$_ChangeEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ChangeEmailCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangeEmail>
    implements _$$_ChangeEmailCopyWith<$Res> {
  __$$_ChangeEmailCopyWithImpl(
      _$_ChangeEmail _value, $Res Function(_$_ChangeEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ChangeEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      __$$_ChangeEmailCopyWithImpl<_$_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements UpdatePersonalInfoActorEvent {
  const factory _ChangeEmail(final String email) = _$_ChangeEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePhoneCopyWith<$Res> {
  factory _$$_ChangePhoneCopyWith(
          _$_ChangePhone value, $Res Function(_$_ChangePhone) then) =
      __$$_ChangePhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_ChangePhoneCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_ChangePhone>
    implements _$$_ChangePhoneCopyWith<$Res> {
  __$$_ChangePhoneCopyWithImpl(
      _$_ChangePhone _value, $Res Function(_$_ChangePhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_ChangePhone(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePhone implements _ChangePhone {
  const _$_ChangePhone(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.changePhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePhone &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePhoneCopyWith<_$_ChangePhone> get copyWith =>
      __$$_ChangePhoneCopyWithImpl<_$_ChangePhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return changePhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return changePhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return changePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return changePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class _ChangePhone implements UpdatePersonalInfoActorEvent {
  const factory _ChangePhone(final String phone) = _$_ChangePhone;

  String get phone;
  @JsonKey(ignore: true)
  _$$_ChangePhoneCopyWith<_$_ChangePhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetInitialStateCopyWith<$Res> {
  factory _$$_SetInitialStateCopyWith(
          _$_SetInitialState value, $Res Function(_$_SetInitialState) then) =
      __$$_SetInitialStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PersonalInfo info,
      List<String> listOfNationality,
      List<String> listOfProfession,
      String lang});
}

/// @nodoc
class __$$_SetInitialStateCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_SetInitialState>
    implements _$$_SetInitialStateCopyWith<$Res> {
  __$$_SetInitialStateCopyWithImpl(
      _$_SetInitialState _value, $Res Function(_$_SetInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? listOfNationality = null,
    Object? listOfProfession = null,
    Object? lang = null,
  }) {
    return _then(_$_SetInitialState(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
      listOfNationality: null == listOfNationality
          ? _value._listOfNationality
          : listOfNationality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfProfession: null == listOfProfession
          ? _value._listOfProfession
          : listOfProfession // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(
      {required this.info,
      required final List<String> listOfNationality,
      required final List<String> listOfProfession,
      required this.lang})
      : _listOfNationality = listOfNationality,
        _listOfProfession = listOfProfession;

  @override
  final PersonalInfo info;
  final List<String> _listOfNationality;
  @override
  List<String> get listOfNationality {
    if (_listOfNationality is EqualUnmodifiableListView)
      return _listOfNationality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfNationality);
  }

  final List<String> _listOfProfession;
  @override
  List<String> get listOfProfession {
    if (_listOfProfession is EqualUnmodifiableListView)
      return _listOfProfession;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfProfession);
  }

  @override
  final String lang;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorEvent.setInitialState(info: $info, listOfNationality: $listOfNationality, listOfProfession: $listOfProfession, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetInitialState &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._listOfNationality, _listOfNationality) &&
            const DeepCollectionEquality()
                .equals(other._listOfProfession, _listOfProfession) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_listOfNationality),
      const DeepCollectionEquality().hash(_listOfProfession),
      lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetInitialStateCopyWith<_$_SetInitialState> get copyWith =>
      __$$_SetInitialStateCopyWithImpl<_$_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return setInitialState(info, listOfNationality, listOfProfession, lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return setInitialState?.call(
        info, listOfNationality, listOfProfession, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(info, listOfNationality, listOfProfession, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return setInitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
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

abstract class _SetInitialState implements UpdatePersonalInfoActorEvent {
  const factory _SetInitialState(
      {required final PersonalInfo info,
      required final List<String> listOfNationality,
      required final List<String> listOfProfession,
      required final String lang}) = _$_SetInitialState;

  PersonalInfo get info;
  List<String> get listOfNationality;
  List<String> get listOfProfession;
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
    extends _$UpdatePersonalInfoActorEventCopyWithImpl<$Res, _$_Save>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeFirstName,
    required TResult Function(String name) changeLastName,
    required TResult Function(String name) changeFuriganaName,
    required TResult Function(String profession) changeProfession,
    required TResult Function(String dob) changeDob,
    required TResult Function(String age) changeAge,
    required TResult Function(String gender) changeGender,
    required TResult Function(String nationality) changeNationality,
    required TResult Function(String email) changeEmail,
    required TResult Function(String phone) changePhone,
    required TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)
        setInitialState,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeFirstName,
    TResult? Function(String name)? changeLastName,
    TResult? Function(String name)? changeFuriganaName,
    TResult? Function(String profession)? changeProfession,
    TResult? Function(String dob)? changeDob,
    TResult? Function(String age)? changeAge,
    TResult? Function(String gender)? changeGender,
    TResult? Function(String nationality)? changeNationality,
    TResult? Function(String email)? changeEmail,
    TResult? Function(String phone)? changePhone,
    TResult? Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
        setInitialState,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeFirstName,
    TResult Function(String name)? changeLastName,
    TResult Function(String name)? changeFuriganaName,
    TResult Function(String profession)? changeProfession,
    TResult Function(String dob)? changeDob,
    TResult Function(String age)? changeAge,
    TResult Function(String gender)? changeGender,
    TResult Function(String nationality)? changeNationality,
    TResult Function(String email)? changeEmail,
    TResult Function(String phone)? changePhone,
    TResult Function(PersonalInfo info, List<String> listOfNationality,
            List<String> listOfProfession, String lang)?
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
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeFuriganaName value) changeFuriganaName,
    required TResult Function(_ChangeProfession value) changeProfession,
    required TResult Function(_ChangeDob value) changeDob,
    required TResult Function(_ChangeAge value) changeAge,
    required TResult Function(_ChangeGender value) changeGender,
    required TResult Function(_ChangeNationality value) changeNationality,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult? Function(_ChangeProfession value)? changeProfession,
    TResult? Function(_ChangeDob value)? changeDob,
    TResult? Function(_ChangeAge value)? changeAge,
    TResult? Function(_ChangeGender value)? changeGender,
    TResult? Function(_ChangeNationality value)? changeNationality,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_SetInitialState value)? setInitialState,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeFuriganaName value)? changeFuriganaName,
    TResult Function(_ChangeProfession value)? changeProfession,
    TResult Function(_ChangeDob value)? changeDob,
    TResult Function(_ChangeAge value)? changeAge,
    TResult Function(_ChangeGender value)? changeGender,
    TResult Function(_ChangeNationality value)? changeNationality,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePhone value)? changePhone,
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

abstract class _Save implements UpdatePersonalInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
mixin _$UpdatePersonalInfoActorState {
  Key? get key => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get furigana => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  List<String> get listOfNationality => throw _privateConstructorUsedError;
  List<String> get listOfProfession => throw _privateConstructorUsedError;
  List<String> get listOfGender => throw _privateConstructorUsedError;
  bool get hasSetInitialData => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatePersonalInfoActorStateCopyWith<UpdatePersonalInfoActorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePersonalInfoActorStateCopyWith<$Res> {
  factory $UpdatePersonalInfoActorStateCopyWith(
          UpdatePersonalInfoActorState value,
          $Res Function(UpdatePersonalInfoActorState) then) =
      _$UpdatePersonalInfoActorStateCopyWithImpl<$Res,
          UpdatePersonalInfoActorState>;
  @useResult
  $Res call(
      {Key? key,
      String firstName,
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
      List<String> listOfGender,
      bool hasSetInitialData,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$UpdatePersonalInfoActorStateCopyWithImpl<$Res,
        $Val extends UpdatePersonalInfoActorState>
    implements $UpdatePersonalInfoActorStateCopyWith<$Res> {
  _$UpdatePersonalInfoActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? furigana = null,
    Object? profession = null,
    Object? dob = null,
    Object? age = null,
    Object? gender = null,
    Object? nationality = null,
    Object? email = null,
    Object? phone = null,
    Object? listOfNationality = null,
    Object? listOfProfession = null,
    Object? listOfGender = null,
    Object? hasSetInitialData = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      furigana: null == furigana
          ? _value.furigana
          : furigana // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      listOfNationality: null == listOfNationality
          ? _value.listOfNationality
          : listOfNationality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfProfession: null == listOfProfession
          ? _value.listOfProfession
          : listOfProfession // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfGender: null == listOfGender
          ? _value.listOfGender
          : listOfGender // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasSetInitialData: null == hasSetInitialData
          ? _value.hasSetInitialData
          : hasSetInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdatePersonalInfoActorStateCopyWith<$Res>
    implements $UpdatePersonalInfoActorStateCopyWith<$Res> {
  factory _$$_UpdatePersonalInfoActorStateCopyWith(
          _$_UpdatePersonalInfoActorState value,
          $Res Function(_$_UpdatePersonalInfoActorState) then) =
      __$$_UpdatePersonalInfoActorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Key? key,
      String firstName,
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
      List<String> listOfGender,
      bool hasSetInitialData,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_UpdatePersonalInfoActorStateCopyWithImpl<$Res>
    extends _$UpdatePersonalInfoActorStateCopyWithImpl<$Res,
        _$_UpdatePersonalInfoActorState>
    implements _$$_UpdatePersonalInfoActorStateCopyWith<$Res> {
  __$$_UpdatePersonalInfoActorStateCopyWithImpl(
      _$_UpdatePersonalInfoActorState _value,
      $Res Function(_$_UpdatePersonalInfoActorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? furigana = null,
    Object? profession = null,
    Object? dob = null,
    Object? age = null,
    Object? gender = null,
    Object? nationality = null,
    Object? email = null,
    Object? phone = null,
    Object? listOfNationality = null,
    Object? listOfProfession = null,
    Object? listOfGender = null,
    Object? hasSetInitialData = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_UpdatePersonalInfoActorState(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      furigana: null == furigana
          ? _value.furigana
          : furigana // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      listOfNationality: null == listOfNationality
          ? _value._listOfNationality
          : listOfNationality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfProfession: null == listOfProfession
          ? _value._listOfProfession
          : listOfProfession // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listOfGender: null == listOfGender
          ? _value._listOfGender
          : listOfGender // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasSetInitialData: null == hasSetInitialData
          ? _value.hasSetInitialData
          : hasSetInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UpdatePersonalInfoActorState implements _UpdatePersonalInfoActorState {
  const _$_UpdatePersonalInfoActorState(
      {required this.key,
      required this.firstName,
      required this.lastName,
      required this.furigana,
      required this.profession,
      required this.dob,
      required this.age,
      required this.gender,
      required this.nationality,
      required this.email,
      required this.phone,
      required final List<String> listOfNationality,
      required final List<String> listOfProfession,
      required final List<String> listOfGender,
      required this.hasSetInitialData,
      required this.isSubmitting,
      required this.failureOrSuccessOption})
      : _listOfNationality = listOfNationality,
        _listOfProfession = listOfProfession,
        _listOfGender = listOfGender;

  @override
  final Key? key;
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
  final List<String> _listOfNationality;
  @override
  List<String> get listOfNationality {
    if (_listOfNationality is EqualUnmodifiableListView)
      return _listOfNationality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfNationality);
  }

  final List<String> _listOfProfession;
  @override
  List<String> get listOfProfession {
    if (_listOfProfession is EqualUnmodifiableListView)
      return _listOfProfession;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfProfession);
  }

  final List<String> _listOfGender;
  @override
  List<String> get listOfGender {
    if (_listOfGender is EqualUnmodifiableListView) return _listOfGender;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfGender);
  }

  @override
  final bool hasSetInitialData;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UpdatePersonalInfoActorState(key: $key, firstName: $firstName, lastName: $lastName, furigana: $furigana, profession: $profession, dob: $dob, age: $age, gender: $gender, nationality: $nationality, email: $email, phone: $phone, listOfNationality: $listOfNationality, listOfProfession: $listOfProfession, listOfGender: $listOfGender, hasSetInitialData: $hasSetInitialData, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePersonalInfoActorState &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.furigana, furigana) ||
                other.furigana == furigana) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality()
                .equals(other._listOfNationality, _listOfNationality) &&
            const DeepCollectionEquality()
                .equals(other._listOfProfession, _listOfProfession) &&
            const DeepCollectionEquality()
                .equals(other._listOfGender, _listOfGender) &&
            (identical(other.hasSetInitialData, hasSetInitialData) ||
                other.hasSetInitialData == hasSetInitialData) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      firstName,
      lastName,
      furigana,
      profession,
      dob,
      age,
      gender,
      nationality,
      email,
      phone,
      const DeepCollectionEquality().hash(_listOfNationality),
      const DeepCollectionEquality().hash(_listOfProfession),
      const DeepCollectionEquality().hash(_listOfGender),
      hasSetInitialData,
      isSubmitting,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePersonalInfoActorStateCopyWith<_$_UpdatePersonalInfoActorState>
      get copyWith => __$$_UpdatePersonalInfoActorStateCopyWithImpl<
          _$_UpdatePersonalInfoActorState>(this, _$identity);
}

abstract class _UpdatePersonalInfoActorState
    implements UpdatePersonalInfoActorState {
  const factory _UpdatePersonalInfoActorState(
      {required final Key? key,
      required final String firstName,
      required final String lastName,
      required final String furigana,
      required final String profession,
      required final String dob,
      required final String age,
      required final String gender,
      required final String nationality,
      required final String email,
      required final String phone,
      required final List<String> listOfNationality,
      required final List<String> listOfProfession,
      required final List<String> listOfGender,
      required final bool hasSetInitialData,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_UpdatePersonalInfoActorState;

  @override
  Key? get key;
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
  List<String> get listOfGender;
  @override
  bool get hasSetInitialData;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatePersonalInfoActorStateCopyWith<_$_UpdatePersonalInfoActorState>
      get copyWith => throw _privateConstructorUsedError;
}
