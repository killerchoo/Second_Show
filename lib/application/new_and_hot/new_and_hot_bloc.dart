import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netfilx_app_1/domain/new_and_hot/new_and_hot_service.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.initial()) {
    on<LoadDataComingSoon>((event, emit) async {
      emit(const NewAndHotState(
          comingsoonList: [],
          everyonewatching: [],
          isLoading: true,
          isErorr: false));
      final _result = await _newAndHotService.getNewAndHotMovieData();
      final _newstate = _result.fold((MainFailture failture) {
        return const NewAndHotState(
            comingsoonList: [],
            everyonewatching: [],
            isLoading: false,
            isErorr: true);
      }, (NewAndHot respo) {
        return NewAndHotState(
            comingsoonList: respo.results,
            everyonewatching: state.everyonewatching,
            isLoading: false,
            isErorr: false);
      });
      emit(_newstate);
    });
    on<LoadDataIsEveryOneWatching>((event, emit) async {
      
        emit(const NewAndHotState(
            comingsoonList: [],
            everyonewatching: [],
            isLoading: true,
            isErorr: false));
        final _result = await _newAndHotService.getNewAndHotTVData();
        final _newstate = _result.fold((MainFailture failture) {
          return const NewAndHotState(
              comingsoonList: [],
              everyonewatching: [],
              isLoading: false,
              isErorr: true);
        }, (NewAndHot respo) {
          return NewAndHotState(
              comingsoonList: state.comingsoonList,
              everyonewatching: respo.results,
              isLoading: false,
              isErorr: false);
        });
        emit(_newstate);
      });
    }
  }

