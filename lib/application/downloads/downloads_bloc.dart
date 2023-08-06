import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/downloads/i_download_repo.dart';
import 'package:netfilx_app_1/domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final IDownloadRepo _downloadRepo;

  DownloadsBloc(this._downloadRepo)
      : super(
          DownloadState.inital(),
        ) {
    on<_GetDownloadsimage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFalitureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailture, List<Downloads>> downloadOption =
          await _downloadRepo.getDownloadsimage();

      emit(downloadOption.fold(
          (faliuer) => state.copyWith(
              isLoading: false,
              downloadsFalitureOrSuccessOption: some(
                Left(faliuer),
              )),
          (success) => state.copyWith(
              isLoading: false,
              download: success,
              downloadsFalitureOrSuccessOption: some(
                right(success),
              ))));
    });
  }
}
