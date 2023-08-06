import 'package:flutter/material.dart';
import 'package:netfilx_app_1/presentation/download/screen_download.dart';
import 'package:netfilx_app_1/presentation/fast_laught/screen_fast_laught.dart';
import 'package:netfilx_app_1/presentation/home/screen_home.dart';
import 'package:netfilx_app_1/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netfilx_app_1/presentation/search/screen_search.dart';

import 'weiget/bottem_navigation.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key,});

 
  final _page = [
   ScreenHome(posterList: [],),
    ScreenNewHot(),
   ScreenFastLaught(),
     ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (context, int index, _) {
          return _page[index];
        },
      ),
      bottomNavigationBar: const BottemNavigation(),
    );
  }
}
