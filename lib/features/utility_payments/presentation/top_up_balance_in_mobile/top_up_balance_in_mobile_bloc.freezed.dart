// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'top_up_balance_in_mobile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopUpBalanceInMobileEventTearOff {
  const _$TopUpBalanceInMobileEventTearOff();

  _ChangePhoneNumber changePhoneNumber(String number) {
    return _ChangePhoneNumber(
      number,
    );
  }

  _ChangePhoneNumberViaContact changePhoneNumberViaContact(String number) {
    return _ChangePhoneNumberViaContact(
      number,
    );
  }

  _ChangeAmount changeAmount(String amount) {
    return _ChangeAmount(
      amount,
    );
  }

  _ChangeconvertedJpyAmount changeconvertedJpyAmount(String amount) {
    return _ChangeconvertedJpyAmount(
      amount,
    );
  }

  _Validate validate() {
    return const _Validate();
  }

  _Topup topup() {
    return const _Topup();
  }
}

/// @nodoc
const $TopUpBalanceInMobileEvent = _$TopUpBalanceInMobileEventTearOff();

/// @nodoc
mixin _$TopUpBalanceInMobileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpBalanceInMobileEventCopyWith<$Res> {
  factory $TopUpBalanceInMobileEventCopyWith(TopUpBalanceInMobileEvent value,
          $Res Function(TopUpBalanceInMobileEvent) then) =
      _$TopUpBalanceInMobileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements $TopUpBalanceInMobileEventCopyWith<$Res> {
  _$TopUpBalanceInMobileEventCopyWithImpl(this._value, this._then);

  final TopUpBalanceInMobileEvent _value;
  // ignore: unused_field
  final $Res Function(TopUpBalanceInMobileEvent) _then;
}

/// @nodoc
abstract class _$ChangePhoneNumberCopyWith<$Res> {
  factory _$ChangePhoneNumberCopyWith(
          _ChangePhoneNumber value, $Res Function(_ChangePhoneNumber) then) =
      __$ChangePhoneNumberCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$ChangePhoneNumberCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangePhoneNumberCopyWith<$Res> {
  __$ChangePhoneNumberCopyWithImpl(
      _ChangePhoneNumber _value, $Res Function(_ChangePhoneNumber) _then)
      : super(_value, (v) => _then(v as _ChangePhoneNumber));

  @override
  _ChangePhoneNumber get _value => super._value as _ChangePhoneNumber;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_ChangePhoneNumber(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePhoneNumber implements _ChangePhoneNumber {
  const _$_ChangePhoneNumber(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changePhoneNumber(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePhoneNumber &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneNumberCopyWith<_ChangePhoneNumber> get copyWith =>
      __$ChangePhoneNumberCopyWithImpl<_ChangePhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) {
    return changePhoneNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) {
    return changePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _ChangePhoneNumber implements TopUpBalanceInMobileEvent {
  const factory _ChangePhoneNumber(String number) = _$_ChangePhoneNumber;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePhoneNumberCopyWith<_ChangePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePhoneNumberViaContactCopyWith<$Res> {
  factory _$ChangePhoneNumberViaContactCopyWith(
          _ChangePhoneNumberViaContact value,
          $Res Function(_ChangePhoneNumberViaContact) then) =
      __$ChangePhoneNumberViaContactCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$ChangePhoneNumberViaContactCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangePhoneNumberViaContactCopyWith<$Res> {
  __$ChangePhoneNumberViaContactCopyWithImpl(
      _ChangePhoneNumberViaContact _value,
      $Res Function(_ChangePhoneNumberViaContact) _then)
      : super(_value, (v) => _then(v as _ChangePhoneNumberViaContact));

  @override
  _ChangePhoneNumberViaContact get _value =>
      super._value as _ChangePhoneNumberViaContact;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_ChangePhoneNumberViaContact(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePhoneNumberViaContact implements _ChangePhoneNumberViaContact {
  const _$_ChangePhoneNumberViaContact(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changePhoneNumberViaContact(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePhoneNumberViaContact &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneNumberViaContactCopyWith<_ChangePhoneNumberViaContact>
      get copyWith => __$ChangePhoneNumberViaContactCopyWithImpl<
          _ChangePhoneNumberViaContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) {
    return changePhoneNumberViaContact(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changePhoneNumberViaContact != null) {
      return changePhoneNumberViaContact(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) {
    return changePhoneNumberViaContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) {
    if (changePhoneNumberViaContact != null) {
      return changePhoneNumberViaContact(this);
    }
    return orElse();
  }
}

abstract class _ChangePhoneNumberViaContact
    implements TopUpBalanceInMobileEvent {
  const factory _ChangePhoneNumberViaContact(String number) =
      _$_ChangePhoneNumberViaContact;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePhoneNumberViaContactCopyWith<_ChangePhoneNumberViaContact>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAmountCopyWith<$Res> {
  factory _$ChangeAmountCopyWith(
          _ChangeAmount value, $Res Function(_ChangeAmount) then) =
      __$ChangeAmountCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class __$ChangeAmountCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangeAmountCopyWith<$Res> {
  __$ChangeAmountCopyWithImpl(
      _ChangeAmount _value, $Res Function(_ChangeAmount) _then)
      : super(_value, (v) => _then(v as _ChangeAmount));

  @override
  _ChangeAmount get _value => super._value as _ChangeAmount;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_ChangeAmount(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeAmount implements _ChangeAmount {
  const _$_ChangeAmount(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAmount &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$ChangeAmountCopyWith<_ChangeAmount> get copyWith =>
      __$ChangeAmountCopyWithImpl<_ChangeAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmount implements TopUpBalanceInMobileEvent {
  const factory _ChangeAmount(String amount) = _$_ChangeAmount;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAmountCopyWith<_ChangeAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeconvertedJpyAmountCopyWith<$Res> {
  factory _$ChangeconvertedJpyAmountCopyWith(_ChangeconvertedJpyAmount value,
          $Res Function(_ChangeconvertedJpyAmount) then) =
      __$ChangeconvertedJpyAmountCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class __$ChangeconvertedJpyAmountCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ChangeconvertedJpyAmountCopyWith<$Res> {
  __$ChangeconvertedJpyAmountCopyWithImpl(_ChangeconvertedJpyAmount _value,
      $Res Function(_ChangeconvertedJpyAmount) _then)
      : super(_value, (v) => _then(v as _ChangeconvertedJpyAmount));

  @override
  _ChangeconvertedJpyAmount get _value =>
      super._value as _ChangeconvertedJpyAmount;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_ChangeconvertedJpyAmount(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeconvertedJpyAmount implements _ChangeconvertedJpyAmount {
  const _$_ChangeconvertedJpyAmount(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.changeconvertedJpyAmount(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeconvertedJpyAmount &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$ChangeconvertedJpyAmountCopyWith<_ChangeconvertedJpyAmount> get copyWith =>
      __$ChangeconvertedJpyAmountCopyWithImpl<_ChangeconvertedJpyAmount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) {
    return changeconvertedJpyAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeconvertedJpyAmount != null) {
      return changeconvertedJpyAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) {
    return changeconvertedJpyAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) {
    if (changeconvertedJpyAmount != null) {
      return changeconvertedJpyAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeconvertedJpyAmount implements TopUpBalanceInMobileEvent {
  const factory _ChangeconvertedJpyAmount(String amount) =
      _$_ChangeconvertedJpyAmount;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeconvertedJpyAmountCopyWith<_ChangeconvertedJpyAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidateCopyWith<$Res> {
  factory _$ValidateCopyWith(_Validate value, $Res Function(_Validate) then) =
      __$ValidateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ValidateCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$ValidateCopyWith<$Res> {
  __$ValidateCopyWithImpl(_Validate _value, $Res Function(_Validate) _then)
      : super(_value, (v) => _then(v as _Validate));

  @override
  _Validate get _value => super._value as _Validate;
}

/// @nodoc

class _$_Validate implements _Validate {
  const _$_Validate();

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.validate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Validate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) {
    return validate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _Validate implements TopUpBalanceInMobileEvent {
  const factory _Validate() = _$_Validate;
}

/// @nodoc
abstract class _$TopupCopyWith<$Res> {
  factory _$TopupCopyWith(_Topup value, $Res Function(_Topup) then) =
      __$TopupCopyWithImpl<$Res>;
}

/// @nodoc
class __$TopupCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileEventCopyWithImpl<$Res>
    implements _$TopupCopyWith<$Res> {
  __$TopupCopyWithImpl(_Topup _value, $Res Function(_Topup) _then)
      : super(_value, (v) => _then(v as _Topup));

  @override
  _Topup get _value => super._value as _Topup;
}

/// @nodoc

class _$_Topup implements _Topup {
  const _$_Topup();

  @override
  String toString() {
    return 'TopUpBalanceInMobileEvent.topup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Topup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) changePhoneNumber,
    required TResult Function(String number) changePhoneNumberViaContact,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeconvertedJpyAmount,
    required TResult Function() validate,
    required TResult Function() topup,
  }) {
    return topup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? changePhoneNumber,
    TResult Function(String number)? changePhoneNumberViaContact,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeconvertedJpyAmount,
    TResult Function()? validate,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (topup != null) {
      return topup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberViaContact value)
        changePhoneNumberViaContact,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeconvertedJpyAmount value)
        changeconvertedJpyAmount,
    required TResult Function(_Validate value) validate,
    required TResult Function(_Topup value) topup,
  }) {
    return topup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberViaContact value)?
        changePhoneNumberViaContact,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeconvertedJpyAmount value)? changeconvertedJpyAmount,
    TResult Function(_Validate value)? validate,
    TResult Function(_Topup value)? topup,
    required TResult orElse(),
  }) {
    if (topup != null) {
      return topup(this);
    }
    return orElse();
  }
}

abstract class _Topup implements TopUpBalanceInMobileEvent {
  const factory _Topup() = _$_Topup;
}

/// @nodoc
class _$TopUpBalanceInMobileStateTearOff {
  const _$TopUpBalanceInMobileStateTearOff();

  _TopUpBalanceInMobileState call(
      {required Key key,
      required String number,
      required String type,
      required String amount,
      required String convertedJpyAmount,
      required bool isSubmitting,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _TopUpBalanceInMobileState(
      key: key,
      number: number,
      type: type,
      amount: amount,
      convertedJpyAmount: convertedJpyAmount,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TopUpBalanceInMobileState = _$TopUpBalanceInMobileStateTearOff();

/// @nodoc
mixin _$TopUpBalanceInMobileState {
  Key get key => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get convertedJpyAmount => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopUpBalanceInMobileStateCopyWith<TopUpBalanceInMobileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpBalanceInMobileStateCopyWith<$Res> {
  factory $TopUpBalanceInMobileStateCopyWith(TopUpBalanceInMobileState value,
          $Res Function(TopUpBalanceInMobileState) then) =
      _$TopUpBalanceInMobileStateCopyWithImpl<$Res>;
  $Res call(
      {Key key,
      String number,
      String type,
      String amount,
      String convertedJpyAmount,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$TopUpBalanceInMobileStateCopyWithImpl<$Res>
    implements $TopUpBalanceInMobileStateCopyWith<$Res> {
  _$TopUpBalanceInMobileStateCopyWithImpl(this._value, this._then);

  final TopUpBalanceInMobileState _value;
  // ignore: unused_field
  final $Res Function(TopUpBalanceInMobileState) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? number = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? convertedJpyAmount = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      convertedJpyAmount: convertedJpyAmount == freezed
          ? _value.convertedJpyAmount
          : convertedJpyAmount // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$TopUpBalanceInMobileStateCopyWith<$Res>
    implements $TopUpBalanceInMobileStateCopyWith<$Res> {
  factory _$TopUpBalanceInMobileStateCopyWith(_TopUpBalanceInMobileState value,
          $Res Function(_TopUpBalanceInMobileState) then) =
      __$TopUpBalanceInMobileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key key,
      String number,
      String type,
      String amount,
      String convertedJpyAmount,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$TopUpBalanceInMobileStateCopyWithImpl<$Res>
    extends _$TopUpBalanceInMobileStateCopyWithImpl<$Res>
    implements _$TopUpBalanceInMobileStateCopyWith<$Res> {
  __$TopUpBalanceInMobileStateCopyWithImpl(_TopUpBalanceInMobileState _value,
      $Res Function(_TopUpBalanceInMobileState) _then)
      : super(_value, (v) => _then(v as _TopUpBalanceInMobileState));

  @override
  _TopUpBalanceInMobileState get _value =>
      super._value as _TopUpBalanceInMobileState;

  @override
  $Res call({
    Object? key = freezed,
    Object? number = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? convertedJpyAmount = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_TopUpBalanceInMobileState(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      convertedJpyAmount: convertedJpyAmount == freezed
          ? _value.convertedJpyAmount
          : convertedJpyAmount // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TopUpBalanceInMobileState implements _TopUpBalanceInMobileState {
  const _$_TopUpBalanceInMobileState(
      {required this.key,
      required this.number,
      required this.type,
      required this.amount,
      required this.convertedJpyAmount,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final Key key;
  @override
  final String number;
  @override
  final String type;
  @override
  final String amount;
  @override
  final String convertedJpyAmount;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TopUpBalanceInMobileState(key: $key, number: $number, type: $type, amount: $amount, convertedJpyAmount: $convertedJpyAmount, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopUpBalanceInMobileState &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.convertedJpyAmount, convertedJpyAmount) ||
                const DeepCollectionEquality()
                    .equals(other.convertedJpyAmount, convertedJpyAmount)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(convertedJpyAmount) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TopUpBalanceInMobileStateCopyWith<_TopUpBalanceInMobileState>
      get copyWith =>
          __$TopUpBalanceInMobileStateCopyWithImpl<_TopUpBalanceInMobileState>(
              this, _$identity);
}

abstract class _TopUpBalanceInMobileState implements TopUpBalanceInMobileState {
  const factory _TopUpBalanceInMobileState(
          {required Key key,
          required String number,
          required String type,
          required String amount,
          required String convertedJpyAmount,
          required bool isSubmitting,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_TopUpBalanceInMobileState;

  @override
  Key get key => throw _privateConstructorUsedError;
  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get convertedJpyAmount => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopUpBalanceInMobileStateCopyWith<_TopUpBalanceInMobileState>
      get copyWith => throw _privateConstructorUsedError;
}
