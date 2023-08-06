part of 'fast_laught_bloc.dart';

@freezed
class FastLaughtEvent with _$FastLaughtEvent {
  const factory FastLaughtEvent.initialize() = Initialize;

  const factory FastLaughtEvent.likevideo({required int id}) = Likevideo;

  const factory FastLaughtEvent.unlikevideo({required int id}) = Unlikevideo;
}
