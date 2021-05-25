// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'topup_via_stripe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopupViaStripeEventTearOff {
  const _$TopupViaStripeEventTearOff();

  _ChangeName changeName(String name) {
    return _ChangeName(
      name,
    );
  }

  _ChangeCardNumber changeCardNumber(String number) {
    return _ChangeCardNumber(
      number,
    );
  }

  _ChangeCvc changeCvc(String cvc) {
    return _ChangeCvc(
      cvc,
    );
  }

  _ChangeExpYear changeExpYear(String year) {
    return _ChangeExpYear(
      year,
    );
  }

  _ChangeAmount changeAmount(String amount) {
    return _ChangeAmount(
      amount,
    );
  }

  _ChangeSaveCard changeSaveCard() {
    return const _ChangeSaveCard();
  }

  _TopUp topup() {
    return const _TopUp();
  }
}

/// @nodoc
const $TopupViaStripeEvent = _$TopupViaStripeEventTearOff();

/// @nodoc
mixin _$TopupViaStripeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
    TResult Function()? topup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopupViaStripeEventCopyWith<$Res> {
  factory $TopupViaStripeEventCopyWith(
          TopupViaStripeEvent value, $Res Function(TopupViaStripeEvent) then) =
      _$TopupViaStripeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopupViaStripeEventCopyWithImpl<$Res>
    implements $TopupViaStripeEventCopyWith<$Res> {
  _$TopupViaStripeEventCopyWithImpl(this._value, this._then);

  final TopupViaStripeEvent _value;
  // ignore: unused_field
  final $Res Function(TopupViaStripeEvent) _then;
}

/// @nodoc
abstract class _$ChangeNameCopyWith<$Res> {
  factory _$ChangeNameCopyWith(
          _ChangeName value, $Res Function(_ChangeName) then) =
      __$ChangeNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeNameCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res>
    implements _$ChangeNameCopyWith<$Res> {
  __$ChangeNameCopyWithImpl(
      _ChangeName _value, $Res Function(_ChangeName) _then)
      : super(_value, (v) => _then(v as _ChangeName));

  @override
  _ChangeName get _value => super._value as _ChangeName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ChangeName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeName implements _ChangeName {
  const _$_ChangeName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'TopupViaStripeEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      __$ChangeNameCopyWithImpl<_ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements TopupViaStripeEvent {
  const factory _ChangeName(String name) = _$_ChangeName;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeCardNumberCopyWith<$Res> {
  factory _$ChangeCardNumberCopyWith(
          _ChangeCardNumber value, $Res Function(_ChangeCardNumber) then) =
      __$ChangeCardNumberCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$ChangeCardNumberCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res>
    implements _$ChangeCardNumberCopyWith<$Res> {
  __$ChangeCardNumberCopyWithImpl(
      _ChangeCardNumber _value, $Res Function(_ChangeCardNumber) _then)
      : super(_value, (v) => _then(v as _ChangeCardNumber));

  @override
  _ChangeCardNumber get _value => super._value as _ChangeCardNumber;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_ChangeCardNumber(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCardNumber implements _ChangeCardNumber {
  const _$_ChangeCardNumber(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'TopupViaStripeEvent.changeCardNumber(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCardNumber &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$ChangeCardNumberCopyWith<_ChangeCardNumber> get copyWith =>
      __$ChangeCardNumberCopyWithImpl<_ChangeCardNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return changeCardNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeCardNumber != null) {
      return changeCardNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeCardNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeCardNumber != null) {
      return changeCardNumber(this);
    }
    return orElse();
  }
}

abstract class _ChangeCardNumber implements TopupViaStripeEvent {
  const factory _ChangeCardNumber(String number) = _$_ChangeCardNumber;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCardNumberCopyWith<_ChangeCardNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeCvcCopyWith<$Res> {
  factory _$ChangeCvcCopyWith(
          _ChangeCvc value, $Res Function(_ChangeCvc) then) =
      __$ChangeCvcCopyWithImpl<$Res>;
  $Res call({String cvc});
}

/// @nodoc
class __$ChangeCvcCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res>
    implements _$ChangeCvcCopyWith<$Res> {
  __$ChangeCvcCopyWithImpl(_ChangeCvc _value, $Res Function(_ChangeCvc) _then)
      : super(_value, (v) => _then(v as _ChangeCvc));

  @override
  _ChangeCvc get _value => super._value as _ChangeCvc;

  @override
  $Res call({
    Object? cvc = freezed,
  }) {
    return _then(_ChangeCvc(
      cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCvc implements _ChangeCvc {
  const _$_ChangeCvc(this.cvc);

  @override
  final String cvc;

  @override
  String toString() {
    return 'TopupViaStripeEvent.changeCvc(cvc: $cvc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCvc &&
            (identical(other.cvc, cvc) ||
                const DeepCollectionEquality().equals(other.cvc, cvc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cvc);

  @JsonKey(ignore: true)
  @override
  _$ChangeCvcCopyWith<_ChangeCvc> get copyWith =>
      __$ChangeCvcCopyWithImpl<_ChangeCvc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return changeCvc(cvc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeCvc != null) {
      return changeCvc(cvc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeCvc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeCvc != null) {
      return changeCvc(this);
    }
    return orElse();
  }
}

abstract class _ChangeCvc implements TopupViaStripeEvent {
  const factory _ChangeCvc(String cvc) = _$_ChangeCvc;

  String get cvc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCvcCopyWith<_ChangeCvc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeExpYearCopyWith<$Res> {
  factory _$ChangeExpYearCopyWith(
          _ChangeExpYear value, $Res Function(_ChangeExpYear) then) =
      __$ChangeExpYearCopyWithImpl<$Res>;
  $Res call({String year});
}

/// @nodoc
class __$ChangeExpYearCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res>
    implements _$ChangeExpYearCopyWith<$Res> {
  __$ChangeExpYearCopyWithImpl(
      _ChangeExpYear _value, $Res Function(_ChangeExpYear) _then)
      : super(_value, (v) => _then(v as _ChangeExpYear));

  @override
  _ChangeExpYear get _value => super._value as _ChangeExpYear;

  @override
  $Res call({
    Object? year = freezed,
  }) {
    return _then(_ChangeExpYear(
      year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeExpYear implements _ChangeExpYear {
  const _$_ChangeExpYear(this.year);

  @override
  final String year;

  @override
  String toString() {
    return 'TopupViaStripeEvent.changeExpYear(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeExpYear &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$ChangeExpYearCopyWith<_ChangeExpYear> get copyWith =>
      __$ChangeExpYearCopyWithImpl<_ChangeExpYear>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return changeExpYear(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeExpYear != null) {
      return changeExpYear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeExpYear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeExpYear != null) {
      return changeExpYear(this);
    }
    return orElse();
  }
}

abstract class _ChangeExpYear implements TopupViaStripeEvent {
  const factory _ChangeExpYear(String year) = _$_ChangeExpYear;

  String get year => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeExpYearCopyWith<_ChangeExpYear> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$TopupViaStripeEventCopyWithImpl<$Res>
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
    return 'TopupViaStripeEvent.changeAmount(amount: $amount)';
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
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmount implements TopupViaStripeEvent {
  const factory _ChangeAmount(String amount) = _$_ChangeAmount;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAmountCopyWith<_ChangeAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSaveCardCopyWith<$Res> {
  factory _$ChangeSaveCardCopyWith(
          _ChangeSaveCard value, $Res Function(_ChangeSaveCard) then) =
      __$ChangeSaveCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeSaveCardCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res>
    implements _$ChangeSaveCardCopyWith<$Res> {
  __$ChangeSaveCardCopyWithImpl(
      _ChangeSaveCard _value, $Res Function(_ChangeSaveCard) _then)
      : super(_value, (v) => _then(v as _ChangeSaveCard));

  @override
  _ChangeSaveCard get _value => super._value as _ChangeSaveCard;
}

/// @nodoc

class _$_ChangeSaveCard implements _ChangeSaveCard {
  const _$_ChangeSaveCard();

  @override
  String toString() {
    return 'TopupViaStripeEvent.changeSaveCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeSaveCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return changeSaveCard();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
    TResult Function()? topup,
    required TResult orElse(),
  }) {
    if (changeSaveCard != null) {
      return changeSaveCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeSaveCard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeSaveCard != null) {
      return changeSaveCard(this);
    }
    return orElse();
  }
}

abstract class _ChangeSaveCard implements TopupViaStripeEvent {
  const factory _ChangeSaveCard() = _$_ChangeSaveCard;
}

/// @nodoc
abstract class _$TopUpCopyWith<$Res> {
  factory _$TopUpCopyWith(_TopUp value, $Res Function(_TopUp) then) =
      __$TopUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$TopUpCopyWithImpl<$Res> extends _$TopupViaStripeEventCopyWithImpl<$Res>
    implements _$TopUpCopyWith<$Res> {
  __$TopUpCopyWithImpl(_TopUp _value, $Res Function(_TopUp) _then)
      : super(_value, (v) => _then(v as _TopUp));

  @override
  _TopUp get _value => super._value as _TopUp;
}

/// @nodoc

class _$_TopUp implements _TopUp {
  const _$_TopUp();

  @override
  String toString() {
    return 'TopupViaStripeEvent.topup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TopUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function() changeSaveCard,
    required TResult Function() topup,
  }) {
    return topup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function()? changeSaveCard,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeCardNumber value) changeCardNumber,
    required TResult Function(_ChangeCvc value) changeCvc,
    required TResult Function(_ChangeExpYear value) changeExpYear,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return topup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (topup != null) {
      return topup(this);
    }
    return orElse();
  }
}

abstract class _TopUp implements TopupViaStripeEvent {
  const factory _TopUp() = _$_TopUp;
}

/// @nodoc
class _$TopupViaStripeStateTearOff {
  const _$TopupViaStripeStateTearOff();

  _TopupViaStripeState call(
      {required String name,
      required String cardNumber,
      required String cvc,
      required String expYear,
      required String amount,
      required bool saveCard,
      required bool isSubmitting,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _TopupViaStripeState(
      name: name,
      cardNumber: cardNumber,
      cvc: cvc,
      expYear: expYear,
      amount: amount,
      saveCard: saveCard,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TopupViaStripeState = _$TopupViaStripeStateTearOff();

/// @nodoc
mixin _$TopupViaStripeState {
  String get name => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cvc => throw _privateConstructorUsedError;
  String get expYear => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool get saveCard => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopupViaStripeStateCopyWith<TopupViaStripeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopupViaStripeStateCopyWith<$Res> {
  factory $TopupViaStripeStateCopyWith(
          TopupViaStripeState value, $Res Function(TopupViaStripeState) then) =
      _$TopupViaStripeStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String cardNumber,
      String cvc,
      String expYear,
      String amount,
      bool saveCard,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$TopupViaStripeStateCopyWithImpl<$Res>
    implements $TopupViaStripeStateCopyWith<$Res> {
  _$TopupViaStripeStateCopyWithImpl(this._value, this._then);

  final TopupViaStripeState _value;
  // ignore: unused_field
  final $Res Function(TopupViaStripeState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cardNumber = freezed,
    Object? cvc = freezed,
    Object? expYear = freezed,
    Object? amount = freezed,
    Object? saveCard = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: expYear == freezed
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      saveCard: saveCard == freezed
          ? _value.saveCard
          : saveCard // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$TopupViaStripeStateCopyWith<$Res>
    implements $TopupViaStripeStateCopyWith<$Res> {
  factory _$TopupViaStripeStateCopyWith(_TopupViaStripeState value,
          $Res Function(_TopupViaStripeState) then) =
      __$TopupViaStripeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String cardNumber,
      String cvc,
      String expYear,
      String amount,
      bool saveCard,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$TopupViaStripeStateCopyWithImpl<$Res>
    extends _$TopupViaStripeStateCopyWithImpl<$Res>
    implements _$TopupViaStripeStateCopyWith<$Res> {
  __$TopupViaStripeStateCopyWithImpl(
      _TopupViaStripeState _value, $Res Function(_TopupViaStripeState) _then)
      : super(_value, (v) => _then(v as _TopupViaStripeState));

  @override
  _TopupViaStripeState get _value => super._value as _TopupViaStripeState;

  @override
  $Res call({
    Object? name = freezed,
    Object? cardNumber = freezed,
    Object? cvc = freezed,
    Object? expYear = freezed,
    Object? amount = freezed,
    Object? saveCard = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_TopupViaStripeState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: cvc == freezed
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: expYear == freezed
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      saveCard: saveCard == freezed
          ? _value.saveCard
          : saveCard // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_TopupViaStripeState implements _TopupViaStripeState {
  const _$_TopupViaStripeState(
      {required this.name,
      required this.cardNumber,
      required this.cvc,
      required this.expYear,
      required this.amount,
      required this.saveCard,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final String name;
  @override
  final String cardNumber;
  @override
  final String cvc;
  @override
  final String expYear;
  @override
  final String amount;
  @override
  final bool saveCard;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TopupViaStripeState(name: $name, cardNumber: $cardNumber, cvc: $cvc, expYear: $expYear, amount: $amount, saveCard: $saveCard, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopupViaStripeState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.cvc, cvc) ||
                const DeepCollectionEquality().equals(other.cvc, cvc)) &&
            (identical(other.expYear, expYear) ||
                const DeepCollectionEquality()
                    .equals(other.expYear, expYear)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.saveCard, saveCard) ||
                const DeepCollectionEquality()
                    .equals(other.saveCard, saveCard)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(cvc) ^
      const DeepCollectionEquality().hash(expYear) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(saveCard) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TopupViaStripeStateCopyWith<_TopupViaStripeState> get copyWith =>
      __$TopupViaStripeStateCopyWithImpl<_TopupViaStripeState>(
          this, _$identity);
}

abstract class _TopupViaStripeState implements TopupViaStripeState {
  const factory _TopupViaStripeState(
          {required String name,
          required String cardNumber,
          required String cvc,
          required String expYear,
          required String amount,
          required bool saveCard,
          required bool isSubmitting,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_TopupViaStripeState;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get cardNumber => throw _privateConstructorUsedError;
  @override
  String get cvc => throw _privateConstructorUsedError;
  @override
  String get expYear => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  bool get saveCard => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopupViaStripeStateCopyWith<_TopupViaStripeState> get copyWith =>
      throw _privateConstructorUsedError;
}
