// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_address_info_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateAddressInfoActorEventTearOff {
  const _$UpdateAddressInfoActorEventTearOff();

// ignore: unused_element
  _ChangedPostalCode changedPostalCode(String code) {
    return _ChangedPostalCode(
      code,
    );
  }

// ignore: unused_element
  _ChangedPrefecture changedPrefecture(String prefecture) {
    return _ChangedPrefecture(
      prefecture,
    );
  }

// ignore: unused_element
  _ChangedCity changedCity(String city) {
    return _ChangedCity(
      city,
    );
  }

// ignore: unused_element
  _ChangedAddress changedAddress(String address) {
    return _ChangedAddress(
      address,
    );
  }

// ignore: unused_element
  _ChangedPhone changedPhone(String phone) {
    return _ChangedPhone(
      phone,
    );
  }

// ignore: unused_element
  _SetInitialState setInitialState(PersonalInfo info) {
    return _SetInitialState(
      info,
    );
  }

// ignore: unused_element
  _Save save() {
    return const _Save();
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateAddressInfoActorEvent = _$UpdateAddressInfoActorEventTearOff();

/// @nodoc
mixin _$UpdateAddressInfoActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateAddressInfoActorEventCopyWith<$Res> {
  factory $UpdateAddressInfoActorEventCopyWith(
          UpdateAddressInfoActorEvent value,
          $Res Function(UpdateAddressInfoActorEvent) then) =
      _$UpdateAddressInfoActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements $UpdateAddressInfoActorEventCopyWith<$Res> {
  _$UpdateAddressInfoActorEventCopyWithImpl(this._value, this._then);

  final UpdateAddressInfoActorEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateAddressInfoActorEvent) _then;
}

/// @nodoc
abstract class _$ChangedPostalCodeCopyWith<$Res> {
  factory _$ChangedPostalCodeCopyWith(
          _ChangedPostalCode value, $Res Function(_ChangedPostalCode) then) =
      __$ChangedPostalCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$ChangedPostalCodeCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedPostalCodeCopyWith<$Res> {
  __$ChangedPostalCodeCopyWithImpl(
      _ChangedPostalCode _value, $Res Function(_ChangedPostalCode) _then)
      : super(_value, (v) => _then(v as _ChangedPostalCode));

  @override
  _ChangedPostalCode get _value => super._value as _ChangedPostalCode;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(_ChangedPostalCode(
      code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
class _$_ChangedPostalCode implements _ChangedPostalCode {
  const _$_ChangedPostalCode(this.code) : assert(code != null);

  @override
  final String code;

  @override
  String toString() {
    return 'UpdateAddressInfoActorEvent.changedPostalCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedPostalCode &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ChangedPostalCodeCopyWith<_ChangedPostalCode> get copyWith =>
      __$ChangedPostalCodeCopyWithImpl<_ChangedPostalCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPostalCode(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPostalCode != null) {
      return changedPostalCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPostalCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPostalCode != null) {
      return changedPostalCode(this);
    }
    return orElse();
  }
}

abstract class _ChangedPostalCode implements UpdateAddressInfoActorEvent {
  const factory _ChangedPostalCode(String code) = _$_ChangedPostalCode;

  String get code;
  @JsonKey(ignore: true)
  _$ChangedPostalCodeCopyWith<_ChangedPostalCode> get copyWith;
}

/// @nodoc
abstract class _$ChangedPrefectureCopyWith<$Res> {
  factory _$ChangedPrefectureCopyWith(
          _ChangedPrefecture value, $Res Function(_ChangedPrefecture) then) =
      __$ChangedPrefectureCopyWithImpl<$Res>;
  $Res call({String prefecture});
}

/// @nodoc
class __$ChangedPrefectureCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedPrefectureCopyWith<$Res> {
  __$ChangedPrefectureCopyWithImpl(
      _ChangedPrefecture _value, $Res Function(_ChangedPrefecture) _then)
      : super(_value, (v) => _then(v as _ChangedPrefecture));

  @override
  _ChangedPrefecture get _value => super._value as _ChangedPrefecture;

  @override
  $Res call({
    Object prefecture = freezed,
  }) {
    return _then(_ChangedPrefecture(
      prefecture == freezed ? _value.prefecture : prefecture as String,
    ));
  }
}

/// @nodoc
class _$_ChangedPrefecture implements _ChangedPrefecture {
  const _$_ChangedPrefecture(this.prefecture) : assert(prefecture != null);

  @override
  final String prefecture;

  @override
  String toString() {
    return 'UpdateAddressInfoActorEvent.changedPrefecture(prefecture: $prefecture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedPrefecture &&
            (identical(other.prefecture, prefecture) ||
                const DeepCollectionEquality()
                    .equals(other.prefecture, prefecture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prefecture);

  @JsonKey(ignore: true)
  @override
  _$ChangedPrefectureCopyWith<_ChangedPrefecture> get copyWith =>
      __$ChangedPrefectureCopyWithImpl<_ChangedPrefecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPrefecture(prefecture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPrefecture != null) {
      return changedPrefecture(prefecture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPrefecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPrefecture != null) {
      return changedPrefecture(this);
    }
    return orElse();
  }
}

abstract class _ChangedPrefecture implements UpdateAddressInfoActorEvent {
  const factory _ChangedPrefecture(String prefecture) = _$_ChangedPrefecture;

  String get prefecture;
  @JsonKey(ignore: true)
  _$ChangedPrefectureCopyWith<_ChangedPrefecture> get copyWith;
}

/// @nodoc
abstract class _$ChangedCityCopyWith<$Res> {
  factory _$ChangedCityCopyWith(
          _ChangedCity value, $Res Function(_ChangedCity) then) =
      __$ChangedCityCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class __$ChangedCityCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedCityCopyWith<$Res> {
  __$ChangedCityCopyWithImpl(
      _ChangedCity _value, $Res Function(_ChangedCity) _then)
      : super(_value, (v) => _then(v as _ChangedCity));

  @override
  _ChangedCity get _value => super._value as _ChangedCity;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_ChangedCity(
      city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$_ChangedCity implements _ChangedCity {
  const _$_ChangedCity(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'UpdateAddressInfoActorEvent.changedCity(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$ChangedCityCopyWith<_ChangedCity> get copyWith =>
      __$ChangedCityCopyWithImpl<_ChangedCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedCity(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCity != null) {
      return changedCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedCity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCity != null) {
      return changedCity(this);
    }
    return orElse();
  }
}

abstract class _ChangedCity implements UpdateAddressInfoActorEvent {
  const factory _ChangedCity(String city) = _$_ChangedCity;

  String get city;
  @JsonKey(ignore: true)
  _$ChangedCityCopyWith<_ChangedCity> get copyWith;
}

/// @nodoc
abstract class _$ChangedAddressCopyWith<$Res> {
  factory _$ChangedAddressCopyWith(
          _ChangedAddress value, $Res Function(_ChangedAddress) then) =
      __$ChangedAddressCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$ChangedAddressCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedAddressCopyWith<$Res> {
  __$ChangedAddressCopyWithImpl(
      _ChangedAddress _value, $Res Function(_ChangedAddress) _then)
      : super(_value, (v) => _then(v as _ChangedAddress));

  @override
  _ChangedAddress get _value => super._value as _ChangedAddress;

  @override
  $Res call({
    Object address = freezed,
  }) {
    return _then(_ChangedAddress(
      address == freezed ? _value.address : address as String,
    ));
  }
}

/// @nodoc
class _$_ChangedAddress implements _ChangedAddress {
  const _$_ChangedAddress(this.address) : assert(address != null);

  @override
  final String address;

  @override
  String toString() {
    return 'UpdateAddressInfoActorEvent.changedAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedAddress &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$ChangedAddressCopyWith<_ChangedAddress> get copyWith =>
      __$ChangedAddressCopyWithImpl<_ChangedAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedAddress != null) {
      return changedAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedAddress != null) {
      return changedAddress(this);
    }
    return orElse();
  }
}

abstract class _ChangedAddress implements UpdateAddressInfoActorEvent {
  const factory _ChangedAddress(String address) = _$_ChangedAddress;

  String get address;
  @JsonKey(ignore: true)
  _$ChangedAddressCopyWith<_ChangedAddress> get copyWith;
}

/// @nodoc
abstract class _$ChangedPhoneCopyWith<$Res> {
  factory _$ChangedPhoneCopyWith(
          _ChangedPhone value, $Res Function(_ChangedPhone) then) =
      __$ChangedPhoneCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$ChangedPhoneCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements _$ChangedPhoneCopyWith<$Res> {
  __$ChangedPhoneCopyWithImpl(
      _ChangedPhone _value, $Res Function(_ChangedPhone) _then)
      : super(_value, (v) => _then(v as _ChangedPhone));

  @override
  _ChangedPhone get _value => super._value as _ChangedPhone;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(_ChangedPhone(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$_ChangedPhone implements _ChangedPhone {
  const _$_ChangedPhone(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'UpdateAddressInfoActorEvent.changedPhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedPhone &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$ChangedPhoneCopyWith<_ChangedPhone> get copyWith =>
      __$ChangedPhoneCopyWithImpl<_ChangedPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPhone != null) {
      return changedPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return changedPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
    TResult setInitialState(_SetInitialState value),
    TResult save(_Save value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPhone != null) {
      return changedPhone(this);
    }
    return orElse();
  }
}

abstract class _ChangedPhone implements UpdateAddressInfoActorEvent {
  const factory _ChangedPhone(String phone) = _$_ChangedPhone;

  String get phone;
  @JsonKey(ignore: true)
  _$ChangedPhoneCopyWith<_ChangedPhone> get copyWith;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({PersonalInfo info});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_SetInitialState(
      info == freezed ? _value.info : info as PersonalInfo,
    ));
  }
}

/// @nodoc
class _$_SetInitialState implements _SetInitialState {
  const _$_SetInitialState(this.info) : assert(info != null);

  @override
  final PersonalInfo info;

  @override
  String toString() {
    return 'UpdateAddressInfoActorEvent.setInitialState(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
    TResult save(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setInitialState != null) {
      return setInitialState(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
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

abstract class _SetInitialState implements UpdateAddressInfoActorEvent {
  const factory _SetInitialState(PersonalInfo info) = _$_SetInitialState;

  PersonalInfo get info;
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
    extends _$UpdateAddressInfoActorEventCopyWithImpl<$Res>
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
    return 'UpdateAddressInfoActorEvent.save()';
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
    @required TResult changedPostalCode(String code),
    @required TResult changedPrefecture(String prefecture),
    @required TResult changedCity(String city),
    @required TResult changedAddress(String address),
    @required TResult changedPhone(String phone),
    @required TResult setInitialState(PersonalInfo info),
    @required TResult save(),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPostalCode(String code),
    TResult changedPrefecture(String prefecture),
    TResult changedCity(String city),
    TResult changedAddress(String address),
    TResult changedPhone(String phone),
    TResult setInitialState(PersonalInfo info),
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
    @required TResult changedPostalCode(_ChangedPostalCode value),
    @required TResult changedPrefecture(_ChangedPrefecture value),
    @required TResult changedCity(_ChangedCity value),
    @required TResult changedAddress(_ChangedAddress value),
    @required TResult changedPhone(_ChangedPhone value),
    @required TResult setInitialState(_SetInitialState value),
    @required TResult save(_Save value),
  }) {
    assert(changedPostalCode != null);
    assert(changedPrefecture != null);
    assert(changedCity != null);
    assert(changedAddress != null);
    assert(changedPhone != null);
    assert(setInitialState != null);
    assert(save != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPostalCode(_ChangedPostalCode value),
    TResult changedPrefecture(_ChangedPrefecture value),
    TResult changedCity(_ChangedCity value),
    TResult changedAddress(_ChangedAddress value),
    TResult changedPhone(_ChangedPhone value),
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

abstract class _Save implements UpdateAddressInfoActorEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
class _$UpdateAddressInfoActorStateTearOff {
  const _$UpdateAddressInfoActorStateTearOff();

// ignore: unused_element
  _UpdateAddressInfoActorState call(
      {@required String postalCode,
      @required String prefecture,
      @required String city,
      @required String address,
      @required String phone,
      @required bool isSubmitting,
      @required Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) {
    return _UpdateAddressInfoActorState(
      postalCode: postalCode,
      prefecture: prefecture,
      city: city,
      address: address,
      phone: phone,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateAddressInfoActorState = _$UpdateAddressInfoActorStateTearOff();

/// @nodoc
mixin _$UpdateAddressInfoActorState {
  String get postalCode;
  String get prefecture;
  String get city;
  String get address;
  String get phone;
  bool get isSubmitting;
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UpdateAddressInfoActorStateCopyWith<UpdateAddressInfoActorState>
      get copyWith;
}

/// @nodoc
abstract class $UpdateAddressInfoActorStateCopyWith<$Res> {
  factory $UpdateAddressInfoActorStateCopyWith(
          UpdateAddressInfoActorState value,
          $Res Function(UpdateAddressInfoActorState) then) =
      _$UpdateAddressInfoActorStateCopyWithImpl<$Res>;
  $Res call(
      {String postalCode,
      String prefecture,
      String city,
      String address,
      String phone,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateAddressInfoActorStateCopyWithImpl<$Res>
    implements $UpdateAddressInfoActorStateCopyWith<$Res> {
  _$UpdateAddressInfoActorStateCopyWithImpl(this._value, this._then);

  final UpdateAddressInfoActorState _value;
  // ignore: unused_field
  final $Res Function(UpdateAddressInfoActorState) _then;

  @override
  $Res call({
    Object postalCode = freezed,
    Object prefecture = freezed,
    Object city = freezed,
    Object address = freezed,
    Object phone = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
      prefecture:
          prefecture == freezed ? _value.prefecture : prefecture as String,
      city: city == freezed ? _value.city : city as String,
      address: address == freezed ? _value.address : address as String,
      phone: phone == freezed ? _value.phone : phone as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateAddressInfoActorStateCopyWith<$Res>
    implements $UpdateAddressInfoActorStateCopyWith<$Res> {
  factory _$UpdateAddressInfoActorStateCopyWith(
          _UpdateAddressInfoActorState value,
          $Res Function(_UpdateAddressInfoActorState) then) =
      __$UpdateAddressInfoActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String postalCode,
      String prefecture,
      String city,
      String address,
      String phone,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$UpdateAddressInfoActorStateCopyWithImpl<$Res>
    extends _$UpdateAddressInfoActorStateCopyWithImpl<$Res>
    implements _$UpdateAddressInfoActorStateCopyWith<$Res> {
  __$UpdateAddressInfoActorStateCopyWithImpl(
      _UpdateAddressInfoActorState _value,
      $Res Function(_UpdateAddressInfoActorState) _then)
      : super(_value, (v) => _then(v as _UpdateAddressInfoActorState));

  @override
  _UpdateAddressInfoActorState get _value =>
      super._value as _UpdateAddressInfoActorState;

  @override
  $Res call({
    Object postalCode = freezed,
    Object prefecture = freezed,
    Object city = freezed,
    Object address = freezed,
    Object phone = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateAddressInfoActorState(
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
      prefecture:
          prefecture == freezed ? _value.prefecture : prefecture as String,
      city: city == freezed ? _value.city : city as String,
      address: address == freezed ? _value.address : address as String,
      phone: phone == freezed ? _value.phone : phone as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UpdateAddressInfoActorState implements _UpdateAddressInfoActorState {
  const _$_UpdateAddressInfoActorState(
      {@required this.postalCode,
      @required this.prefecture,
      @required this.city,
      @required this.address,
      @required this.phone,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(postalCode != null),
        assert(prefecture != null),
        assert(city != null),
        assert(address != null),
        assert(phone != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String postalCode;
  @override
  final String prefecture;
  @override
  final String city;
  @override
  final String address;
  @override
  final String phone;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateAddressInfoActorState(postalCode: $postalCode, prefecture: $prefecture, city: $city, address: $address, phone: $phone, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAddressInfoActorState &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.prefecture, prefecture) ||
                const DeepCollectionEquality()
                    .equals(other.prefecture, prefecture)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
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
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(prefecture) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateAddressInfoActorStateCopyWith<_UpdateAddressInfoActorState>
      get copyWith => __$UpdateAddressInfoActorStateCopyWithImpl<
          _UpdateAddressInfoActorState>(this, _$identity);
}

abstract class _UpdateAddressInfoActorState
    implements UpdateAddressInfoActorState {
  const factory _UpdateAddressInfoActorState(
          {@required
              String postalCode,
          @required
              String prefecture,
          @required
              String city,
          @required
              String address,
          @required
              String phone,
          @required
              bool isSubmitting,
          @required
              Option<Either<ApiFailure, Unit>> authFailureOrSuccessOption}) =
      _$_UpdateAddressInfoActorState;

  @override
  String get postalCode;
  @override
  String get prefecture;
  @override
  String get city;
  @override
  String get address;
  @override
  String get phone;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdateAddressInfoActorStateCopyWith<_UpdateAddressInfoActorState>
      get copyWith;
}
