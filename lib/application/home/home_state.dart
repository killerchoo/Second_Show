part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<NewAndHotData> passYearMovieList,
    required List<NewAndHotData> trandingMovieList,
    required List<NewAndHotData> transDramaMovieList,
    required List<NewAndHotData> southIndianMovieList,
    required List<NewAndHotData> trandingTvList,
    required bool isLoading,
    required bool hasErorr,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
    stateId: '0',
      passYearMovieList: [],
      trandingMovieList: [],
      transDramaMovieList: [],
      southIndianMovieList: [],
      trandingTvList: [],
      isLoading: false,
      hasErorr: false);
}
