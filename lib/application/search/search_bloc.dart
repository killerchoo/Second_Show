import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/downloads/i_download_repo.dart';
import 'package:netfilx_app_1/domain/downloads/models/downloads.dart';
import 'package:netfilx_app_1/domain/search/model/search_responce/search_responce.dart';
import 'package:netfilx_app_1/domain/search/search_servies.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _idownloadservice;
  final SearchServies _searchService;

  SearchBloc(this._searchService, this._idownloadservice)
      : super(SearchState.initial()) {
/*
idle state
*/
    on<Initialize>((event, emit) async {
      if (state.idleresult.isNotEmpty) {
        emit(
          SearchState(
            searchresultList: [],
            idleresult: state.idleresult,
            isLoading: false,
            isEror: false,
          ),
        );
        return;
      }

      emit(
        const SearchState(
          searchresultList: [],
          idleresult: [],
          isLoading: true,
          isEror: false,
        ),
      );
      // get tranding
      final result = await _idownloadservice.getDownloadsimage();
      final _state = result.fold(
        (MainFailture) {
          return const SearchState(
            searchresultList: [],
            idleresult: [],
            isLoading: false,
            isEror: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchresultList: [],
            idleresult: list,
            isLoading: true,
            isEror: false,
          );
        },
      );
      emit(_state);
      // show to ui
    });

    /*
    search result state
    */

    on<searchMovies>((event, emit) async {
      // call search moive api
      log('searching for ${event.movieQuery}');
      emit(
        const SearchState(
          searchresultList: [],
          idleresult: [],
          isLoading: true,
          isEror: false,
        ),
      );
      final result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final state = result.fold((MainFailture f) {
        return const SearchState(
          searchresultList: [],
          idleresult: [],
          isLoading: false,
          isEror: true,
        );
      }, (SearchResponce r) {
        return SearchState(
          searchresultList: r.results,
          idleresult: [],
          isLoading: false,
          isEror: false,
        );
      });
      emit(state);
      // show ui
    });
  }
}
