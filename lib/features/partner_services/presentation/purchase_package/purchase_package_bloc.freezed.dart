// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_package_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchasePackageEventTearOff {
  const _$PurchasePackageEventTearOff();

  _ChangeCustomerName changeCustomerName(String name) {
    return _ChangeCustomerName(
      name,
    );
  }

  _ChangeCustomerId changeCustomerId(String id) {
    return _ChangeCustomerId(
      id,
    );
  }

  _ChangeRemark changeRemark(String remark) {
    return _ChangeRemark(
      remark,
    );
  }

  _SetInitialState setInitialState(ServicePackage package) {
    return _SetInitialState(
      package,
    );
  }

  _ChangeCoupon changeCoupon(String coupon) {
    return _ChangeCoupon(
      coupon,
    );
  }

  _SetCashbackpercentage setCashbackpercentage(double percentage) {
    return _SetCashbackpercentage(
      percentage,
    );
  }

  _SetDiscountpercentage setDiscountpercentage(double percentage) {
    return _SetDiscountpercentage(
      percentage,
    );
  }

  _SetRedeemPoint setRewardPoint(double point) {
    return _SetRedeemPoint(
      point,
    );
  }

  _SetRedeemPointFromCoupon setRewardPointFromCoupon(double point) {
    return _SetRedeemPointFromCoupon(
      point,
    );
  }

  _Purchase purchase() {
    return const _Purchase();
  }
}

/// @nodoc
const $PurchasePackageEvent = _$PurchasePackageEventTearOff();

/// @nodoc
mixin _$PurchasePackageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePackageEventCopyWith<$Res> {
  factory $PurchasePackageEventCopyWith(PurchasePackageEvent value,
          $Res Function(PurchasePackageEvent) then) =
      _$PurchasePackageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchasePackageEventCopyWithImpl<$Res>
    implements $PurchasePackageEventCopyWith<$Res> {
  _$PurchasePackageEventCopyWithImpl(this._value, this._then);

  final PurchasePackageEvent _value;
  // ignore: unused_field
  final $Res Function(PurchasePackageEvent) _then;
}

/// @nodoc
abstract class _$ChangeCustomerNameCopyWith<$Res> {
  factory _$ChangeCustomerNameCopyWith(
          _ChangeCustomerName value, $Res Function(_ChangeCustomerName) then) =
      __$ChangeCustomerNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$ChangeCustomerNameCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$ChangeCustomerNameCopyWith<$Res> {
  __$ChangeCustomerNameCopyWithImpl(
      _ChangeCustomerName _value, $Res Function(_ChangeCustomerName) _then)
      : super(_value, (v) => _then(v as _ChangeCustomerName));

  @override
  _ChangeCustomerName get _value => super._value as _ChangeCustomerName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ChangeCustomerName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCustomerName
    with DiagnosticableTreeMixin
    implements _ChangeCustomerName {
  const _$_ChangeCustomerName(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.changeCustomerName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PurchasePackageEvent.changeCustomerName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCustomerName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChangeCustomerNameCopyWith<_ChangeCustomerName> get copyWith =>
      __$ChangeCustomerNameCopyWithImpl<_ChangeCustomerName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return changeCustomerName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (changeCustomerName != null) {
      return changeCustomerName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return changeCustomerName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (changeCustomerName != null) {
      return changeCustomerName(this);
    }
    return orElse();
  }
}

abstract class _ChangeCustomerName implements PurchasePackageEvent {
  const factory _ChangeCustomerName(String name) = _$_ChangeCustomerName;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCustomerNameCopyWith<_ChangeCustomerName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeCustomerIdCopyWith<$Res> {
  factory _$ChangeCustomerIdCopyWith(
          _ChangeCustomerId value, $Res Function(_ChangeCustomerId) then) =
      __$ChangeCustomerIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ChangeCustomerIdCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$ChangeCustomerIdCopyWith<$Res> {
  __$ChangeCustomerIdCopyWithImpl(
      _ChangeCustomerId _value, $Res Function(_ChangeCustomerId) _then)
      : super(_value, (v) => _then(v as _ChangeCustomerId));

  @override
  _ChangeCustomerId get _value => super._value as _ChangeCustomerId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ChangeCustomerId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCustomerId
    with DiagnosticableTreeMixin
    implements _ChangeCustomerId {
  const _$_ChangeCustomerId(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.changeCustomerId(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PurchasePackageEvent.changeCustomerId'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCustomerId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ChangeCustomerIdCopyWith<_ChangeCustomerId> get copyWith =>
      __$ChangeCustomerIdCopyWithImpl<_ChangeCustomerId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return changeCustomerId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (changeCustomerId != null) {
      return changeCustomerId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return changeCustomerId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (changeCustomerId != null) {
      return changeCustomerId(this);
    }
    return orElse();
  }
}

abstract class _ChangeCustomerId implements PurchasePackageEvent {
  const factory _ChangeCustomerId(String id) = _$_ChangeCustomerId;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCustomerIdCopyWith<_ChangeCustomerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeRemarkCopyWith<$Res> {
  factory _$ChangeRemarkCopyWith(
          _ChangeRemark value, $Res Function(_ChangeRemark) then) =
      __$ChangeRemarkCopyWithImpl<$Res>;
  $Res call({String remark});
}

/// @nodoc
class __$ChangeRemarkCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$ChangeRemarkCopyWith<$Res> {
  __$ChangeRemarkCopyWithImpl(
      _ChangeRemark _value, $Res Function(_ChangeRemark) _then)
      : super(_value, (v) => _then(v as _ChangeRemark));

  @override
  _ChangeRemark get _value => super._value as _ChangeRemark;

  @override
  $Res call({
    Object? remark = freezed,
  }) {
    return _then(_ChangeRemark(
      remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeRemark with DiagnosticableTreeMixin implements _ChangeRemark {
  const _$_ChangeRemark(this.remark);

  @override
  final String remark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.changeRemark(remark: $remark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasePackageEvent.changeRemark'))
      ..add(DiagnosticsProperty('remark', remark));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeRemark &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(remark);

  @JsonKey(ignore: true)
  @override
  _$ChangeRemarkCopyWith<_ChangeRemark> get copyWith =>
      __$ChangeRemarkCopyWithImpl<_ChangeRemark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return changeRemark(remark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (changeRemark != null) {
      return changeRemark(remark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return changeRemark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (changeRemark != null) {
      return changeRemark(this);
    }
    return orElse();
  }
}

abstract class _ChangeRemark implements PurchasePackageEvent {
  const factory _ChangeRemark(String remark) = _$_ChangeRemark;

  String get remark => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeRemarkCopyWith<_ChangeRemark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetInitialStateCopyWith<$Res> {
  factory _$SetInitialStateCopyWith(
          _SetInitialState value, $Res Function(_SetInitialState) then) =
      __$SetInitialStateCopyWithImpl<$Res>;
  $Res call({ServicePackage package});
}

/// @nodoc
class __$SetInitialStateCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$SetInitialStateCopyWith<$Res> {
  __$SetInitialStateCopyWithImpl(
      _SetInitialState _value, $Res Function(_SetInitialState) _then)
      : super(_value, (v) => _then(v as _SetInitialState));

  @override
  _SetInitialState get _value => super._value as _SetInitialState;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_SetInitialState(
      package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as ServicePackage,
    ));
  }
}

/// @nodoc

class _$_SetInitialState
    with DiagnosticableTreeMixin
    implements _SetInitialState {
  const _$_SetInitialState(this.package);

  @override
  final ServicePackage package;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.setInitialState(package: $package)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasePackageEvent.setInitialState'))
      ..add(DiagnosticsProperty('package', package));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetInitialState &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(package);

  @JsonKey(ignore: true)
  @override
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      __$SetInitialStateCopyWithImpl<_SetInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return setInitialState(package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return setInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (setInitialState != null) {
      return setInitialState(this);
    }
    return orElse();
  }
}

abstract class _SetInitialState implements PurchasePackageEvent {
  const factory _SetInitialState(ServicePackage package) = _$_SetInitialState;

  ServicePackage get package => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetInitialStateCopyWith<_SetInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeCouponCopyWith<$Res> {
  factory _$ChangeCouponCopyWith(
          _ChangeCoupon value, $Res Function(_ChangeCoupon) then) =
      __$ChangeCouponCopyWithImpl<$Res>;
  $Res call({String coupon});
}

/// @nodoc
class __$ChangeCouponCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$ChangeCouponCopyWith<$Res> {
  __$ChangeCouponCopyWithImpl(
      _ChangeCoupon _value, $Res Function(_ChangeCoupon) _then)
      : super(_value, (v) => _then(v as _ChangeCoupon));

  @override
  _ChangeCoupon get _value => super._value as _ChangeCoupon;

  @override
  $Res call({
    Object? coupon = freezed,
  }) {
    return _then(_ChangeCoupon(
      coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeCoupon with DiagnosticableTreeMixin implements _ChangeCoupon {
  const _$_ChangeCoupon(this.coupon);

  @override
  final String coupon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.changeCoupon(coupon: $coupon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasePackageEvent.changeCoupon'))
      ..add(DiagnosticsProperty('coupon', coupon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCoupon &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coupon);

  @JsonKey(ignore: true)
  @override
  _$ChangeCouponCopyWith<_ChangeCoupon> get copyWith =>
      __$ChangeCouponCopyWithImpl<_ChangeCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return changeCoupon(coupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (changeCoupon != null) {
      return changeCoupon(coupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return changeCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (changeCoupon != null) {
      return changeCoupon(this);
    }
    return orElse();
  }
}

abstract class _ChangeCoupon implements PurchasePackageEvent {
  const factory _ChangeCoupon(String coupon) = _$_ChangeCoupon;

  String get coupon => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeCouponCopyWith<_ChangeCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCashbackpercentageCopyWith<$Res> {
  factory _$SetCashbackpercentageCopyWith(_SetCashbackpercentage value,
          $Res Function(_SetCashbackpercentage) then) =
      __$SetCashbackpercentageCopyWithImpl<$Res>;
  $Res call({double percentage});
}

/// @nodoc
class __$SetCashbackpercentageCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$SetCashbackpercentageCopyWith<$Res> {
  __$SetCashbackpercentageCopyWithImpl(_SetCashbackpercentage _value,
      $Res Function(_SetCashbackpercentage) _then)
      : super(_value, (v) => _then(v as _SetCashbackpercentage));

  @override
  _SetCashbackpercentage get _value => super._value as _SetCashbackpercentage;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_SetCashbackpercentage(
      percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetCashbackpercentage
    with DiagnosticableTreeMixin
    implements _SetCashbackpercentage {
  const _$_SetCashbackpercentage(this.percentage);

  @override
  final double percentage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.setCashbackpercentage(percentage: $percentage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PurchasePackageEvent.setCashbackpercentage'))
      ..add(DiagnosticsProperty('percentage', percentage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetCashbackpercentage &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$SetCashbackpercentageCopyWith<_SetCashbackpercentage> get copyWith =>
      __$SetCashbackpercentageCopyWithImpl<_SetCashbackpercentage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return setCashbackpercentage(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (setCashbackpercentage != null) {
      return setCashbackpercentage(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return setCashbackpercentage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (setCashbackpercentage != null) {
      return setCashbackpercentage(this);
    }
    return orElse();
  }
}

abstract class _SetCashbackpercentage implements PurchasePackageEvent {
  const factory _SetCashbackpercentage(double percentage) =
      _$_SetCashbackpercentage;

  double get percentage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetCashbackpercentageCopyWith<_SetCashbackpercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetDiscountpercentageCopyWith<$Res> {
  factory _$SetDiscountpercentageCopyWith(_SetDiscountpercentage value,
          $Res Function(_SetDiscountpercentage) then) =
      __$SetDiscountpercentageCopyWithImpl<$Res>;
  $Res call({double percentage});
}

/// @nodoc
class __$SetDiscountpercentageCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$SetDiscountpercentageCopyWith<$Res> {
  __$SetDiscountpercentageCopyWithImpl(_SetDiscountpercentage _value,
      $Res Function(_SetDiscountpercentage) _then)
      : super(_value, (v) => _then(v as _SetDiscountpercentage));

  @override
  _SetDiscountpercentage get _value => super._value as _SetDiscountpercentage;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_SetDiscountpercentage(
      percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetDiscountpercentage
    with DiagnosticableTreeMixin
    implements _SetDiscountpercentage {
  const _$_SetDiscountpercentage(this.percentage);

  @override
  final double percentage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.setDiscountpercentage(percentage: $percentage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PurchasePackageEvent.setDiscountpercentage'))
      ..add(DiagnosticsProperty('percentage', percentage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetDiscountpercentage &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$SetDiscountpercentageCopyWith<_SetDiscountpercentage> get copyWith =>
      __$SetDiscountpercentageCopyWithImpl<_SetDiscountpercentage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return setDiscountpercentage(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (setDiscountpercentage != null) {
      return setDiscountpercentage(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return setDiscountpercentage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (setDiscountpercentage != null) {
      return setDiscountpercentage(this);
    }
    return orElse();
  }
}

abstract class _SetDiscountpercentage implements PurchasePackageEvent {
  const factory _SetDiscountpercentage(double percentage) =
      _$_SetDiscountpercentage;

  double get percentage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetDiscountpercentageCopyWith<_SetDiscountpercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetRedeemPointCopyWith<$Res> {
  factory _$SetRedeemPointCopyWith(
          _SetRedeemPoint value, $Res Function(_SetRedeemPoint) then) =
      __$SetRedeemPointCopyWithImpl<$Res>;
  $Res call({double point});
}

/// @nodoc
class __$SetRedeemPointCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$SetRedeemPointCopyWith<$Res> {
  __$SetRedeemPointCopyWithImpl(
      _SetRedeemPoint _value, $Res Function(_SetRedeemPoint) _then)
      : super(_value, (v) => _then(v as _SetRedeemPoint));

  @override
  _SetRedeemPoint get _value => super._value as _SetRedeemPoint;

  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(_SetRedeemPoint(
      point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetRedeemPoint
    with DiagnosticableTreeMixin
    implements _SetRedeemPoint {
  const _$_SetRedeemPoint(this.point);

  @override
  final double point;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.setRewardPoint(point: $point)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasePackageEvent.setRewardPoint'))
      ..add(DiagnosticsProperty('point', point));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetRedeemPoint &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$SetRedeemPointCopyWith<_SetRedeemPoint> get copyWith =>
      __$SetRedeemPointCopyWithImpl<_SetRedeemPoint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return setRewardPoint(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (setRewardPoint != null) {
      return setRewardPoint(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return setRewardPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (setRewardPoint != null) {
      return setRewardPoint(this);
    }
    return orElse();
  }
}

abstract class _SetRedeemPoint implements PurchasePackageEvent {
  const factory _SetRedeemPoint(double point) = _$_SetRedeemPoint;

  double get point => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetRedeemPointCopyWith<_SetRedeemPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetRedeemPointFromCouponCopyWith<$Res> {
  factory _$SetRedeemPointFromCouponCopyWith(_SetRedeemPointFromCoupon value,
          $Res Function(_SetRedeemPointFromCoupon) then) =
      __$SetRedeemPointFromCouponCopyWithImpl<$Res>;
  $Res call({double point});
}

/// @nodoc
class __$SetRedeemPointFromCouponCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$SetRedeemPointFromCouponCopyWith<$Res> {
  __$SetRedeemPointFromCouponCopyWithImpl(_SetRedeemPointFromCoupon _value,
      $Res Function(_SetRedeemPointFromCoupon) _then)
      : super(_value, (v) => _then(v as _SetRedeemPointFromCoupon));

  @override
  _SetRedeemPointFromCoupon get _value =>
      super._value as _SetRedeemPointFromCoupon;

  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(_SetRedeemPointFromCoupon(
      point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SetRedeemPointFromCoupon
    with DiagnosticableTreeMixin
    implements _SetRedeemPointFromCoupon {
  const _$_SetRedeemPointFromCoupon(this.point);

  @override
  final double point;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.setRewardPointFromCoupon(point: $point)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PurchasePackageEvent.setRewardPointFromCoupon'))
      ..add(DiagnosticsProperty('point', point));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetRedeemPointFromCoupon &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$SetRedeemPointFromCouponCopyWith<_SetRedeemPointFromCoupon> get copyWith =>
      __$SetRedeemPointFromCouponCopyWithImpl<_SetRedeemPointFromCoupon>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return setRewardPointFromCoupon(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (setRewardPointFromCoupon != null) {
      return setRewardPointFromCoupon(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return setRewardPointFromCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (setRewardPointFromCoupon != null) {
      return setRewardPointFromCoupon(this);
    }
    return orElse();
  }
}

abstract class _SetRedeemPointFromCoupon implements PurchasePackageEvent {
  const factory _SetRedeemPointFromCoupon(double point) =
      _$_SetRedeemPointFromCoupon;

  double get point => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetRedeemPointFromCouponCopyWith<_SetRedeemPointFromCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PurchaseCopyWith<$Res> {
  factory _$PurchaseCopyWith(_Purchase value, $Res Function(_Purchase) then) =
      __$PurchaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$PurchaseCopyWithImpl<$Res>
    extends _$PurchasePackageEventCopyWithImpl<$Res>
    implements _$PurchaseCopyWith<$Res> {
  __$PurchaseCopyWithImpl(_Purchase _value, $Res Function(_Purchase) _then)
      : super(_value, (v) => _then(v as _Purchase));

  @override
  _Purchase get _value => super._value as _Purchase;
}

/// @nodoc

class _$_Purchase with DiagnosticableTreeMixin implements _Purchase {
  const _$_Purchase();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageEvent.purchase()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasePackageEvent.purchase'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Purchase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) changeCustomerName,
    required TResult Function(String id) changeCustomerId,
    required TResult Function(String remark) changeRemark,
    required TResult Function(ServicePackage package) setInitialState,
    required TResult Function(String coupon) changeCoupon,
    required TResult Function(double percentage) setCashbackpercentage,
    required TResult Function(double percentage) setDiscountpercentage,
    required TResult Function(double point) setRewardPoint,
    required TResult Function(double point) setRewardPointFromCoupon,
    required TResult Function() purchase,
  }) {
    return purchase();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? changeCustomerName,
    TResult Function(String id)? changeCustomerId,
    TResult Function(String remark)? changeRemark,
    TResult Function(ServicePackage package)? setInitialState,
    TResult Function(String coupon)? changeCoupon,
    TResult Function(double percentage)? setCashbackpercentage,
    TResult Function(double percentage)? setDiscountpercentage,
    TResult Function(double point)? setRewardPoint,
    TResult Function(double point)? setRewardPointFromCoupon,
    TResult Function()? purchase,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCustomerName value) changeCustomerName,
    required TResult Function(_ChangeCustomerId value) changeCustomerId,
    required TResult Function(_ChangeRemark value) changeRemark,
    required TResult Function(_SetInitialState value) setInitialState,
    required TResult Function(_ChangeCoupon value) changeCoupon,
    required TResult Function(_SetCashbackpercentage value)
        setCashbackpercentage,
    required TResult Function(_SetDiscountpercentage value)
        setDiscountpercentage,
    required TResult Function(_SetRedeemPoint value) setRewardPoint,
    required TResult Function(_SetRedeemPointFromCoupon value)
        setRewardPointFromCoupon,
    required TResult Function(_Purchase value) purchase,
  }) {
    return purchase(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCustomerName value)? changeCustomerName,
    TResult Function(_ChangeCustomerId value)? changeCustomerId,
    TResult Function(_ChangeRemark value)? changeRemark,
    TResult Function(_SetInitialState value)? setInitialState,
    TResult Function(_ChangeCoupon value)? changeCoupon,
    TResult Function(_SetCashbackpercentage value)? setCashbackpercentage,
    TResult Function(_SetDiscountpercentage value)? setDiscountpercentage,
    TResult Function(_SetRedeemPoint value)? setRewardPoint,
    TResult Function(_SetRedeemPointFromCoupon value)? setRewardPointFromCoupon,
    TResult Function(_Purchase value)? purchase,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(this);
    }
    return orElse();
  }
}

abstract class _Purchase implements PurchasePackageEvent {
  const factory _Purchase() = _$_Purchase;
}

/// @nodoc
class _$PurchasePackageStateTearOff {
  const _$PurchasePackageStateTearOff();

  _PurchasePackageState call(
      {required Key key,
      required String customerName,
      required String customerId,
      required int packageId,
      required int serviceId,
      required String packageName,
      required double amount,
      required String remark,
      required String coupon,
      required double cashbackPercentage,
      required double discountPercentage,
      required double rewardPoint,
      required double rewardPointFromCoupon,
      required bool isSubmitting,
      required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) {
    return _PurchasePackageState(
      key: key,
      customerName: customerName,
      customerId: customerId,
      packageId: packageId,
      serviceId: serviceId,
      packageName: packageName,
      amount: amount,
      remark: remark,
      coupon: coupon,
      cashbackPercentage: cashbackPercentage,
      discountPercentage: discountPercentage,
      rewardPoint: rewardPoint,
      rewardPointFromCoupon: rewardPointFromCoupon,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PurchasePackageState = _$PurchasePackageStateTearOff();

/// @nodoc
mixin _$PurchasePackageState {
  Key get key => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  int get packageId => throw _privateConstructorUsedError;
  int get serviceId => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get coupon => throw _privateConstructorUsedError;
  double get cashbackPercentage => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rewardPoint => throw _privateConstructorUsedError;
  double get rewardPointFromCoupon => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchasePackageStateCopyWith<PurchasePackageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePackageStateCopyWith<$Res> {
  factory $PurchasePackageStateCopyWith(PurchasePackageState value,
          $Res Function(PurchasePackageState) then) =
      _$PurchasePackageStateCopyWithImpl<$Res>;
  $Res call(
      {Key key,
      String customerName,
      String customerId,
      int packageId,
      int serviceId,
      String packageName,
      double amount,
      String remark,
      String coupon,
      double cashbackPercentage,
      double discountPercentage,
      double rewardPoint,
      double rewardPointFromCoupon,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$PurchasePackageStateCopyWithImpl<$Res>
    implements $PurchasePackageStateCopyWith<$Res> {
  _$PurchasePackageStateCopyWithImpl(this._value, this._then);

  final PurchasePackageState _value;
  // ignore: unused_field
  final $Res Function(PurchasePackageState) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? customerName = freezed,
    Object? customerId = freezed,
    Object? packageId = freezed,
    Object? serviceId = freezed,
    Object? packageName = freezed,
    Object? amount = freezed,
    Object? remark = freezed,
    Object? coupon = freezed,
    Object? cashbackPercentage = freezed,
    Object? discountPercentage = freezed,
    Object? rewardPoint = freezed,
    Object? rewardPointFromCoupon = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: packageId == freezed
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      cashbackPercentage: cashbackPercentage == freezed
          ? _value.cashbackPercentage
          : cashbackPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPoint: rewardPoint == freezed
          ? _value.rewardPoint
          : rewardPoint // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPointFromCoupon: rewardPointFromCoupon == freezed
          ? _value.rewardPointFromCoupon
          : rewardPointFromCoupon // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$PurchasePackageStateCopyWith<$Res>
    implements $PurchasePackageStateCopyWith<$Res> {
  factory _$PurchasePackageStateCopyWith(_PurchasePackageState value,
          $Res Function(_PurchasePackageState) then) =
      __$PurchasePackageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key key,
      String customerName,
      String customerId,
      int packageId,
      int serviceId,
      String packageName,
      double amount,
      String remark,
      String coupon,
      double cashbackPercentage,
      double discountPercentage,
      double rewardPoint,
      double rewardPointFromCoupon,
      bool isSubmitting,
      Option<Either<ApiFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$PurchasePackageStateCopyWithImpl<$Res>
    extends _$PurchasePackageStateCopyWithImpl<$Res>
    implements _$PurchasePackageStateCopyWith<$Res> {
  __$PurchasePackageStateCopyWithImpl(
      _PurchasePackageState _value, $Res Function(_PurchasePackageState) _then)
      : super(_value, (v) => _then(v as _PurchasePackageState));

  @override
  _PurchasePackageState get _value => super._value as _PurchasePackageState;

  @override
  $Res call({
    Object? key = freezed,
    Object? customerName = freezed,
    Object? customerId = freezed,
    Object? packageId = freezed,
    Object? serviceId = freezed,
    Object? packageName = freezed,
    Object? amount = freezed,
    Object? remark = freezed,
    Object? coupon = freezed,
    Object? cashbackPercentage = freezed,
    Object? discountPercentage = freezed,
    Object? rewardPoint = freezed,
    Object? rewardPointFromCoupon = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_PurchasePackageState(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: packageId == freezed
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      cashbackPercentage: cashbackPercentage == freezed
          ? _value.cashbackPercentage
          : cashbackPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPoint: rewardPoint == freezed
          ? _value.rewardPoint
          : rewardPoint // ignore: cast_nullable_to_non_nullable
              as double,
      rewardPointFromCoupon: rewardPointFromCoupon == freezed
          ? _value.rewardPointFromCoupon
          : rewardPointFromCoupon // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$_PurchasePackageState
    with DiagnosticableTreeMixin
    implements _PurchasePackageState {
  const _$_PurchasePackageState(
      {required this.key,
      required this.customerName,
      required this.customerId,
      required this.packageId,
      required this.serviceId,
      required this.packageName,
      required this.amount,
      required this.remark,
      required this.coupon,
      required this.cashbackPercentage,
      required this.discountPercentage,
      required this.rewardPoint,
      required this.rewardPointFromCoupon,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final Key key;
  @override
  final String customerName;
  @override
  final String customerId;
  @override
  final int packageId;
  @override
  final int serviceId;
  @override
  final String packageName;
  @override
  final double amount;
  @override
  final String remark;
  @override
  final String coupon;
  @override
  final double cashbackPercentage;
  @override
  final double discountPercentage;
  @override
  final double rewardPoint;
  @override
  final double rewardPointFromCoupon;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, Unit>> failureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasePackageState(key: $key, customerName: $customerName, customerId: $customerId, packageId: $packageId, serviceId: $serviceId, packageName: $packageName, amount: $amount, remark: $remark, coupon: $coupon, cashbackPercentage: $cashbackPercentage, discountPercentage: $discountPercentage, rewardPoint: $rewardPoint, rewardPointFromCoupon: $rewardPointFromCoupon, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasePackageState'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('customerName', customerName))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('packageId', packageId))
      ..add(DiagnosticsProperty('serviceId', serviceId))
      ..add(DiagnosticsProperty('packageName', packageName))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('remark', remark))
      ..add(DiagnosticsProperty('coupon', coupon))
      ..add(DiagnosticsProperty('cashbackPercentage', cashbackPercentage))
      ..add(DiagnosticsProperty('discountPercentage', discountPercentage))
      ..add(DiagnosticsProperty('rewardPoint', rewardPoint))
      ..add(DiagnosticsProperty('rewardPointFromCoupon', rewardPointFromCoupon))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'failureOrSuccessOption', failureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchasePackageState &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.packageId, packageId) ||
                const DeepCollectionEquality()
                    .equals(other.packageId, packageId)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)) &&
            (identical(other.cashbackPercentage, cashbackPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.cashbackPercentage, cashbackPercentage)) &&
            (identical(other.discountPercentage, discountPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.discountPercentage, discountPercentage)) &&
            (identical(other.rewardPoint, rewardPoint) ||
                const DeepCollectionEquality()
                    .equals(other.rewardPoint, rewardPoint)) &&
            (identical(other.rewardPointFromCoupon, rewardPointFromCoupon) ||
                const DeepCollectionEquality().equals(
                    other.rewardPointFromCoupon, rewardPointFromCoupon)) &&
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
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(packageId) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(coupon) ^
      const DeepCollectionEquality().hash(cashbackPercentage) ^
      const DeepCollectionEquality().hash(discountPercentage) ^
      const DeepCollectionEquality().hash(rewardPoint) ^
      const DeepCollectionEquality().hash(rewardPointFromCoupon) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PurchasePackageStateCopyWith<_PurchasePackageState> get copyWith =>
      __$PurchasePackageStateCopyWithImpl<_PurchasePackageState>(
          this, _$identity);
}

abstract class _PurchasePackageState implements PurchasePackageState {
  const factory _PurchasePackageState(
          {required Key key,
          required String customerName,
          required String customerId,
          required int packageId,
          required int serviceId,
          required String packageName,
          required double amount,
          required String remark,
          required String coupon,
          required double cashbackPercentage,
          required double discountPercentage,
          required double rewardPoint,
          required double rewardPointFromCoupon,
          required bool isSubmitting,
          required Option<Either<ApiFailure, Unit>> failureOrSuccessOption}) =
      _$_PurchasePackageState;

  @override
  Key get key => throw _privateConstructorUsedError;
  @override
  String get customerName => throw _privateConstructorUsedError;
  @override
  String get customerId => throw _privateConstructorUsedError;
  @override
  int get packageId => throw _privateConstructorUsedError;
  @override
  int get serviceId => throw _privateConstructorUsedError;
  @override
  String get packageName => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get remark => throw _privateConstructorUsedError;
  @override
  String get coupon => throw _privateConstructorUsedError;
  @override
  double get cashbackPercentage => throw _privateConstructorUsedError;
  @override
  double get discountPercentage => throw _privateConstructorUsedError;
  @override
  double get rewardPoint => throw _privateConstructorUsedError;
  @override
  double get rewardPointFromCoupon => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchasePackageStateCopyWith<_PurchasePackageState> get copyWith =>
      throw _privateConstructorUsedError;
}
