// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_pdf_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLinkDownloaded, String lang)? startDownloading,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartDownloading value)? startDownloading,
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
      _$DownloadPdfEventCopyWithImpl<$Res, DownloadPdfEvent>;
  @useResult
  $Res call({bool isLinkDownloaded, String lang});
}

/// @nodoc
class _$DownloadPdfEventCopyWithImpl<$Res, $Val extends DownloadPdfEvent>
    implements $DownloadPdfEventCopyWith<$Res> {
  _$DownloadPdfEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLinkDownloaded = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      isLinkDownloaded: null == isLinkDownloaded
          ? _value.isLinkDownloaded
          : isLinkDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartDownloadingCopyWith<$Res>
    implements $DownloadPdfEventCopyWith<$Res> {
  factory _$$_StartDownloadingCopyWith(
          _$_StartDownloading value, $Res Function(_$_StartDownloading) then) =
      __$$_StartDownloadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLinkDownloaded, String lang});
}

/// @nodoc
class __$$_StartDownloadingCopyWithImpl<$Res>
    extends _$DownloadPdfEventCopyWithImpl<$Res, _$_StartDownloading>
    implements _$$_StartDownloadingCopyWith<$Res> {
  __$$_StartDownloadingCopyWithImpl(
      _$_StartDownloading _value, $Res Function(_$_StartDownloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLinkDownloaded = null,
    Object? lang = null,
  }) {
    return _then(_$_StartDownloading(
      isLinkDownloaded: null == isLinkDownloaded
          ? _value.isLinkDownloaded
          : isLinkDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: null == lang
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
        (other.runtimeType == runtimeType &&
            other is _$_StartDownloading &&
            (identical(other.isLinkDownloaded, isLinkDownloaded) ||
                other.isLinkDownloaded == isLinkDownloaded) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLinkDownloaded, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartDownloadingCopyWith<_$_StartDownloading> get copyWith =>
      __$$_StartDownloadingCopyWithImpl<_$_StartDownloading>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLinkDownloaded, String lang)? startDownloading,
  }) {
    return startDownloading?.call(isLinkDownloaded, lang);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartDownloading value)? startDownloading,
  }) {
    return startDownloading?.call(this);
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
      {required final bool isLinkDownloaded,
      required final String lang}) = _$_StartDownloading;

  @override
  bool get isLinkDownloaded;
  @override
  String get lang;
  @override
  @JsonKey(ignore: true)
  _$$_StartDownloadingCopyWith<_$_StartDownloading> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
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
      _$DownloadPdfStateCopyWithImpl<$Res, DownloadPdfState>;
}

/// @nodoc
class _$DownloadPdfStateCopyWithImpl<$Res, $Val extends DownloadPdfState>
    implements $DownloadPdfStateCopyWith<$Res> {
  _$DownloadPdfStateCopyWithImpl(this._value, this._then);

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
    extends _$DownloadPdfStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
  }) {
    return initial?.call(this);
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
abstract class _$$_PreparingCopyWith<$Res> {
  factory _$$_PreparingCopyWith(
          _$_Preparing value, $Res Function(_$_Preparing) then) =
      __$$_PreparingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PreparingCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res, _$_Preparing>
    implements _$$_PreparingCopyWith<$Res> {
  __$$_PreparingCopyWithImpl(
      _$_Preparing _value, $Res Function(_$_Preparing) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Preparing);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
  }) {
    return preparing?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
  }) {
    return preparing?.call(this);
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
abstract class _$$_DownLoadableLinkCopyWith<$Res> {
  factory _$$_DownLoadableLinkCopyWith(
          _$_DownLoadableLink value, $Res Function(_$_DownLoadableLink) then) =
      __$$_DownLoadableLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, bool isLinkDownloaded});
}

/// @nodoc
class __$$_DownLoadableLinkCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res, _$_DownLoadableLink>
    implements _$$_DownLoadableLinkCopyWith<$Res> {
  __$$_DownLoadableLinkCopyWithImpl(
      _$_DownLoadableLink _value, $Res Function(_$_DownLoadableLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? isLinkDownloaded = null,
  }) {
    return _then(_$_DownLoadableLink(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == isLinkDownloaded
          ? _value.isLinkDownloaded
          : isLinkDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DownLoadableLink implements _DownLoadableLink {
  const _$_DownLoadableLink(this.url, this.isLinkDownloaded);

// ignore: avoid_positional_boolean_parameters
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
        (other.runtimeType == runtimeType &&
            other is _$_DownLoadableLink &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isLinkDownloaded, isLinkDownloaded) ||
                other.isLinkDownloaded == isLinkDownloaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, isLinkDownloaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownLoadableLinkCopyWith<_$_DownLoadableLink> get copyWith =>
      __$$_DownLoadableLinkCopyWithImpl<_$_DownLoadableLink>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
  }) {
    return downLoadableLink?.call(url, isLinkDownloaded);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
  }) {
    return downLoadableLink?.call(this);
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
  const factory _DownLoadableLink(
      final String url, final bool isLinkDownloaded) = _$_DownLoadableLink;

// ignore: avoid_positional_boolean_parameters
  String get url;
  bool get isLinkDownloaded;
  @JsonKey(ignore: true)
  _$$_DownLoadableLinkCopyWith<_$_DownLoadableLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadingCopyWith<$Res> {
  factory _$$_DownloadingCopyWith(
          _$_Downloading value, $Res Function(_$_Downloading) then) =
      __$$_DownloadingCopyWithImpl<$Res>;
  @useResult
  $Res call({int percentage});
}

/// @nodoc
class __$$_DownloadingCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res, _$_Downloading>
    implements _$$_DownloadingCopyWith<$Res> {
  __$$_DownloadingCopyWithImpl(
      _$_Downloading _value, $Res Function(_$_Downloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
  }) {
    return _then(_$_Downloading(
      null == percentage
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
        (other.runtimeType == runtimeType &&
            other is _$_Downloading &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadingCopyWith<_$_Downloading> get copyWith =>
      __$$_DownloadingCopyWithImpl<_$_Downloading>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
  }) {
    return downloading?.call(percentage);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
  }) {
    return downloading?.call(this);
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
  const factory _Downloading(final int percentage) = _$_Downloading;

  int get percentage;
  @JsonKey(ignore: true)
  _$$_DownloadingCopyWith<_$_Downloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadedCopyWith<$Res> {
  factory _$$_DownloadedCopyWith(
          _$_Downloaded value, $Res Function(_$_Downloaded) then) =
      __$$_DownloadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadedCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res, _$_Downloaded>
    implements _$$_DownloadedCopyWith<$Res> {
  __$$_DownloadedCopyWithImpl(
      _$_Downloaded _value, $Res Function(_$_Downloaded) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Downloaded);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
  }) {
    return downloaded?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
  }) {
    return downloaded?.call(this);
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
abstract class _$$_DownloadFailedCopyWith<$Res> {
  factory _$$_DownloadFailedCopyWith(
          _$_DownloadFailed value, $Res Function(_$_DownloadFailed) then) =
      __$$_DownloadFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_DownloadFailedCopyWithImpl<$Res>
    extends _$DownloadPdfStateCopyWithImpl<$Res, _$_DownloadFailed>
    implements _$$_DownloadFailedCopyWith<$Res> {
  __$$_DownloadFailedCopyWithImpl(
      _$_DownloadFailed _value, $Res Function(_$_DownloadFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_DownloadFailed(
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
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadFailedCopyWith<_$_DownloadFailed> get copyWith =>
      __$$_DownloadFailedCopyWithImpl<_$_DownloadFailed>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? preparing,
    TResult? Function(String url, bool isLinkDownloaded)? downLoadableLink,
    TResult? Function(int percentage)? downloading,
    TResult? Function()? downloaded,
    TResult? Function(ApiFailure failure)? downloadFailed,
  }) {
    return downloadFailed?.call(failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Preparing value)? preparing,
    TResult? Function(_DownLoadableLink value)? downLoadableLink,
    TResult? Function(_Downloading value)? downloading,
    TResult? Function(_Downloaded value)? downloaded,
    TResult? Function(_DownloadFailed value)? downloadFailed,
  }) {
    return downloadFailed?.call(this);
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
  const factory _DownloadFailed(final ApiFailure failure) = _$_DownloadFailed;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_DownloadFailedCopyWith<_$_DownloadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
