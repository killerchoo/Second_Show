// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataCopyWith<$Res> {
  factory _$$GetHomeScreenDataCopyWith(
          _$GetHomeScreenData value, $Res Function(_$GetHomeScreenData) then) =
      __$$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeScreenData>
    implements _$$GetHomeScreenDataCopyWith<$Res> {
  __$$GetHomeScreenDataCopyWithImpl(
      _$GetHomeScreenData _value, $Res Function(_$GetHomeScreenData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<NewAndHotData> get passYearMovieList =>
      throw _privateConstructorUsedError;
  List<NewAndHotData> get trandingMovieList =>
      throw _privateConstructorUsedError;
  List<NewAndHotData> get transDramaMovieList =>
      throw _privateConstructorUsedError;
  List<NewAndHotData> get southIndianMovieList =>
      throw _privateConstructorUsedError;
  List<NewAndHotData> get trandingTvList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasErorr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String stateId,
      List<NewAndHotData> passYearMovieList,
      List<NewAndHotData> trandingMovieList,
      List<NewAndHotData> transDramaMovieList,
      List<NewAndHotData> southIndianMovieList,
      List<NewAndHotData> trandingTvList,
      bool isLoading,
      bool hasErorr});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? passYearMovieList = null,
    Object? trandingMovieList = null,
    Object? transDramaMovieList = null,
    Object? southIndianMovieList = null,
    Object? trandingTvList = null,
    Object? isLoading = null,
    Object? hasErorr = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      passYearMovieList: null == passYearMovieList
          ? _value.passYearMovieList
          : passYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      trandingMovieList: null == trandingMovieList
          ? _value.trandingMovieList
          : trandingMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      transDramaMovieList: null == transDramaMovieList
          ? _value.transDramaMovieList
          : transDramaMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      southIndianMovieList: null == southIndianMovieList
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      trandingTvList: null == trandingTvList
          ? _value.trandingTvList
          : trandingTvList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErorr: null == hasErorr
          ? _value.hasErorr
          : hasErorr // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<NewAndHotData> passYearMovieList,
      List<NewAndHotData> trandingMovieList,
      List<NewAndHotData> transDramaMovieList,
      List<NewAndHotData> southIndianMovieList,
      List<NewAndHotData> trandingTvList,
      bool isLoading,
      bool hasErorr});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? passYearMovieList = null,
    Object? trandingMovieList = null,
    Object? transDramaMovieList = null,
    Object? southIndianMovieList = null,
    Object? trandingTvList = null,
    Object? isLoading = null,
    Object? hasErorr = null,
  }) {
    return _then(_$_Initial(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      passYearMovieList: null == passYearMovieList
          ? _value._passYearMovieList
          : passYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      trandingMovieList: null == trandingMovieList
          ? _value._trandingMovieList
          : trandingMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      transDramaMovieList: null == transDramaMovieList
          ? _value._transDramaMovieList
          : transDramaMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      southIndianMovieList: null == southIndianMovieList
          ? _value._southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      trandingTvList: null == trandingTvList
          ? _value._trandingTvList
          : trandingTvList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErorr: null == hasErorr
          ? _value.hasErorr
          : hasErorr // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required final List<NewAndHotData> passYearMovieList,
      required final List<NewAndHotData> trandingMovieList,
      required final List<NewAndHotData> transDramaMovieList,
      required final List<NewAndHotData> southIndianMovieList,
      required final List<NewAndHotData> trandingTvList,
      required this.isLoading,
      required this.hasErorr})
      : _passYearMovieList = passYearMovieList,
        _trandingMovieList = trandingMovieList,
        _transDramaMovieList = transDramaMovieList,
        _southIndianMovieList = southIndianMovieList,
        _trandingTvList = trandingTvList;

  @override
  final String stateId;
  final List<NewAndHotData> _passYearMovieList;
  @override
  List<NewAndHotData> get passYearMovieList {
    if (_passYearMovieList is EqualUnmodifiableListView)
      return _passYearMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passYearMovieList);
  }

  final List<NewAndHotData> _trandingMovieList;
  @override
  List<NewAndHotData> get trandingMovieList {
    if (_trandingMovieList is EqualUnmodifiableListView)
      return _trandingMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trandingMovieList);
  }

  final List<NewAndHotData> _transDramaMovieList;
  @override
  List<NewAndHotData> get transDramaMovieList {
    if (_transDramaMovieList is EqualUnmodifiableListView)
      return _transDramaMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transDramaMovieList);
  }

  final List<NewAndHotData> _southIndianMovieList;
  @override
  List<NewAndHotData> get southIndianMovieList {
    if (_southIndianMovieList is EqualUnmodifiableListView)
      return _southIndianMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianMovieList);
  }

  final List<NewAndHotData> _trandingTvList;
  @override
  List<NewAndHotData> get trandingTvList {
    if (_trandingTvList is EqualUnmodifiableListView) return _trandingTvList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trandingTvList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasErorr;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, passYearMovieList: $passYearMovieList, trandingMovieList: $trandingMovieList, transDramaMovieList: $transDramaMovieList, southIndianMovieList: $southIndianMovieList, trandingTvList: $trandingTvList, isLoading: $isLoading, hasErorr: $hasErorr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality()
                .equals(other._passYearMovieList, _passYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trandingMovieList, _trandingMovieList) &&
            const DeepCollectionEquality()
                .equals(other._transDramaMovieList, _transDramaMovieList) &&
            const DeepCollectionEquality()
                .equals(other._southIndianMovieList, _southIndianMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trandingTvList, _trandingTvList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasErorr, hasErorr) ||
                other.hasErorr == hasErorr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_passYearMovieList),
      const DeepCollectionEquality().hash(_trandingMovieList),
      const DeepCollectionEquality().hash(_transDramaMovieList),
      const DeepCollectionEquality().hash(_southIndianMovieList),
      const DeepCollectionEquality().hash(_trandingTvList),
      isLoading,
      hasErorr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<NewAndHotData> passYearMovieList,
      required final List<NewAndHotData> trandingMovieList,
      required final List<NewAndHotData> transDramaMovieList,
      required final List<NewAndHotData> southIndianMovieList,
      required final List<NewAndHotData> trandingTvList,
      required final bool isLoading,
      required final bool hasErorr}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<NewAndHotData> get passYearMovieList;
  @override
  List<NewAndHotData> get trandingMovieList;
  @override
  List<NewAndHotData> get transDramaMovieList;
  @override
  List<NewAndHotData> get southIndianMovieList;
  @override
  List<NewAndHotData> get trandingTvList;
  @override
  bool get isLoading;
  @override
  bool get hasErorr;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
