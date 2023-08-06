import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/new_and_hot/new_and_hot_service.dart';

import '../../domain/new_and_hot/model/new_and_hot.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NewAndHotService _homeservice;
  HomeBloc(this._homeservice) : super(HomeState.initial()) {
    on<GetHomeScreenData>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasErorr: false));

      final _movieResult = await _homeservice.getNewAndHotMovieData();
      final _tvResult = await _homeservice.getNewAndHotTVData();

      final _state1 = _movieResult.fold((MainFailture failture) {
        return  HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            passYearMovieList: [],
            trandingMovieList: [],
            transDramaMovieList: [],
            southIndianMovieList: [],
            trandingTvList: [],
            isLoading: false,
            hasErorr: true);
      }, (NewAndHot respo) {
        final passyear = respo.results;
        final tranding = respo.results;
        final drama = respo.results;
        final southindian = respo.results;
        passyear.shuffle();
        tranding.shuffle();
        drama.shuffle();
        southindian.shuffle();

        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            passYearMovieList: passyear,
            trandingMovieList: tranding,
            transDramaMovieList: drama,
            southIndianMovieList: southindian,
            trandingTvList: state.trandingTvList,
            isLoading: false,
            hasErorr: false);
      });
      emit(_state1);

      final _state2 = _tvResult.fold((MainFailture failture) {
        return  HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            passYearMovieList: [],
            trandingMovieList: [],
            transDramaMovieList: [],
            southIndianMovieList: [],
            trandingTvList: [],
            isLoading: false,
            hasErorr: true);
      }, (NewAndHot respo) {
        final tvList = respo.results;

        tvList.shuffle();

        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            passYearMovieList: state.passYearMovieList,
            trandingMovieList: state.trandingMovieList,
            transDramaMovieList: state.transDramaMovieList,
            southIndianMovieList: state.southIndianMovieList,
            trandingTvList: tvList,
            isLoading: false,
            hasErorr: false);
      });
      emit(_state2);
    });
  }
}
