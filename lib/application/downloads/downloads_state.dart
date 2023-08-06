part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required List<Downloads>? download,
    required Option<Either<MainFailture, List<Downloads>>>
        downloadsFalitureOrSuccessOption,
  }) = _DownloadState;
  factory DownloadState.inital() {
    return const DownloadState(
      isLoading: false,
      downloadsFalitureOrSuccessOption: None(),
      download: [],
    );
  }
}
