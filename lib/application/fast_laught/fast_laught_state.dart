part of 'fast_laught_bloc.dart';

@freezed
class FastLaughtState with _$FastLaughtState {
  const factory FastLaughtState({
    required List<Downloads> videolist,
    required bool isloading,
    required bool isError,
  }) = _Initial;

  factory FastLaughtState.initial() => const FastLaughtState(
        videolist: [],
        isloading: true,
        isError: false,
      );
}
