// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'download_pdf_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DownloadPdfEventTearOff {
  const _$DownloadPdfEventTearOff();

// ignore: unused_element
  _StartDownloading startDownloading({@required bool isLinkDownloaded}) {
    return _StartDownloading(
      isLinkDownloaded: isLinkDownloaded,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DownloadPdfEvent = _$DownloadPdfEventTearOff();

/// @nodoc
mixin _$DownloadPdfEvent {
  bool get isLinkDownloaded;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startDownloading(bool isLinkDownloaded),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startDownloading(bool isLinkDownloaded),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startDownloading(_StartDownloading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startDownloading(_StartDownloading value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $DownloadPdfEventCopyWith<DownloadPdfEvent> get copyWith;
}

/// @nodoc
abstract class $DownloadPdfEventCopyWith<$Res> {
  factory $DownloadPdfEventCopyWith(
          DownloadPdfEvent value, $Res Function(DownloadPdfEvent) then) =
      _$DownloadPdfEventCopyWithImpl<$Res>;
  $Res call({bool isLinkDownloaded});
}

/// @nodoc
class _$DownloadPdfEventCopyWithImpl<$Res>
    implements $DownloadPdfEventCopyWith<$Res> {
  _$DownloadPdfEventCopyWithImpl(this._value, this._then);

  final DownloadPdfEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadPdfEvent) _then;

  @override
  $Res call({
    Object isLinkDownloaded = freezed,
  }) {
    return _then(_value.copyWith(
      isLinkDownloaded: isLinkDownloaded == freezed
          ? _value.isLinkDownloaded
          : isLinkDownloaded as bool,
    ));
  }
}

/// @nodoc
abstract class _$StartDownloadingCopyWith<$Res>
    implements $DownloadPdfEventCopyWith<$Res> {
  factory _$StartDownloadingCopyWith(
          _StartDownloading value, $Res Function(_StartDownloading) then) =
      __$StartDownloadingCopyWithImpl<$Res>;
  @override
  $Res call({bool isLinkDownloaded});
}

/// @nodoc
class __$StartDownloadingCopyWithImpl<$Res>
    extends _$DownloadPdfEventCopyWithImpl<$Res>
    implements _$StartDownloadingCopyWith<$Res> {
  __$StartDownloadingCopyWithImpl(
      _StartDownloading _value, $Res Function(_StartDownloading) _then)
      : super(_value, (v) => _then(v as _StartDownloading));

  @override
  _StartDownloading get _value => super._value as _StartDownloading;

  @override
  $Res call({
    Object isLinkDownloaded = freezed,
  }) {
    return _then(_StartDownloading(
      isLinkDownloaded: isLinkDownloaded == freezed
          ? _value.isLinkDownloaded
          : isLinkDownloaded as bool,
    ));
  }
}

/// @nodoc
class _$_StartDownloading implements _StartDownloading {
  const _$_StartDownloading({@required this.isLinkDownloaded})
      : assert(isLinkDownloaded != null);

  @override
  final bool isLinkDownloaded;

  @override
  String toString() {
    return 'DownloadPdfEvent.startDownloading(isLinkDownloaded: $isLinkDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartDownloading &&
            (identical(other.isLinkDownloaded, isLinkDownloaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLinkDownloaded, isLinkDownloaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLinkDownloaded);

  @JsonKey(ignore: true)
  @override
  _$StartDownloadingCopyWith<_StartDownloading> get copyWith =>
      __$StartDownloadingCopyWithImpl<_StartDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startDownloading(bool isLinkDownloaded),
  }) {
    assert(startDownloading != null);
    return startDownloading(isLinkDownloaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startDownloading(bool isLinkDownloaded),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startDownloading != null) {
      return startDownloading(isLinkDownloaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startDownloading(_StartDownloading value),
  }) {
    assert(startDownloading != null);
    return startDownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startDownloading(_StartDownloading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startDownloading != null) {
      return startDownloading(this);
    }
    return orElse();
  }
}

abstract class _StartDownloading implements DownloadPdfEvent {
  const factory _StartDownloading({@required bool isLinkDownloaded}) =
      _$_StartDownloading;

  @override
  bool get isLinkDownloaded;
  @override
  @JsonKey(ignore: true)
  _$StartDownloadingCopyWith<_StartDownloading> get copyWith;
}

/// @nodoc
class _$DownloadPdfStateTearOff {
  const _$DownloadPdfStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Preparing preparing() {
    return const _Preparing();
  }

// ignore: unused_element
  _DownLoadableLink downLoadableLink(String url, bool isLinkDownloaded) {
    return _DownLoadableLink(
      url,
      isLinkDownloaded,
    );
  }

// ignore: unused_element
  _Downloading downloading(int percentage) {
    return _Downloading(
      percentage,
    );
  }

// ignore: unused_element
  _Downloaded downloaded() {
    return const _Downloaded();
  }

// ignore: unused_element
  _DownloadFailed downloadFailed(ApiFailure failure) {
    return _DownloadFailed(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DownloadPdfState = _$DownloadPdfStateTearOff();

/// @nodoc
mixin _$DownloadPdfState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DownloadPdfStateCopyWith<$Res> {
  factory $DownloadPdfStateCopyWith(
          DownloadPdfState value, $Res Function(DownloadPdfState) then) =
      _$DownloadPdfStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadPdfStateCopyWithImpl<$Res>
    implements $DownloadPdfStateCopyWith<$Res> {
  _$DownloadPdfStateCopyWithImpl(this._value, this._then);

  final DownloadPdfState _value;
  // ignore: unused_field
  final $Res Function(DownloadPdfState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DownloadPdfStateCopyWithImpl<$Res>
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
    return 'DownloadPdfState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DownloadPdfState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$PreparingCopyWith<$Res> {
  factory _$PreparingCopyWith(
          _Preparing value, $Res Function(_Preparing) then) =
      __$PreparingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PreparingCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res>
    implements _$PreparingCopyWith<$Res> {
  __$PreparingCopyWithImpl(_Preparing _value, $Res Function(_Preparing) _then)
      : super(_value, (v) => _then(v as _Preparing));

  @override
  _Preparing get _value => super._value as _Preparing;
}

/// @nodoc
class _$_Preparing implements _Preparing {
  const _$_Preparing();

  @override
  String toString() {
    return 'DownloadPdfState.preparing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Preparing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return preparing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preparing != null) {
      return preparing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return preparing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preparing != null) {
      return preparing(this);
    }
    return orElse();
  }
}

abstract class _Preparing implements DownloadPdfState {
  const factory _Preparing() = _$_Preparing;
}

/// @nodoc
abstract class _$DownLoadableLinkCopyWith<$Res> {
  factory _$DownLoadableLinkCopyWith(
          _DownLoadableLink value, $Res Function(_DownLoadableLink) then) =
      __$DownLoadableLinkCopyWithImpl<$Res>;
  $Res call({String url, bool isLinkDownloaded});
}

/// @nodoc
class __$DownLoadableLinkCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res>
    implements _$DownLoadableLinkCopyWith<$Res> {
  __$DownLoadableLinkCopyWithImpl(
      _DownLoadableLink _value, $Res Function(_DownLoadableLink) _then)
      : super(_value, (v) => _then(v as _DownLoadableLink));

  @override
  _DownLoadableLink get _value => super._value as _DownLoadableLink;

  @override
  $Res call({
    Object url = freezed,
    Object isLinkDownloaded = freezed,
  }) {
    return _then(_DownLoadableLink(
      url == freezed ? _value.url : url as String,
      isLinkDownloaded == freezed
          ? _value.isLinkDownloaded
          : isLinkDownloaded as bool,
    ));
  }
}

/// @nodoc
class _$_DownLoadableLink implements _DownLoadableLink {
  const _$_DownLoadableLink(this.url, this.isLinkDownloaded)
      : assert(url != null),
        assert(isLinkDownloaded != null);

  @override
  final String url;
  @override
  final bool isLinkDownloaded;

  @override
  String toString() {
    return 'DownloadPdfState.downLoadableLink(url: $url, isLinkDownloaded: $isLinkDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownLoadableLink &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.isLinkDownloaded, isLinkDownloaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLinkDownloaded, isLinkDownloaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(isLinkDownloaded);

  @JsonKey(ignore: true)
  @override
  _$DownLoadableLinkCopyWith<_DownLoadableLink> get copyWith =>
      __$DownLoadableLinkCopyWithImpl<_DownLoadableLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downLoadableLink(url, isLinkDownloaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downLoadableLink != null) {
      return downLoadableLink(url, isLinkDownloaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downLoadableLink(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downLoadableLink != null) {
      return downLoadableLink(this);
    }
    return orElse();
  }
}

abstract class _DownLoadableLink implements DownloadPdfState {
  const factory _DownLoadableLink(String url, bool isLinkDownloaded) =
      _$_DownLoadableLink;

  String get url;
  bool get isLinkDownloaded;
  @JsonKey(ignore: true)
  _$DownLoadableLinkCopyWith<_DownLoadableLink> get copyWith;
}

/// @nodoc
abstract class _$DownloadingCopyWith<$Res> {
  factory _$DownloadingCopyWith(
          _Downloading value, $Res Function(_Downloading) then) =
      __$DownloadingCopyWithImpl<$Res>;
  $Res call({int percentage});
}

/// @nodoc
class __$DownloadingCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res>
    implements _$DownloadingCopyWith<$Res> {
  __$DownloadingCopyWithImpl(
      _Downloading _value, $Res Function(_Downloading) _then)
      : super(_value, (v) => _then(v as _Downloading));

  @override
  _Downloading get _value => super._value as _Downloading;

  @override
  $Res call({
    Object percentage = freezed,
  }) {
    return _then(_Downloading(
      percentage == freezed ? _value.percentage : percentage as int,
    ));
  }
}

/// @nodoc
class _$_Downloading implements _Downloading {
  const _$_Downloading(this.percentage) : assert(percentage != null);

  @override
  final int percentage;

  @override
  String toString() {
    return 'DownloadPdfState.downloading(percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Downloading &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$DownloadingCopyWith<_Downloading> get copyWith =>
      __$DownloadingCopyWithImpl<_Downloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downloading(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloading != null) {
      return downloading(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _Downloading implements DownloadPdfState {
  const factory _Downloading(int percentage) = _$_Downloading;

  int get percentage;
  @JsonKey(ignore: true)
  _$DownloadingCopyWith<_Downloading> get copyWith;
}

/// @nodoc
abstract class _$DownloadedCopyWith<$Res> {
  factory _$DownloadedCopyWith(
          _Downloaded value, $Res Function(_Downloaded) then) =
      __$DownloadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DownloadedCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res>
    implements _$DownloadedCopyWith<$Res> {
  __$DownloadedCopyWithImpl(
      _Downloaded _value, $Res Function(_Downloaded) _then)
      : super(_value, (v) => _then(v as _Downloaded));

  @override
  _Downloaded get _value => super._value as _Downloaded;
}

/// @nodoc
class _$_Downloaded implements _Downloaded {
  const _$_Downloaded();

  @override
  String toString() {
    return 'DownloadPdfState.downloaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Downloaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downloaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloaded != null) {
      return downloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class _Downloaded implements DownloadPdfState {
  const factory _Downloaded() = _$_Downloaded;
}

/// @nodoc
abstract class _$DownloadFailedCopyWith<$Res> {
  factory _$DownloadFailedCopyWith(
          _DownloadFailed value, $Res Function(_DownloadFailed) then) =
      __$DownloadFailedCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$DownloadFailedCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res>
    implements _$DownloadFailedCopyWith<$Res> {
  __$DownloadFailedCopyWithImpl(
      _DownloadFailed _value, $Res Function(_DownloadFailed) _then)
      : super(_value, (v) => _then(v as _DownloadFailed));

  @override
  _DownloadFailed get _value => super._value as _DownloadFailed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DownloadFailed(
      failure == freezed ? _value.failure : failure as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_DownloadFailed implements _DownloadFailed {
  const _$_DownloadFailed(this.failure) : assert(failure != null);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'DownloadPdfState.downloadFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DownloadFailedCopyWith<_DownloadFailed> get copyWith =>
      __$DownloadFailedCopyWithImpl<_DownloadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult preparing(),
    @required TResult downLoadableLink(String url, bool isLinkDownloaded),
    @required TResult downloading(int percentage),
    @required TResult downloaded(),
    @required TResult downloadFailed(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downloadFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult preparing(),
    TResult downLoadableLink(String url, bool isLinkDownloaded),
    TResult downloading(int percentage),
    TResult downloaded(),
    TResult downloadFailed(ApiFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadFailed != null) {
      return downloadFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult preparing(_Preparing value),
    @required TResult downLoadableLink(_DownLoadableLink value),
    @required TResult downloading(_Downloading value),
    @required TResult downloaded(_Downloaded value),
    @required TResult downloadFailed(_DownloadFailed value),
  }) {
    assert(initial != null);
    assert(preparing != null);
    assert(downLoadableLink != null);
    assert(downloading != null);
    assert(downloaded != null);
    assert(downloadFailed != null);
    return downloadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult preparing(_Preparing value),
    TResult downLoadableLink(_DownLoadableLink value),
    TResult downloading(_Downloading value),
    TResult downloaded(_Downloaded value),
    TResult downloadFailed(_DownloadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadFailed != null) {
      return downloadFailed(this);
    }
    return orElse();
  }
}

abstract class _DownloadFailed implements DownloadPdfState {
  const factory _DownloadFailed(ApiFailure failure) = _$_DownloadFailed;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$DownloadFailedCopyWith<_DownloadFailed> get copyWith;
}
