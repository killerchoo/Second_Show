import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netfilx_app_1/domain/downloads/i_download_repo.dart';
import 'package:netfilx_app_1/domain/downloads/models/downloads.dart';

part 'fast_laught_event.dart';
part 'fast_laught_state.dart';
part 'fast_laught_bloc.freezed.dart';

final dummysvideoUrl = [
  "https://storage.googleapis.com/biograf-video-files/videos/dd-ep-6/mp4/v-1080p-4500k-libx264.mp4",
  "https://storage.googleapis.com/biograf-video-files/videos/dd-ep-7/mp4/v-1080p-4500k-libx264.mp4",
  "https://storage.googleapis.com/biograf-video-files/videos/dd-ep-20/mp4/v-1080p-4500k-libx264.mp4",
  "https://storage.googleapis.com/biograf-video-files/videos/poly-sizzle-2015/mp4/v-1080p-4500k-libx264.mp4",
  "https://storage.googleapis.com/biograf-video-files/videos/poly-sizzle-2016/mp4/v-1080p-4500k-libx264.mp"
];
ValueNotifier<Set<int>> LikedVideosIdNotifier = ValueNotifier({});

@injectable
class FastLaughtBloc extends Bloc<FastLaughtEvent, FastLaughtState> {
  FastLaughtBloc(
    IDownloadRepo _downloadService,
  ) : super(FastLaughtState.initial()) {
    on<Initialize>(
      (event, emit) async {
        emit(
          const FastLaughtState(
            videolist: [],
            isloading: true,
            isError: false,
          ),
        );

        final result = await _downloadService.getDownloadsimage();
        final _state = result.fold(
          (l) {
            FastLaughtState(
              videolist: [],
              isloading: false,
              isError: true,
            );
          },
          (respo) => FastLaughtState(
            videolist: respo,
            isloading: false,
            isError: false,
          ),
        );
        emit(_state!);
      },
    );

    on<Likevideo>((event, emit) async {
      LikedVideosIdNotifier.value.add(event.id);
    });

    on<Unlikevideo>((event, emit) async {
      LikedVideosIdNotifier.value.remove(event.id);
    });
  }
}
