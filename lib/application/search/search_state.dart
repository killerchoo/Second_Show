part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchresultList,
    required List<Downloads> idleresult,
    required bool isLoading,
    required bool isEror,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchresultList: [],
        idleresult: [],
        isLoading: false,
        isEror: false,
      );

  //get idleresult => null;
}
