part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<NewAndHotData> comingsoonList,
    required List<NewAndHotData> everyonewatching,
    required bool isLoading,
    required bool isErorr,
  }) = _Initial;

  factory NewAndHotState.initial() => const
      NewAndHotState(comingsoonList: [], everyonewatching: [],
      isLoading: false,
      isErorr: false,
      );
}
