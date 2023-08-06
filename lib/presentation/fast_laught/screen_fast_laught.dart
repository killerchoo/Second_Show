import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx_app_1/application/fast_laught/fast_laught_bloc.dart';

import 'weiget/video_list_item.dart';

class ScreenFastLaught extends StatelessWidget {
  const ScreenFastLaught({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughtBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughtBloc, FastLaughtState>(
            builder: (context, state) {
          if (state.isloading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('data not found'),
            );
          } else if (state.videolist.isEmpty) {
            return const Center(
              child: Text('List not found'),
            );
          } else {
            return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videolist.length, (index) {
                  return VideoListItemInheritedWidget(
                      widget: VideoListItem(
                          key: Key(index.toString()), index: index),
                      movieData: state.videolist[index]);
                }));
          }
        }),
      ),
    );
  }
}
