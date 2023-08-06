import 'package:flutter/material.dart';

import 'package:netfilx_app_1/application/fast_laught/fast_laught_bloc.dart';

import 'package:netfilx_app_1/core/string.dart';
import 'package:netfilx_app_1/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';
class VideoListItemInheritedWidget extends InheritedWidget {
  final Downloads movieData;
  final Widget widget;

  const VideoListItemInheritedWidget(
      {Key? key, required this.movieData, required this.widget})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterpath =
        VideoListItemInheritedWidget.of(context)?.movieData.PostPath;
    final videoUrl = dummysvideoUrl[index % dummysvideoUrl.length];
    return Stack(
      children: [
        FastLaughtVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left weiget
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black45,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundImage: posterpath == null
                            ? null
                            : NetworkImage('$imageAppentUrl$posterpath'),
                      ),
                      ValueListenableBuilder(
                        valueListenable: LikedVideosIdNotifier,
                        builder: (BuildContext context, Set<int> NewLikedListId,
                            Widget? _) {
                          final _index = index;
                          if (NewLikedListId.contains(_index)) {
                            return GestureDetector(
                              onTap: () {
                                //BlocProvider.of<FastLaughtBloc>(context).add(Unlikevideo(id: _index));
                                LikedVideosIdNotifier.value.remove(_index);
                              },
                              child: const VideoActionIconsweiget(
                                  icon: Icons.favorite_outlined, title: 'Like'),
                            );
                          }

                          return GestureDetector(
                            onTap: () {
                              //BlocProvider.of<FastLaughtBloc>(context).add(Likevideo(id: _index));
                              LikedVideosIdNotifier.value.add(_index);
                            },
                            child: const VideoActionIconsweiget(
                                icon: Icons.emoji_emotions, title: 'LOL'),
                          );
                        },
                      ),
                      const VideoActionIconsweiget(
                          icon: Icons.add, title: 'ADD ITEM'),
                      GestureDetector(
                        onTap: () {
                          final movieName =
                              VideoListItemInheritedWidget.of(context)!
                                  .movieData
                                  .PostPath;
                          if (movieName != null) {
                            Share.share(movieName);
                          }
                        },
                        child: const VideoActionIconsweiget(
                            icon: Icons.share, title: 'SHARE'),
                      ),
                      const VideoActionIconsweiget(
                          icon: Icons.play_arrow, title: 'PLAY VIDEO'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionIconsweiget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionIconsweiget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class FastLaughtVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;

  const FastLaughtVideoPlayer(
      {super.key, required this.videoUrl, required this.onStateChanged});

  @override
  State<FastLaughtVideoPlayer> createState() => _FastLaughtVideoPlayerState();
}

class _FastLaughtVideoPlayerState extends State<FastLaughtVideoPlayer> {
  late VideoPlayerController _videoplayercontroller;

  @override
  void initState() {
    _videoplayercontroller = VideoPlayerController.network(widget.videoUrl);
    _videoplayercontroller.initialize().then((value) {
      setState(() {});
      _videoplayercontroller.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: double.infinity,
          height: 500,
          child: _videoplayercontroller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoplayercontroller.value.aspectRatio,
                  child: VideoPlayer(_videoplayercontroller),
                )
              : const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )),
    );
  }

  @override
  void dispose() {
    _videoplayercontroller.dispose();
    super.dispose();
  }
}
