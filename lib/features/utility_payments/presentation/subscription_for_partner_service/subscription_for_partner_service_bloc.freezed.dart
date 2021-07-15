// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscription_for_partner_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionForPartnerServiceEventTearOff {
  const _$SubscriptionForPartnerServiceEventTearOff();

  _GetSubscription getSubscription({required String subscriptionId}) {
    return _GetSubscription(
      subscriptionId: subscriptionId,
    );
  }

  _SelectSubscription selectSubscription(
      {required SubscriptionInvoice invoice}) {
    return _SelectSubscription(
      invoice: invoice,
    );
  }

  _SelectAllSubscription selectAllSubscription(bool selectAll) {
    return _SelectAllSubscription(
      selectAll,
    );
  }

  _PurchaseSubscription purchaseSubscription(int productId) {
    return _PurchaseSubscription(
      productId,
    );
  }

  _SetCoupon setCoupon(CouponCode coupounCode) {
    return _SetCoupon(
      coupounCode,
    );
  }

  _SetCashback SetCashback(double cashBack) {
    return _SetCashback(
      cashBack,
    );
  }
}

/// @nodoc
const $SubscriptionForPartnerServiceEvent =
    _$SubscriptionForPartnerServiceEventTearOff();

/// @nodoc
mixin _$SubscriptionForPartnerServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionForPartnerServiceEventCopyWith<$Res> {
  factory $SubscriptionForPartnerServiceEventCopyWith(
          SubscriptionForPartnerServiceEvent value,
          $Res Function(SubscriptionForPartnerServiceEvent) then) =
      _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements $SubscriptionForPartnerServiceEventCopyWith<$Res> {
  _$SubscriptionForPartnerServiceEventCopyWithImpl(this._value, this._then);

  final SubscriptionForPartnerServiceEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionForPartnerServiceEvent) _then;
}

/// @nodoc
abstract class _$GetSubscriptionCopyWith<$Res> {
  factory _$GetSubscriptionCopyWith(
          _GetSubscription value, $Res Function(_GetSubscription) then) =
      __$GetSubscriptionCopyWithImpl<$Res>;
  $Res call({String subscriptionId});
}

/// @nodoc
class __$GetSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements _$GetSubscriptionCopyWith<$Res> {
  __$GetSubscriptionCopyWithImpl(
      _GetSubscription _value, $Res Function(_GetSubscription) _then)
      : super(_value, (v) => _then(v as _GetSubscription));

  @override
  _GetSubscription get _value => super._value as _GetSubscription;

  @override
  $Res call({
    Object? subscriptionId = freezed,
  }) {
    return _then(_GetSubscription(
      subscriptionId: subscriptionId == freezed
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSubscription implements _GetSubscription {
  const _$_GetSubscription({required this.subscriptionId});

  @override
  final String subscriptionId;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.getSubscription(subscriptionId: $subscriptionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSubscription &&
            (identical(other.subscriptionId, subscriptionId) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionId, subscriptionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionId);

  @JsonKey(ignore: true)
  @override
  _$GetSubscriptionCopyWith<_GetSubscription> get copyWith =>
      __$GetSubscriptionCopyWithImpl<_GetSubscription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) {
    return getSubscription(subscriptionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) {
    if (getSubscription != null) {
      return getSubscription(subscriptionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) {
    return getSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) {
    if (getSubscription != null) {
      return getSubscription(this);
    }
    return orElse();
  }
}

abstract class _GetSubscription implements SubscriptionForPartnerServiceEvent {
  const factory _GetSubscription({required String subscriptionId}) =
      _$_GetSubscription;

  String get subscriptionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSubscriptionCopyWith<_GetSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectSubscriptionCopyWith<$Res> {
  factory _$SelectSubscriptionCopyWith(
          _SelectSubscription value, $Res Function(_SelectSubscription) then) =
      __$SelectSubscriptionCopyWithImpl<$Res>;
  $Res call({SubscriptionInvoice invoice});
}

/// @nodoc
class __$SelectSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements _$SelectSubscriptionCopyWith<$Res> {
  __$SelectSubscriptionCopyWithImpl(
      _SelectSubscription _value, $Res Function(_SelectSubscription) _then)
      : super(_value, (v) => _then(v as _SelectSubscription));

  @override
  _SelectSubscription get _value => super._value as _SelectSubscription;

  @override
  $Res call({
    Object? invoice = freezed,
  }) {
    return _then(_SelectSubscription(
      invoice: invoice == freezed
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as SubscriptionInvoice,
    ));
  }
}

/// @nodoc

class _$_SelectSubscription implements _SelectSubscription {
  const _$_SelectSubscription({required this.invoice});

  @override
  final SubscriptionInvoice invoice;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.selectSubscription(invoice: $invoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectSubscription &&
            (identical(other.invoice, invoice) ||
                const DeepCollectionEquality().equals(other.invoice, invoice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invoice);

  @JsonKey(ignore: true)
  @override
  _$SelectSubscriptionCopyWith<_SelectSubscription> get copyWith =>
      __$SelectSubscriptionCopyWithImpl<_SelectSubscription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) {
    return selectSubscription(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) {
    if (selectSubscription != null) {
      return selectSubscription(invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) {
    return selectSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) {
    if (selectSubscription != null) {
      return selectSubscription(this);
    }
    return orElse();
  }
}

abstract class _SelectSubscription
    implements SubscriptionForPartnerServiceEvent {
  const factory _SelectSubscription({required SubscriptionInvoice invoice}) =
      _$_SelectSubscription;

  SubscriptionInvoice get invoice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectSubscriptionCopyWith<_SelectSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectAllSubscriptionCopyWith<$Res> {
  factory _$SelectAllSubscriptionCopyWith(_SelectAllSubscription value,
          $Res Function(_SelectAllSubscription) then) =
      __$SelectAllSubscriptionCopyWithImpl<$Res>;
  $Res call({bool selectAll});
}

/// @nodoc
class __$SelectAllSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements _$SelectAllSubscriptionCopyWith<$Res> {
  __$SelectAllSubscriptionCopyWithImpl(_SelectAllSubscription _value,
      $Res Function(_SelectAllSubscription) _then)
      : super(_value, (v) => _then(v as _SelectAllSubscription));

  @override
  _SelectAllSubscription get _value => super._value as _SelectAllSubscription;

  @override
  $Res call({
    Object? selectAll = freezed,
  }) {
    return _then(_SelectAllSubscription(
      selectAll == freezed
          ? _value.selectAll
          : selectAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectAllSubscription implements _SelectAllSubscription {
  const _$_SelectAllSubscription(this.selectAll);

  @override

  ///[true] to selectall and vice versa
  final bool selectAll;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.selectAllSubscription(selectAll: $selectAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectAllSubscription &&
            (identical(other.selectAll, selectAll) ||
                const DeepCollectionEquality()
                    .equals(other.selectAll, selectAll)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectAll);

  @JsonKey(ignore: true)
  @override
  _$SelectAllSubscriptionCopyWith<_SelectAllSubscription> get copyWith =>
      __$SelectAllSubscriptionCopyWithImpl<_SelectAllSubscription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) {
    return selectAllSubscription(selectAll);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) {
    if (selectAllSubscription != null) {
      return selectAllSubscription(selectAll);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) {
    return selectAllSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) {
    if (selectAllSubscription != null) {
      return selectAllSubscription(this);
    }
    return orElse();
  }
}

abstract class _SelectAllSubscription
    implements SubscriptionForPartnerServiceEvent {
  const factory _SelectAllSubscription(bool selectAll) =
      _$_SelectAllSubscription;

  ///[true] to selectall and vice versa
  bool get selectAll => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectAllSubscriptionCopyWith<_SelectAllSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PurchaseSubscriptionCopyWith<$Res> {
  factory _$PurchaseSubscriptionCopyWith(_PurchaseSubscription value,
          $Res Function(_PurchaseSubscription) then) =
      __$PurchaseSubscriptionCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$PurchaseSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements _$PurchaseSubscriptionCopyWith<$Res> {
  __$PurchaseSubscriptionCopyWithImpl(
      _PurchaseSubscription _value, $Res Function(_PurchaseSubscription) _then)
      : super(_value, (v) => _then(v as _PurchaseSubscription));

  @override
  _PurchaseSubscription get _value => super._value as _PurchaseSubscription;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_PurchaseSubscription(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PurchaseSubscription implements _PurchaseSubscription {
  const _$_PurchaseSubscription(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.purchaseSubscription(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseSubscription &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  _$PurchaseSubscriptionCopyWith<_PurchaseSubscription> get copyWith =>
      __$PurchaseSubscriptionCopyWithImpl<_PurchaseSubscription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) {
    return purchaseSubscription(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) {
    if (purchaseSubscription != null) {
      return purchaseSubscription(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) {
    return purchaseSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) {
    if (purchaseSubscription != null) {
      return purchaseSubscription(this);
    }
    return orElse();
  }
}

abstract class _PurchaseSubscription
    implements SubscriptionForPartnerServiceEvent {
  const factory _PurchaseSubscription(int productId) = _$_PurchaseSubscription;

  int get productId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PurchaseSubscriptionCopyWith<_PurchaseSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCouponCopyWith<$Res> {
  factory _$SetCouponCopyWith(
          _SetCoupon value, $Res Function(_SetCoupon) then) =
      __$SetCouponCopyWithImpl<$Res>;
  $Res call({CouponCode coupounCode});
}

/// @nodoc
class __$SetCouponCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements _$SetCouponCopyWith<$Res> {
  __$SetCouponCopyWithImpl(_SetCoupon _value, $Res Function(_SetCoupon) _then)
      : super(_value, (v) => _then(v as _SetCoupon));

  @override
  _SetCoupon get _value => super._value as _SetCoupon;

  @override
  $Res call({
    Object? coupounCode = freezed,
  }) {
    return _then(_SetCoupon(
      coupounCode == freezed
          ? _value.coupounCode
          : coupounCode // ignore: cast_nullable_to_non_nullable
              as CouponCode,
    ));
  }
}

/// @nodoc

class _$_SetCoupon implements _SetCoupon {
  const _$_SetCoupon(this.coupounCode);

  @override
  final CouponCode coupounCode;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.setCoupon(coupounCode: $coupounCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetCoupon &&
            (identical(other.coupounCode, coupounCode) ||
                const DeepCollectionEquality()
                    .equals(other.coupounCode, coupounCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coupounCode);

  @JsonKey(ignore: true)
  @override
  _$SetCouponCopyWith<_SetCoupon> get copyWith =>
      __$SetCouponCopyWithImpl<_SetCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) {
    return setCoupon(coupounCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) {
    if (setCoupon != null) {
      return setCoupon(coupounCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) {
    return setCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) {
    if (setCoupon != null) {
      return setCoupon(this);
    }
    return orElse();
  }
}

abstract class _SetCoupon implements SubscriptionForPartnerServiceEvent {
  const factory _SetCoupon(CouponCode coupounCode) = _$_SetCoupon;

  CouponCode get coupounCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetCouponCopyWith<_SetCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCashbackCopyWith<$Res> {
  factory _$SetCashbackCopyWith(
          _SetCashback value, $Res Function(_SetCashback) then) =
      __$SetCashbackCopyWithImpl<$Res>;
  $Res call({double cashBack});
}

/// @nodoc
class __$SetCashbackCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res>
    implements _$SetCashbackCopyWith<$Res> {
  __$SetCashbackCopyWithImpl(
      _SetCashback _value, $Res Function(_SetCashback) _then)
      : super(_value, (v) => _then(v as _SetCashback));

  @override
  _SetCashback get _value => super._value as _SetCashback;

  @override
  $Res call({
    Object? cashBack = freezed,
  }) {
    return _then(_SetCashback(
      cashBack == freezed
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetCashback implements _SetCashback {
  const _$_SetCashback(this.cashBack);

  @override
  final double cashBack;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.SetCashback(cashBack: $cashBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetCashback &&
            (identical(other.cashBack, cashBack) ||
                const DeepCollectionEquality()
                    .equals(other.cashBack, cashBack)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cashBack);

  @JsonKey(ignore: true)
  @override
  _$SetCashbackCopyWith<_SetCashback> get copyWith =>
      __$SetCashbackCopyWithImpl<_SetCashback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode coupounCode) setCoupon,
    required TResult Function(double cashBack) SetCashback,
  }) {
    return SetCashback(cashBack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode coupounCode)? setCoupon,
    TResult Function(double cashBack)? SetCashback,
    required TResult orElse(),
  }) {
    if (SetCashback != null) {
      return SetCashback(cashBack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscription value) getSubscription,
    required TResult Function(_SelectSubscription value) selectSubscription,
    required TResult Function(_SelectAllSubscription value)
        selectAllSubscription,
    required TResult Function(_PurchaseSubscription value) purchaseSubscription,
    required TResult Function(_SetCoupon value) setCoupon,
    required TResult Function(_SetCashback value) SetCashback,
  }) {
    return SetCashback(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetCashback value)? SetCashback,
    required TResult orElse(),
  }) {
    if (SetCashback != null) {
      return SetCashback(this);
    }
    return orElse();
  }
}

abstract class _SetCashback implements SubscriptionForPartnerServiceEvent {
  const factory _SetCashback(double cashBack) = _$_SetCashback;

  double get cashBack => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetCashbackCopyWith<_SetCashback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubscriptionForPartnerServiceStateTearOff {
  const _$SubscriptionForPartnerServiceStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Failure failure(ApiFailure failure) {
    return _Failure(
      failure,
    );
  }

  _FetchSubscriptionSuccessfully fetchSubscriptionSuccessfully() {
    return const _FetchSubscriptionSuccessfully();
  }

  _PurchasedSuccessfully purchasedSuccessfully() {
    return const _PurchasedSuccessfully();
  }
}

/// @nodoc
const $SubscriptionForPartnerServiceState =
    _$SubscriptionForPartnerServiceStateTearOff();

/// @nodoc
mixin _$SubscriptionForPartnerServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() fetchSubscriptionSuccessfully,
    required TResult Function() purchasedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? fetchSubscriptionSuccessfully,
    TResult Function()? purchasedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FetchSubscriptionSuccessfully value)
        fetchSubscriptionSuccessfully,
    required TResult Function(_PurchasedSuccessfully value)
        purchasedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionForPartnerServiceStateCopyWith<$Res> {
  factory $SubscriptionForPartnerServiceStateCopyWith(
          SubscriptionForPartnerServiceState value,
          $Res Function(SubscriptionForPartnerServiceState) then) =
      _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>
    implements $SubscriptionForPartnerServiceStateCopyWith<$Res> {
  _$SubscriptionForPartnerServiceStateCopyWithImpl(this._value, this._then);

  final SubscriptionForPartnerServiceState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionForPartnerServiceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() fetchSubscriptionSuccessfully,
    required TResult Function() purchasedSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? fetchSubscriptionSuccessfully,
    TResult Function()? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FetchSubscriptionSuccessfully value)
        fetchSubscriptionSuccessfully,
    required TResult Function(_PurchasedSuccessfully value)
        purchasedSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionForPartnerServiceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() fetchSubscriptionSuccessfully,
    required TResult Function() purchasedSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? fetchSubscriptionSuccessfully,
    TResult Function()? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FetchSubscriptionSuccessfully value)
        fetchSubscriptionSuccessfully,
    required TResult Function(_PurchasedSuccessfully value)
        purchasedSuccessfully,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SubscriptionForPartnerServiceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() fetchSubscriptionSuccessfully,
    required TResult Function() purchasedSuccessfully,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? fetchSubscriptionSuccessfully,
    TResult Function()? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FetchSubscriptionSuccessfully value)
        fetchSubscriptionSuccessfully,
    required TResult Function(_PurchasedSuccessfully value)
        purchasedSuccessfully,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SubscriptionForPartnerServiceState {
  const factory _Failure(ApiFailure failure) = _$_Failure;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchSubscriptionSuccessfullyCopyWith<$Res> {
  factory _$FetchSubscriptionSuccessfullyCopyWith(
          _FetchSubscriptionSuccessfully value,
          $Res Function(_FetchSubscriptionSuccessfully) then) =
      __$FetchSubscriptionSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchSubscriptionSuccessfullyCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>
    implements _$FetchSubscriptionSuccessfullyCopyWith<$Res> {
  __$FetchSubscriptionSuccessfullyCopyWithImpl(
      _FetchSubscriptionSuccessfully _value,
      $Res Function(_FetchSubscriptionSuccessfully) _then)
      : super(_value, (v) => _then(v as _FetchSubscriptionSuccessfully));

  @override
  _FetchSubscriptionSuccessfully get _value =>
      super._value as _FetchSubscriptionSuccessfully;
}

/// @nodoc

class _$_FetchSubscriptionSuccessfully
    implements _FetchSubscriptionSuccessfully {
  const _$_FetchSubscriptionSuccessfully();

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceState.fetchSubscriptionSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchSubscriptionSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() fetchSubscriptionSuccessfully,
    required TResult Function() purchasedSuccessfully,
  }) {
    return fetchSubscriptionSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? fetchSubscriptionSuccessfully,
    TResult Function()? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (fetchSubscriptionSuccessfully != null) {
      return fetchSubscriptionSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FetchSubscriptionSuccessfully value)
        fetchSubscriptionSuccessfully,
    required TResult Function(_PurchasedSuccessfully value)
        purchasedSuccessfully,
  }) {
    return fetchSubscriptionSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (fetchSubscriptionSuccessfully != null) {
      return fetchSubscriptionSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _FetchSubscriptionSuccessfully
    implements SubscriptionForPartnerServiceState {
  const factory _FetchSubscriptionSuccessfully() =
      _$_FetchSubscriptionSuccessfully;
}

/// @nodoc
abstract class _$PurchasedSuccessfullyCopyWith<$Res> {
  factory _$PurchasedSuccessfullyCopyWith(_PurchasedSuccessfully value,
          $Res Function(_PurchasedSuccessfully) then) =
      __$PurchasedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$PurchasedSuccessfullyCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res>
    implements _$PurchasedSuccessfullyCopyWith<$Res> {
  __$PurchasedSuccessfullyCopyWithImpl(_PurchasedSuccessfully _value,
      $Res Function(_PurchasedSuccessfully) _then)
      : super(_value, (v) => _then(v as _PurchasedSuccessfully));

  @override
  _PurchasedSuccessfully get _value => super._value as _PurchasedSuccessfully;
}

/// @nodoc

class _$_PurchasedSuccessfully implements _PurchasedSuccessfully {
  const _$_PurchasedSuccessfully();

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceState.purchasedSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PurchasedSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ApiFailure failure) failure,
    required TResult Function() fetchSubscriptionSuccessfully,
    required TResult Function() purchasedSuccessfully,
  }) {
    return purchasedSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ApiFailure failure)? failure,
    TResult Function()? fetchSubscriptionSuccessfully,
    TResult Function()? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (purchasedSuccessfully != null) {
      return purchasedSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FetchSubscriptionSuccessfully value)
        fetchSubscriptionSuccessfully,
    required TResult Function(_PurchasedSuccessfully value)
        purchasedSuccessfully,
  }) {
    return purchasedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
    required TResult orElse(),
  }) {
    if (purchasedSuccessfully != null) {
      return purchasedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _PurchasedSuccessfully
    implements SubscriptionForPartnerServiceState {
  const factory _PurchasedSuccessfully() = _$_PurchasedSuccessfully;
}
