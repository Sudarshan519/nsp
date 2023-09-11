// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_for_partner_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscriptionForPartnerServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionForPartnerServiceEventCopyWith<$Res> {
  factory $SubscriptionForPartnerServiceEventCopyWith(
          SubscriptionForPartnerServiceEvent value,
          $Res Function(SubscriptionForPartnerServiceEvent) then) =
      _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
          SubscriptionForPartnerServiceEvent>;
}

/// @nodoc
class _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        $Val extends SubscriptionForPartnerServiceEvent>
    implements $SubscriptionForPartnerServiceEventCopyWith<$Res> {
  _$SubscriptionForPartnerServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSubscriptionCopyWith<$Res> {
  factory _$$_GetSubscriptionCopyWith(
          _$_GetSubscription value, $Res Function(_$_GetSubscription) then) =
      __$$_GetSubscriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String subscriptionId});
}

/// @nodoc
class __$$_GetSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        _$_GetSubscription> implements _$$_GetSubscriptionCopyWith<$Res> {
  __$$_GetSubscriptionCopyWithImpl(
      _$_GetSubscription _value, $Res Function(_$_GetSubscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
  }) {
    return _then(_$_GetSubscription(
      subscriptionId: null == subscriptionId
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
        (other.runtimeType == runtimeType &&
            other is _$_GetSubscription &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSubscriptionCopyWith<_$_GetSubscription> get copyWith =>
      __$$_GetSubscriptionCopyWithImpl<_$_GetSubscription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return getSubscription(subscriptionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return getSubscription?.call(subscriptionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return getSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return getSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
    required TResult orElse(),
  }) {
    if (getSubscription != null) {
      return getSubscription(this);
    }
    return orElse();
  }
}

abstract class _GetSubscription implements SubscriptionForPartnerServiceEvent {
  const factory _GetSubscription({required final String subscriptionId}) =
      _$_GetSubscription;

  String get subscriptionId;
  @JsonKey(ignore: true)
  _$$_GetSubscriptionCopyWith<_$_GetSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectSubscriptionCopyWith<$Res> {
  factory _$$_SelectSubscriptionCopyWith(_$_SelectSubscription value,
          $Res Function(_$_SelectSubscription) then) =
      __$$_SelectSubscriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionInvoice invoice});
}

/// @nodoc
class __$$_SelectSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        _$_SelectSubscription> implements _$$_SelectSubscriptionCopyWith<$Res> {
  __$$_SelectSubscriptionCopyWithImpl(
      _$_SelectSubscription _value, $Res Function(_$_SelectSubscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_$_SelectSubscription(
      invoice: null == invoice
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
        (other.runtimeType == runtimeType &&
            other is _$_SelectSubscription &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectSubscriptionCopyWith<_$_SelectSubscription> get copyWith =>
      __$$_SelectSubscriptionCopyWithImpl<_$_SelectSubscription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return selectSubscription(invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return selectSubscription?.call(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return selectSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return selectSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
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
  const factory _SelectSubscription(
      {required final SubscriptionInvoice invoice}) = _$_SelectSubscription;

  SubscriptionInvoice get invoice;
  @JsonKey(ignore: true)
  _$$_SelectSubscriptionCopyWith<_$_SelectSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectAllSubscriptionCopyWith<$Res> {
  factory _$$_SelectAllSubscriptionCopyWith(_$_SelectAllSubscription value,
          $Res Function(_$_SelectAllSubscription) then) =
      __$$_SelectAllSubscriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({bool selectAll});
}

/// @nodoc
class __$$_SelectAllSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        _$_SelectAllSubscription>
    implements _$$_SelectAllSubscriptionCopyWith<$Res> {
  __$$_SelectAllSubscriptionCopyWithImpl(_$_SelectAllSubscription _value,
      $Res Function(_$_SelectAllSubscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectAll = null,
  }) {
    return _then(_$_SelectAllSubscription(
      null == selectAll
          ? _value.selectAll
          : selectAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectAllSubscription implements _SelectAllSubscription {
  const _$_SelectAllSubscription(this.selectAll);

  ///[true] to selectall and vice versa
  @override
  final bool selectAll;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.selectAllSubscription(selectAll: $selectAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectAllSubscription &&
            (identical(other.selectAll, selectAll) ||
                other.selectAll == selectAll));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectAll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectAllSubscriptionCopyWith<_$_SelectAllSubscription> get copyWith =>
      __$$_SelectAllSubscriptionCopyWithImpl<_$_SelectAllSubscription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return selectAllSubscription(selectAll);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return selectAllSubscription?.call(selectAll);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return selectAllSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return selectAllSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
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
  const factory _SelectAllSubscription(final bool selectAll) =
      _$_SelectAllSubscription;

  ///[true] to selectall and vice versa
  bool get selectAll;
  @JsonKey(ignore: true)
  _$$_SelectAllSubscriptionCopyWith<_$_SelectAllSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PurchaseSubscriptionCopyWith<$Res> {
  factory _$$_PurchaseSubscriptionCopyWith(_$_PurchaseSubscription value,
          $Res Function(_$_PurchaseSubscription) then) =
      __$$_PurchaseSubscriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$_PurchaseSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        _$_PurchaseSubscription>
    implements _$$_PurchaseSubscriptionCopyWith<$Res> {
  __$$_PurchaseSubscriptionCopyWithImpl(_$_PurchaseSubscription _value,
      $Res Function(_$_PurchaseSubscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$_PurchaseSubscription(
      null == productId
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
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseSubscription &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseSubscriptionCopyWith<_$_PurchaseSubscription> get copyWith =>
      __$$_PurchaseSubscriptionCopyWithImpl<_$_PurchaseSubscription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return purchaseSubscription(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return purchaseSubscription?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return purchaseSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return purchaseSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
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
  const factory _PurchaseSubscription(final int productId) =
      _$_PurchaseSubscription;

  int get productId;
  @JsonKey(ignore: true)
  _$$_PurchaseSubscriptionCopyWith<_$_PurchaseSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetCouponCopyWith<$Res> {
  factory _$$_SetCouponCopyWith(
          _$_SetCoupon value, $Res Function(_$_SetCoupon) then) =
      __$$_SetCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({CouponCode? coupounCode});
}

/// @nodoc
class __$$_SetCouponCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res, _$_SetCoupon>
    implements _$$_SetCouponCopyWith<$Res> {
  __$$_SetCouponCopyWithImpl(
      _$_SetCoupon _value, $Res Function(_$_SetCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupounCode = freezed,
  }) {
    return _then(_$_SetCoupon(
      freezed == coupounCode
          ? _value.coupounCode
          : coupounCode // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
    ));
  }
}

/// @nodoc

class _$_SetCoupon implements _SetCoupon {
  const _$_SetCoupon(this.coupounCode);

  @override
  final CouponCode? coupounCode;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.setCoupon(coupounCode: $coupounCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetCoupon &&
            (identical(other.coupounCode, coupounCode) ||
                other.coupounCode == coupounCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coupounCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetCouponCopyWith<_$_SetCoupon> get copyWith =>
      __$$_SetCouponCopyWithImpl<_$_SetCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return setCoupon(coupounCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return setCoupon?.call(coupounCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return setCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return setCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
    required TResult orElse(),
  }) {
    if (setCoupon != null) {
      return setCoupon(this);
    }
    return orElse();
  }
}

abstract class _SetCoupon implements SubscriptionForPartnerServiceEvent {
  const factory _SetCoupon(final CouponCode? coupounCode) = _$_SetCoupon;

  CouponCode? get coupounCode;
  @JsonKey(ignore: true)
  _$$_SetCouponCopyWith<_$_SetCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetInitialCashbackCopyWith<$Res> {
  factory _$$_SetInitialCashbackCopyWith(_$_SetInitialCashback value,
          $Res Function(_$_SetInitialCashback) then) =
      __$$_SetInitialCashbackCopyWithImpl<$Res>;
  @useResult
  $Res call({double initCashback});
}

/// @nodoc
class __$$_SetInitialCashbackCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        _$_SetInitialCashback> implements _$$_SetInitialCashbackCopyWith<$Res> {
  __$$_SetInitialCashbackCopyWithImpl(
      _$_SetInitialCashback _value, $Res Function(_$_SetInitialCashback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initCashback = null,
  }) {
    return _then(_$_SetInitialCashback(
      null == initCashback
          ? _value.initCashback
          : initCashback // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetInitialCashback implements _SetInitialCashback {
  const _$_SetInitialCashback(this.initCashback);

  @override
  final double initCashback;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.setInitialCashback(initCashback: $initCashback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetInitialCashback &&
            (identical(other.initCashback, initCashback) ||
                other.initCashback == initCashback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initCashback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetInitialCashbackCopyWith<_$_SetInitialCashback> get copyWith =>
      __$$_SetInitialCashbackCopyWithImpl<_$_SetInitialCashback>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return setInitialCashback(initCashback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return setInitialCashback?.call(initCashback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
    required TResult orElse(),
  }) {
    if (setInitialCashback != null) {
      return setInitialCashback(initCashback);
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return setInitialCashback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return setInitialCashback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
    required TResult orElse(),
  }) {
    if (setInitialCashback != null) {
      return setInitialCashback(this);
    }
    return orElse();
  }
}

abstract class _SetInitialCashback
    implements SubscriptionForPartnerServiceEvent {
  const factory _SetInitialCashback(final double initCashback) =
      _$_SetInitialCashback;

  double get initCashback;
  @JsonKey(ignore: true)
  _$$_SetInitialCashbackCopyWith<_$_SetInitialCashback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_setInitialRewardPointCopyWith<$Res> {
  factory _$$_setInitialRewardPointCopyWith(_$_setInitialRewardPoint value,
          $Res Function(_$_setInitialRewardPoint) then) =
      __$$_setInitialRewardPointCopyWithImpl<$Res>;
  @useResult
  $Res call({double initReward});
}

/// @nodoc
class __$$_setInitialRewardPointCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceEventCopyWithImpl<$Res,
        _$_setInitialRewardPoint>
    implements _$$_setInitialRewardPointCopyWith<$Res> {
  __$$_setInitialRewardPointCopyWithImpl(_$_setInitialRewardPoint _value,
      $Res Function(_$_setInitialRewardPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initReward = null,
  }) {
    return _then(_$_setInitialRewardPoint(
      null == initReward
          ? _value.initReward
          : initReward // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_setInitialRewardPoint implements _setInitialRewardPoint {
  const _$_setInitialRewardPoint(this.initReward);

  @override
  final double initReward;

  @override
  String toString() {
    return 'SubscriptionForPartnerServiceEvent.setInitialRewardPoint(initReward: $initReward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_setInitialRewardPoint &&
            (identical(other.initReward, initReward) ||
                other.initReward == initReward));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initReward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_setInitialRewardPointCopyWith<_$_setInitialRewardPoint> get copyWith =>
      __$$_setInitialRewardPointCopyWithImpl<_$_setInitialRewardPoint>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subscriptionId) getSubscription,
    required TResult Function(SubscriptionInvoice invoice) selectSubscription,
    required TResult Function(bool selectAll) selectAllSubscription,
    required TResult Function(int productId) purchaseSubscription,
    required TResult Function(CouponCode? coupounCode) setCoupon,
    required TResult Function(double initCashback) setInitialCashback,
    required TResult Function(double initReward) setInitialRewardPoint,
  }) {
    return setInitialRewardPoint(initReward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subscriptionId)? getSubscription,
    TResult? Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult? Function(bool selectAll)? selectAllSubscription,
    TResult? Function(int productId)? purchaseSubscription,
    TResult? Function(CouponCode? coupounCode)? setCoupon,
    TResult? Function(double initCashback)? setInitialCashback,
    TResult? Function(double initReward)? setInitialRewardPoint,
  }) {
    return setInitialRewardPoint?.call(initReward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subscriptionId)? getSubscription,
    TResult Function(SubscriptionInvoice invoice)? selectSubscription,
    TResult Function(bool selectAll)? selectAllSubscription,
    TResult Function(int productId)? purchaseSubscription,
    TResult Function(CouponCode? coupounCode)? setCoupon,
    TResult Function(double initCashback)? setInitialCashback,
    TResult Function(double initReward)? setInitialRewardPoint,
    required TResult orElse(),
  }) {
    if (setInitialRewardPoint != null) {
      return setInitialRewardPoint(initReward);
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
    required TResult Function(_SetInitialCashback value) setInitialCashback,
    required TResult Function(_setInitialRewardPoint value)
        setInitialRewardPoint,
  }) {
    return setInitialRewardPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscription value)? getSubscription,
    TResult? Function(_SelectSubscription value)? selectSubscription,
    TResult? Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult? Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult? Function(_SetCoupon value)? setCoupon,
    TResult? Function(_SetInitialCashback value)? setInitialCashback,
    TResult? Function(_setInitialRewardPoint value)? setInitialRewardPoint,
  }) {
    return setInitialRewardPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscription value)? getSubscription,
    TResult Function(_SelectSubscription value)? selectSubscription,
    TResult Function(_SelectAllSubscription value)? selectAllSubscription,
    TResult Function(_PurchaseSubscription value)? purchaseSubscription,
    TResult Function(_SetCoupon value)? setCoupon,
    TResult Function(_SetInitialCashback value)? setInitialCashback,
    TResult Function(_setInitialRewardPoint value)? setInitialRewardPoint,
    required TResult orElse(),
  }) {
    if (setInitialRewardPoint != null) {
      return setInitialRewardPoint(this);
    }
    return orElse();
  }
}

abstract class _setInitialRewardPoint
    implements SubscriptionForPartnerServiceEvent {
  const factory _setInitialRewardPoint(final double initReward) =
      _$_setInitialRewardPoint;

  double get initReward;
  @JsonKey(ignore: true)
  _$$_setInitialRewardPointCopyWith<_$_setInitialRewardPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? fetchSubscriptionSuccessfully,
    TResult? Function()? purchasedSuccessfully,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult? Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
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
      _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res,
          SubscriptionForPartnerServiceState>;
}

/// @nodoc
class _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res,
        $Val extends SubscriptionForPartnerServiceState>
    implements $SubscriptionForPartnerServiceStateCopyWith<$Res> {
  _$SubscriptionForPartnerServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? fetchSubscriptionSuccessfully,
    TResult? Function()? purchasedSuccessfully,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult? Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
  }) {
    return initial?.call(this);
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
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? fetchSubscriptionSuccessfully,
    TResult? Function()? purchasedSuccessfully,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult? Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
  }) {
    return loading?.call(this);
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
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? fetchSubscriptionSuccessfully,
    TResult? Function()? purchasedSuccessfully,
  }) {
    return failure?.call(this.failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult? Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
  }) {
    return failure?.call(this);
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
  const factory _Failure(final ApiFailure failure) = _$_Failure;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchSubscriptionSuccessfullyCopyWith<$Res> {
  factory _$$_FetchSubscriptionSuccessfullyCopyWith(
          _$_FetchSubscriptionSuccessfully value,
          $Res Function(_$_FetchSubscriptionSuccessfully) then) =
      __$$_FetchSubscriptionSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchSubscriptionSuccessfullyCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res,
        _$_FetchSubscriptionSuccessfully>
    implements _$$_FetchSubscriptionSuccessfullyCopyWith<$Res> {
  __$$_FetchSubscriptionSuccessfullyCopyWithImpl(
      _$_FetchSubscriptionSuccessfully _value,
      $Res Function(_$_FetchSubscriptionSuccessfully) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSubscriptionSuccessfully);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? fetchSubscriptionSuccessfully,
    TResult? Function()? purchasedSuccessfully,
  }) {
    return fetchSubscriptionSuccessfully?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult? Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
  }) {
    return fetchSubscriptionSuccessfully?.call(this);
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
abstract class _$$_PurchasedSuccessfullyCopyWith<$Res> {
  factory _$$_PurchasedSuccessfullyCopyWith(_$_PurchasedSuccessfully value,
          $Res Function(_$_PurchasedSuccessfully) then) =
      __$$_PurchasedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PurchasedSuccessfullyCopyWithImpl<$Res>
    extends _$SubscriptionForPartnerServiceStateCopyWithImpl<$Res,
        _$_PurchasedSuccessfully>
    implements _$$_PurchasedSuccessfullyCopyWith<$Res> {
  __$$_PurchasedSuccessfullyCopyWithImpl(_$_PurchasedSuccessfully _value,
      $Res Function(_$_PurchasedSuccessfully) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PurchasedSuccessfully);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ApiFailure failure)? failure,
    TResult? Function()? fetchSubscriptionSuccessfully,
    TResult? Function()? purchasedSuccessfully,
  }) {
    return purchasedSuccessfully?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FetchSubscriptionSuccessfully value)?
        fetchSubscriptionSuccessfully,
    TResult? Function(_PurchasedSuccessfully value)? purchasedSuccessfully,
  }) {
    return purchasedSuccessfully?.call(this);
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
