import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx_app_1/application/home/home_bloc.dart';
import 'package:netfilx_app_1/core/consturter/constuter.dart';
import 'package:netfilx_app_1/core/string.dart';
import 'package:netfilx_app_1/presentation/home/weiget/background_card.dart';

import 'package:netfilx_app_1/presentation/home/weiget/number_title_card.dart';

import 'package:netfilx_app_1/presentation/weigets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key, required this.posterList});
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(GetHomeScreenData());
    });
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;

                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value == false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollnotifier.value == true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          );
                        } else if (state.hasErorr) {
                          return const Center(
                            child: Text('LIST GOT HAS ERORR'),
                          );
                        }
                        final _relesepassyearmovie =
                            state.passYearMovieList.map((m) {
                          return '$imageAppentUrl${m.posterPath}';
                        }).toList();
                        _relesepassyearmovie.shuffle();
                        final _tranding = state.trandingMovieList.map((m) {
                          return '$imageAppentUrl${m.posterPath}';
                        }).toList();
                        _tranding.shuffle();
                        final _dramas = state.transDramaMovieList.map((m) {
                          return '$imageAppentUrl${m.posterPath}';
                        }).toList();
                        _dramas.shuffle();
                        final _southindian =
                            state.southIndianMovieList.map((m) {
                          return '$imageAppentUrl${m.posterPath}';
                        }).toList();
                        _southindian.shuffle();

                        final top10tvshows = state.trandingTvList.map((t) {
                          return '$imageAppentUrl${t.posterPath}';
                        }).toList();

                        return ListView(
                          children: [
                            const BackgroundCard(),
                            MainTtileCard(
                              title: "Releced in the pass year",
                              posterList: _relesepassyearmovie,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            MainTtileCard(
                              title: "Tranding Now",
                              posterList: _tranding,
                            ),
                            NumberTitelCard(posterList: top10tvshows),
                            MainTtileCard(
                              title: "Trans Dramas",
                              posterList: _dramas,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            MainTtileCard(
                              title: "South Indian Cinema",
                              posterList: _southindian,
                            )
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    scrollnotifier.value == false
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 100,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'lib/assets/image/Second show.jpeg',
                                      width: 100,
                                      height: 80,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    kwidth,
                                    Container(
                                      height: 30,
                                      width: 30,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Movies',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Categories',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        : khight
                  ],
                ),
              );
            }),
      ),
    );
  }
}
