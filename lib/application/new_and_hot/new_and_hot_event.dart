part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.loadDataComingSoon() = LoadDataComingSoon;
  const factory NewAndHotEvent.loadDataIsEveryOneWatching() = LoadDataIsEveryOneWatching;
}
