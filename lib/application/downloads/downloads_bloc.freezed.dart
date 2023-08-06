// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsimage value) getDownloadsimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsimage value)? getDownloadsimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsimage value)? getDownloadsimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDownloadsimageCopyWith<$Res> {
  factory _$$_GetDownloadsimageCopyWith(_$_GetDownloadsimage value,
          $Res Function(_$_GetDownloadsimage) then) =
      __$$_GetDownloadsimageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadsimageCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$_GetDownloadsimage>
    implements _$$_GetDownloadsimageCopyWith<$Res> {
  __$$_GetDownloadsimageCopyWithImpl(
      _$_GetDownloadsimage _value, $Res Function(_$_GetDownloadsimage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDownloadsimage implements _GetDownloadsimage {
  const _$_GetDownloadsimage();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsimage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadsimage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsimage,
  }) {
    return getDownloadsimage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsimage,
  }) {
    return getDownloadsimage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsimage,
    required TResult orElse(),
  }) {
    if (getDownloadsimage != null) {
      return getDownloadsimage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsimage value) getDownloadsimage,
  }) {
    return getDownloadsimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsimage value)? getDownloadsimage,
  }) {
    return getDownloadsimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsimage value)? getDownloadsimage,
    required TResult orElse(),
  }) {
    if (getDownloadsimage != null) {
      return getDownloadsimage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsimage implements DownloadsEvent {
  const factory _GetDownloadsimage() = _$_GetDownloadsimage;
}

/// @nodoc
mixin _$DownloadState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads>? get download => throw _privateConstructorUsedError;
  Option<Either<MainFailture, List<Downloads>>>
      get downloadsFalitureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads>? download,
      Option<Either<MainFailture, List<Downloads>>>
          downloadsFalitureOrSuccessOption});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? download = freezed,
    Object? downloadsFalitureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFalitureOrSuccessOption: null == downloadsFalitureOrSuccessOption
          ? _value.downloadsFalitureOrSuccessOption
          : downloadsFalitureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailture, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadStateCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$_DownloadStateCopyWith(
          _$_DownloadState value, $Res Function(_$_DownloadState) then) =
      __$$_DownloadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads>? download,
      Option<Either<MainFailture, List<Downloads>>>
          downloadsFalitureOrSuccessOption});
}

/// @nodoc
class __$$_DownloadStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$_DownloadState>
    implements _$$_DownloadStateCopyWith<$Res> {
  __$$_DownloadStateCopyWithImpl(
      _$_DownloadState _value, $Res Function(_$_DownloadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? download = freezed,
    Object? downloadsFalitureOrSuccessOption = null,
  }) {
    return _then(_$_DownloadState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      download: freezed == download
          ? _value._download
          : download // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFalitureOrSuccessOption: null == downloadsFalitureOrSuccessOption
          ? _value.downloadsFalitureOrSuccessOption
          : downloadsFalitureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailture, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadState implements _DownloadState {
  const _$_DownloadState(
      {required this.isLoading,
      required final List<Downloads>? download,
      required this.downloadsFalitureOrSuccessOption})
      : _download = download;

  @override
  final bool isLoading;
  final List<Downloads>? _download;
  @override
  List<Downloads>? get download {
    final value = _download;
    if (value == null) return null;
    if (_download is EqualUnmodifiableListView) return _download;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailture, List<Downloads>>>
      downloadsFalitureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadState(isLoading: $isLoading, download: $download, downloadsFalitureOrSuccessOption: $downloadsFalitureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._download, _download) &&
            (identical(other.downloadsFalitureOrSuccessOption,
                    downloadsFalitureOrSuccessOption) ||
                other.downloadsFalitureOrSuccessOption ==
                    downloadsFalitureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_download),
      downloadsFalitureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      __$$_DownloadStateCopyWithImpl<_$_DownloadState>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
      {required final bool isLoading,
      required final List<Downloads>? download,
      required final Option<Either<MainFailture, List<Downloads>>>
          downloadsFalitureOrSuccessOption}) = _$_DownloadState;

  @override
  bool get isLoading;
  @override
  List<Downloads>? get download;
  @override
  Option<Either<MainFailture, List<Downloads>>>
      get downloadsFalitureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
