// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_via_stripe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopupViaStripeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
      _$TopupViaStripeEventCopyWithImpl<$Res, TopupViaStripeEvent>;
}

/// @nodoc
class _$TopupViaStripeEventCopyWithImpl<$Res, $Val extends TopupViaStripeEvent>
    implements $TopupViaStripeEventCopyWith<$Res> {
  _$TopupViaStripeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeNameCopyWith<$Res> {
  factory _$$_ChangeNameCopyWith(
          _$_ChangeName value, $Res Function(_$_ChangeName) then) =
      __$$_ChangeNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ChangeNameCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeName>
    implements _$$_ChangeNameCopyWith<$Res> {
  __$$_ChangeNameCopyWithImpl(
      _$_ChangeName _value, $Res Function(_$_ChangeName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ChangeName(
      null == name
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
        (other.runtimeType == runtimeType &&
            other is _$_ChangeName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeNameCopyWith<_$_ChangeName> get copyWith =>
      __$$_ChangeNameCopyWithImpl<_$_ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
  const factory _ChangeName(final String name) = _$_ChangeName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ChangeNameCopyWith<_$_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCardNumberCopyWith<$Res> {
  factory _$$_ChangeCardNumberCopyWith(
          _$_ChangeCardNumber value, $Res Function(_$_ChangeCardNumber) then) =
      __$$_ChangeCardNumberCopyWithImpl<$Res>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$_ChangeCardNumberCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeCardNumber>
    implements _$$_ChangeCardNumberCopyWith<$Res> {
  __$$_ChangeCardNumberCopyWithImpl(
      _$_ChangeCardNumber _value, $Res Function(_$_ChangeCardNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_ChangeCardNumber(
      null == number
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
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCardNumber &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCardNumberCopyWith<_$_ChangeCardNumber> get copyWith =>
      __$$_ChangeCardNumberCopyWithImpl<_$_ChangeCardNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeCardNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeCardNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeCardNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeCardNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
  const factory _ChangeCardNumber(final String number) = _$_ChangeCardNumber;

  String get number;
  @JsonKey(ignore: true)
  _$$_ChangeCardNumberCopyWith<_$_ChangeCardNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCvcCopyWith<$Res> {
  factory _$$_ChangeCvcCopyWith(
          _$_ChangeCvc value, $Res Function(_$_ChangeCvc) then) =
      __$$_ChangeCvcCopyWithImpl<$Res>;
  @useResult
  $Res call({String cvc});
}

/// @nodoc
class __$$_ChangeCvcCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeCvc>
    implements _$$_ChangeCvcCopyWith<$Res> {
  __$$_ChangeCvcCopyWithImpl(
      _$_ChangeCvc _value, $Res Function(_$_ChangeCvc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvc = null,
  }) {
    return _then(_$_ChangeCvc(
      null == cvc
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
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCvc &&
            (identical(other.cvc, cvc) || other.cvc == cvc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cvc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCvcCopyWith<_$_ChangeCvc> get copyWith =>
      __$$_ChangeCvcCopyWithImpl<_$_ChangeCvc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeCvc(cvc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeCvc?.call(cvc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeCvc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeCvc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
  const factory _ChangeCvc(final String cvc) = _$_ChangeCvc;

  String get cvc;
  @JsonKey(ignore: true)
  _$$_ChangeCvcCopyWith<_$_ChangeCvc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeExpYearCopyWith<$Res> {
  factory _$$_ChangeExpYearCopyWith(
          _$_ChangeExpYear value, $Res Function(_$_ChangeExpYear) then) =
      __$$_ChangeExpYearCopyWithImpl<$Res>;
  @useResult
  $Res call({String year});
}

/// @nodoc
class __$$_ChangeExpYearCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeExpYear>
    implements _$$_ChangeExpYearCopyWith<$Res> {
  __$$_ChangeExpYearCopyWithImpl(
      _$_ChangeExpYear _value, $Res Function(_$_ChangeExpYear) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
  }) {
    return _then(_$_ChangeExpYear(
      null == year
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
        (other.runtimeType == runtimeType &&
            other is _$_ChangeExpYear &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeExpYearCopyWith<_$_ChangeExpYear> get copyWith =>
      __$$_ChangeExpYearCopyWithImpl<_$_ChangeExpYear>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeExpYear(year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeExpYear?.call(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeExpYear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeExpYear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
  const factory _ChangeExpYear(final String year) = _$_ChangeExpYear;

  String get year;
  @JsonKey(ignore: true)
  _$$_ChangeExpYearCopyWith<_$_ChangeExpYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAmountCopyWith<$Res> {
  factory _$$_ChangeAmountCopyWith(
          _$_ChangeAmount value, $Res Function(_$_ChangeAmount) then) =
      __$$_ChangeAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$_ChangeAmountCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeAmount>
    implements _$$_ChangeAmountCopyWith<$Res> {
  __$$_ChangeAmountCopyWithImpl(
      _$_ChangeAmount _value, $Res Function(_$_ChangeAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_ChangeAmount(
      null == amount
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
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAmount &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAmountCopyWith<_$_ChangeAmount> get copyWith =>
      __$$_ChangeAmountCopyWithImpl<_$_ChangeAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
  const factory _ChangeAmount(final String amount) = _$_ChangeAmount;

  String get amount;
  @JsonKey(ignore: true)
  _$$_ChangeAmountCopyWith<_$_ChangeAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAmountFromOptionsCopyWith<$Res> {
  factory _$$_ChangeAmountFromOptionsCopyWith(_$_ChangeAmountFromOptions value,
          $Res Function(_$_ChangeAmountFromOptions) then) =
      __$$_ChangeAmountFromOptionsCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$_ChangeAmountFromOptionsCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeAmountFromOptions>
    implements _$$_ChangeAmountFromOptionsCopyWith<$Res> {
  __$$_ChangeAmountFromOptionsCopyWithImpl(_$_ChangeAmountFromOptions _value,
      $Res Function(_$_ChangeAmountFromOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_ChangeAmountFromOptions(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeAmountFromOptions implements _ChangeAmountFromOptions {
  const _$_ChangeAmountFromOptions(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'TopupViaStripeEvent.changeAmountFromOptions(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAmountFromOptions &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAmountFromOptionsCopyWith<_$_ChangeAmountFromOptions>
      get copyWith =>
          __$$_ChangeAmountFromOptionsCopyWithImpl<_$_ChangeAmountFromOptions>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeAmountFromOptions(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeAmountFromOptions?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
    required TResult orElse(),
  }) {
    if (changeAmountFromOptions != null) {
      return changeAmountFromOptions(amount);
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeAmountFromOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeAmountFromOptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changeAmountFromOptions != null) {
      return changeAmountFromOptions(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmountFromOptions implements TopupViaStripeEvent {
  const factory _ChangeAmountFromOptions(final String amount) =
      _$_ChangeAmountFromOptions;

  String get amount;
  @JsonKey(ignore: true)
  _$$_ChangeAmountFromOptionsCopyWith<_$_ChangeAmountFromOptions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePurposeCopyWith<$Res> {
  factory _$$_ChangePurposeCopyWith(
          _$_ChangePurpose value, $Res Function(_$_ChangePurpose) then) =
      __$$_ChangePurposeCopyWithImpl<$Res>;
  @useResult
  $Res call({String purpose});
}

/// @nodoc
class __$$_ChangePurposeCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangePurpose>
    implements _$$_ChangePurposeCopyWith<$Res> {
  __$$_ChangePurposeCopyWithImpl(
      _$_ChangePurpose _value, $Res Function(_$_ChangePurpose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purpose = null,
  }) {
    return _then(_$_ChangePurpose(
      null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePurpose implements _ChangePurpose {
  const _$_ChangePurpose(this.purpose);

  @override
  final String purpose;

  @override
  String toString() {
    return 'TopupViaStripeEvent.changePurpose(purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePurpose &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purpose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePurposeCopyWith<_$_ChangePurpose> get copyWith =>
      __$$_ChangePurposeCopyWithImpl<_$_ChangePurpose>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changePurpose(purpose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changePurpose?.call(purpose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
    required TResult orElse(),
  }) {
    if (changePurpose != null) {
      return changePurpose(purpose);
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changePurpose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changePurpose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
    TResult Function(_ChangeSaveCard value)? changeSaveCard,
    TResult Function(_TopUp value)? topup,
    required TResult orElse(),
  }) {
    if (changePurpose != null) {
      return changePurpose(this);
    }
    return orElse();
  }
}

abstract class _ChangePurpose implements TopupViaStripeEvent {
  const factory _ChangePurpose(final String purpose) = _$_ChangePurpose;

  String get purpose;
  @JsonKey(ignore: true)
  _$$_ChangePurposeCopyWith<_$_ChangePurpose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSaveCardCopyWith<$Res> {
  factory _$$_ChangeSaveCardCopyWith(
          _$_ChangeSaveCard value, $Res Function(_$_ChangeSaveCard) then) =
      __$$_ChangeSaveCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeSaveCardCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_ChangeSaveCard>
    implements _$$_ChangeSaveCardCopyWith<$Res> {
  __$$_ChangeSaveCardCopyWithImpl(
      _$_ChangeSaveCard _value, $Res Function(_$_ChangeSaveCard) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeSaveCard);
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
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return changeSaveCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return changeSaveCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return changeSaveCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return changeSaveCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
abstract class _$$_TopUpCopyWith<$Res> {
  factory _$$_TopUpCopyWith(_$_TopUp value, $Res Function(_$_TopUp) then) =
      __$$_TopUpCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSavedCard});
}

/// @nodoc
class __$$_TopUpCopyWithImpl<$Res>
    extends _$TopupViaStripeEventCopyWithImpl<$Res, _$_TopUp>
    implements _$$_TopUpCopyWith<$Res> {
  __$$_TopUpCopyWithImpl(_$_TopUp _value, $Res Function(_$_TopUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSavedCard = null,
  }) {
    return _then(_$_TopUp(
      null == isSavedCard
          ? _value.isSavedCard
          : isSavedCard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TopUp implements _TopUp {
  const _$_TopUp(this.isSavedCard);

  @override
  final bool isSavedCard;

  @override
  String toString() {
    return 'TopupViaStripeEvent.topup(isSavedCard: $isSavedCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopUp &&
            (identical(other.isSavedCard, isSavedCard) ||
                other.isSavedCard == isSavedCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSavedCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopUpCopyWith<_$_TopUp> get copyWith =>
      __$$_TopUpCopyWithImpl<_$_TopUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeCardNumber,
    required TResult Function(String cvc) changeCvc,
    required TResult Function(String year) changeExpYear,
    required TResult Function(String amount) changeAmount,
    required TResult Function(String amount) changeAmountFromOptions,
    required TResult Function(String purpose) changePurpose,
    required TResult Function() changeSaveCard,
    required TResult Function(bool isSavedCard) topup,
  }) {
    return topup(isSavedCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeCardNumber,
    TResult? Function(String cvc)? changeCvc,
    TResult? Function(String year)? changeExpYear,
    TResult? Function(String amount)? changeAmount,
    TResult? Function(String amount)? changeAmountFromOptions,
    TResult? Function(String purpose)? changePurpose,
    TResult? Function()? changeSaveCard,
    TResult? Function(bool isSavedCard)? topup,
  }) {
    return topup?.call(isSavedCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeCardNumber,
    TResult Function(String cvc)? changeCvc,
    TResult Function(String year)? changeExpYear,
    TResult Function(String amount)? changeAmount,
    TResult Function(String amount)? changeAmountFromOptions,
    TResult Function(String purpose)? changePurpose,
    TResult Function()? changeSaveCard,
    TResult Function(bool isSavedCard)? topup,
    required TResult orElse(),
  }) {
    if (topup != null) {
      return topup(isSavedCard);
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
    required TResult Function(_ChangeAmountFromOptions value)
        changeAmountFromOptions,
    required TResult Function(_ChangePurpose value) changePurpose,
    required TResult Function(_ChangeSaveCard value) changeSaveCard,
    required TResult Function(_TopUp value) topup,
  }) {
    return topup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeCardNumber value)? changeCardNumber,
    TResult? Function(_ChangeCvc value)? changeCvc,
    TResult? Function(_ChangeExpYear value)? changeExpYear,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult? Function(_ChangePurpose value)? changePurpose,
    TResult? Function(_ChangeSaveCard value)? changeSaveCard,
    TResult? Function(_TopUp value)? topup,
  }) {
    return topup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeCardNumber value)? changeCardNumber,
    TResult Function(_ChangeCvc value)? changeCvc,
    TResult Function(_ChangeExpYear value)? changeExpYear,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeAmountFromOptions value)? changeAmountFromOptions,
    TResult Function(_ChangePurpose value)? changePurpose,
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
  const factory _TopUp(final bool isSavedCard) = _$_TopUp;

  bool get isSavedCard;
  @JsonKey(ignore: true)
  _$$_TopUpCopyWith<_$_TopUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopupViaStripeState {
  Key get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cvc => throw _privateConstructorUsedError;
  String get expYear => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
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
      _$TopupViaStripeStateCopyWithImpl<$Res, TopupViaStripeState>;
  @useResult
  $Res call(
      {Key key,
      String name,
      String cardNumber,
      String cvc,
      String expYear,
      String amount,
      String purpose,
      bool saveCard,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$TopupViaStripeStateCopyWithImpl<$Res, $Val extends TopupViaStripeState>
    implements $TopupViaStripeStateCopyWith<$Res> {
  _$TopupViaStripeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? cardNumber = null,
    Object? cvc = null,
    Object? expYear = null,
    Object? amount = null,
    Object? purpose = null,
    Object? saveCard = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      saveCard: null == saveCard
          ? _value.saveCard
          : saveCard // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_TopupViaStripeStateCopyWith<$Res>
    implements $TopupViaStripeStateCopyWith<$Res> {
  factory _$$_TopupViaStripeStateCopyWith(_$_TopupViaStripeState value,
          $Res Function(_$_TopupViaStripeState) then) =
      __$$_TopupViaStripeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Key key,
      String name,
      String cardNumber,
      String cvc,
      String expYear,
      String amount,
      String purpose,
      bool saveCard,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_TopupViaStripeStateCopyWithImpl<$Res>
    extends _$TopupViaStripeStateCopyWithImpl<$Res, _$_TopupViaStripeState>
    implements _$$_TopupViaStripeStateCopyWith<$Res> {
  __$$_TopupViaStripeStateCopyWithImpl(_$_TopupViaStripeState _value,
      $Res Function(_$_TopupViaStripeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? cardNumber = null,
    Object? cvc = null,
    Object? expYear = null,
    Object? amount = null,
    Object? purpose = null,
    Object? saveCard = null,
    Object? isSubmitting = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_TopupViaStripeState(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      saveCard: null == saveCard
          ? _value.saveCard
          : saveCard // ignore: cast_nullable_to_non_nullable
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

class _$_TopupViaStripeState implements _TopupViaStripeState {
  const _$_TopupViaStripeState(
      {required this.key,
      required this.name,
      required this.cardNumber,
      required this.cvc,
      required this.expYear,
      required this.amount,
      required this.purpose,
      required this.saveCard,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final Key key;
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
  final String purpose;
  @override
  final bool saveCard;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TopupViaStripeState(key: $key, name: $name, cardNumber: $cardNumber, cvc: $cvc, expYear: $expYear, amount: $amount, purpose: $purpose, saveCard: $saveCard, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopupViaStripeState &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cvc, cvc) || other.cvc == cvc) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.saveCard, saveCard) ||
                other.saveCard == saveCard) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, name, cardNumber, cvc,
      expYear, amount, purpose, saveCard, isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopupViaStripeStateCopyWith<_$_TopupViaStripeState> get copyWith =>
      __$$_TopupViaStripeStateCopyWithImpl<_$_TopupViaStripeState>(
          this, _$identity);
}

abstract class _TopupViaStripeState implements TopupViaStripeState {
  const factory _TopupViaStripeState(
      {required final Key key,
      required final String name,
      required final String cardNumber,
      required final String cvc,
      required final String expYear,
      required final String amount,
      required final String purpose,
      required final bool saveCard,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, Unit>>
          failureOrSuccessOption}) = _$_TopupViaStripeState;

  @override
  Key get key;
  @override
  String get name;
  @override
  String get cardNumber;
  @override
  String get cvc;
  @override
  String get expYear;
  @override
  String get amount;
  @override
  String get purpose;
  @override
  bool get saveCard;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TopupViaStripeStateCopyWith<_$_TopupViaStripeState> get copyWith =>
      throw _privateConstructorUsedError;
}
