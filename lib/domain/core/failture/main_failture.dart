import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failture.freezed.dart';

@freezed
class MainFailture with _$MainFailture {
  const factory MainFailture.serverFailture() = _serverFailture;
  const factory MainFailture.ClientFalituer() = _ClientFalituer;
}
