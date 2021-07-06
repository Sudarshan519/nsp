// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_pdf_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadPdfEventTearOff {
  const _$DownloadPdfEventTearOff();

  _StartDownloading startDownloading(
      {required bool isLinkDownloaded, required String lang}) {
    return _StartDownloading(
      isLinkDownloaded: isLinkDownloaded,
      lang: lang,
    );
  }
}

/// @nodoc
const $DownloadPdfEvent = _$DownloadPdfEventTearOff();

/// @nodoc
mixin _$DownloadPdfEvent {
  bool get isLinkDownloaded => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLinkDownloaded, String lang)
        startDownloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLinkDownloaded, String lang)? startDownloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartDownloading value) startDownloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartDownloading value)? startDownloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadPdfEventCopyWith<DownloadPdfEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadPdfEventCopyWith<$Res> {
  factory $DownloadPdfEventCopyWith(
          DownloadPdfEvent value, $Res Function(DownloadPdfEvent) then) =
      _$DownloadPdfEventCopyWithImpl<$Res>;
  $Res call({bool isLinkDownloaded, String lang});
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
    Object? isLinkDownloaded = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      isLinkDownloaded: isLinkDownloaded == freezed
          ? _value.isLinkDownloaded
          : isLinkDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({bool isLinkDownloaded, String lang});
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
    Object? isLinkDownloaded = freezed,
    Object? lang = freezed,
  }) {
    return _then(_StartDownloading(
      isLinkDownloaded: isLinkDownloaded == freezed
          ? _value.isLinkDownloaded
          : isLinkDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartDownloading implements _StartDownloading {
  const _$_StartDownloading(
      {required this.isLinkDownloaded, required this.lang});

  @override
  final bool isLinkDownloaded;
  @override
  final String lang;

  @override
  String toString() {
    return 'DownloadPdfEvent.startDownloading(isLinkDownloaded: $isLinkDownloaded, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartDownloading &&
            (identical(other.isLinkDownloaded, isLinkDownloaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLinkDownloaded, isLinkDownloaded)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLinkDownloaded) ^
      const DeepCollectionEquality().hash(lang);

  @JsonKey(ignore: true)
  @override
  _$StartDownloadingCopyWith<_StartDownloading> get copyWith =>
      __$StartDownloadingCopyWithImpl<_StartDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLinkDownloaded, String lang)
        startDownloading,
  }) {
    return startDownloading(isLinkDownloaded, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLinkDownloaded, String lang)? startDownloading,
    required TResult orElse(),
  }) {
    if (startDownloading != null) {
      return startDownloading(isLinkDownloaded, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartDownloading value) startDownloading,
  }) {
    return startDownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartDownloading value)? startDownloading,
    required TResult orElse(),
  }) {
    if (startDownloading != null) {
      return startDownloading(this);
    }
    return orElse();
  }
}

abstract class _StartDownloading implements DownloadPdfEvent {
  const factory _StartDownloading(
      {required bool isLinkDownloaded,
      required String lang}) = _$_StartDownloading;

  @override
  bool get isLinkDownloaded => throw _privateConstructorUsedError;
  @override
  String get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartDownloadingCopyWith<_StartDownloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DownloadPdfStateTearOff {
  const _$DownloadPdfStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Preparing preparing() {
    return const _Preparing();
  }

  _DownLoadableLink downLoadableLink(String url, bool isLinkDownloaded) {
    return _DownLoadableLink(
      url,
      isLinkDownloaded,
    );
  }

  _Downloading downloading(int percentage) {
    return _Downloading(
      percentage,
    );
  }

  _Downloaded downloaded() {
    return const _Downloaded();
  }

  _DownloadFailed downloadFailed(ApiFailure failure) {
    return _DownloadFailed(
      failure,
    );
  }
}

/// @nodoc
const $DownloadPdfState = _$DownloadPdfStateTearOff();

/// @nodoc
mixin _$DownloadPdfState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
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
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) {
    return preparing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) {
    return preparing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
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
    Object? url = freezed,
    Object? isLinkDownloaded = freezed,
  }) {
    return _then(_DownLoadableLink(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isLinkDownloaded == freezed
          ? _value.isLinkDownloaded
          : isLinkDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DownLoadableLink implements _DownLoadableLink {
  const _$_DownLoadableLink(this.url, this.isLinkDownloaded);

  @override // ignore: avoid_positional_boolean_parameters
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) {
    return downLoadableLink(url, isLinkDownloaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downLoadableLink != null) {
      return downLoadableLink(url, isLinkDownloaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) {
    return downLoadableLink(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downLoadableLink != null) {
      return downLoadableLink(this);
    }
    return orElse();
  }
}

abstract class _DownLoadableLink implements DownloadPdfState {
  const factory _DownLoadableLink(String url, bool isLinkDownloaded) =
      _$_DownLoadableLink;

// ignore: avoid_positional_boolean_parameters
  String get url => throw _privateConstructorUsedError;
  bool get isLinkDownloaded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DownLoadableLinkCopyWith<_DownLoadableLink> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? percentage = freezed,
  }) {
    return _then(_Downloading(
      percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Downloading implements _Downloading {
  const _$_Downloading(this.percentage);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) {
    return downloading(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _Downloading implements DownloadPdfState {
  const factory _Downloading(int percentage) = _$_Downloading;

  int get percentage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DownloadingCopyWith<_Downloading> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) {
    return downloaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
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
    Object? failure = freezed,
  }) {
    return _then(_DownloadFailed(
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

class _$_DownloadFailed implements _DownloadFailed {
  const _$_DownloadFailed(this.failure);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() preparing,
    required TResult Function(String url, bool isLinkDownloaded)
        downLoadableLink,
    required TResult Function(int percentage) downloading,
    required TResult Function() downloaded,
    required TResult Function(ApiFailure failure) downloadFailed,
  }) {
    return downloadFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? preparing,
    TResult Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult Function(int percentage)? downloading,
    TResult Function()? downloaded,
    TResult Function(ApiFailure failure)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloadFailed != null) {
      return downloadFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Preparing value) preparing,
    required TResult Function(_DownLoadableLink value) downLoadableLink,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadFailed value) downloadFailed,
  }) {
    return downloadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Preparing value)? preparing,
    TResult Function(_DownLoadableLink value)? downLoadableLink,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadFailed value)? downloadFailed,
    required TResult orElse(),
  }) {
    if (downloadFailed != null) {
      return downloadFailed(this);
    }
    return orElse();
  }
}

abstract class _DownloadFailed implements DownloadPdfState {
  const factory _DownloadFailed(ApiFailure failure) = _$_DownloadFailed;

  ApiFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DownloadFailedCopyWith<_DownloadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
