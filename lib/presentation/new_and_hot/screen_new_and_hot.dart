import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:netfilx_app_1/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netfilx_app_1/core/consturter/constuter.dart';
import 'package:netfilx_app_1/core/string.dart';

import 'package:netfilx_app_1/presentation/new_and_hot/weiget/everone_watching.dart';

import 'weiget/comingsoonweiget.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                title: Text(
                  'Hot & New',
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w700),
                ),
                actions: [
                  const Icon(
                    Icons.cast,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  ),
                  kwidth
                ],
                titleSpacing: 30,
                bottom: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white60,
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    tabs: const [
                      Tab(
                        text: '🍟 Coming Soon',
                      ),
                      Tab(
                        text: '👀 Everyone Watching',
                      )
                    ]),
              )),
          body: const TabBarView(children: [
            ComingSoonList(
              key: Key('coming_soon'),
            ),
            EveryoneWatchingList(key: Key('every_one_watching'))
          ]),
        ),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context).add(const LoadDataComingSoon());
    });
    return RefreshIndicator(
      onRefresh:()async {
        BlocProvider.of<NewAndHotBloc>(context).add(const LoadDataComingSoon());
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isErorr) {
            return const Center(
              child: Text('DATA LIST IS GOT ERORR'),
            );
          } else if (state.comingsoonList.isEmpty) {
            return const Center(
              child: Text('DATA LIST IS EMPTY'),
            );
          } else {
            return ListView.builder(
             padding: EdgeInsets.only(top: 20),
                itemCount: state.comingsoonList.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.comingsoonList[index];
                  if (movie.id == null) {
                    return SizedBox();
                  }
    
                  final _date = DateTime.parse(movie.releaseDate!);
                  final formatedDate = DateFormat.yMMMMd('en_US').format(_date);
                  return ComingSoonWeiget(
                      id: movie.id.toString(),
                      mouth: formatedDate.split(' ').first.substring(
                            0,
                            3,
                          ),
                      day: movie.releaseDate!.split('-')[1],
                      movieName: movie.originalTitle ?? 'NO TITEL',
                      posterpath: '$imageAppentUrl${movie.posterPath}',
                      description: movie.overview ?? 'NO DESCRIPTION');
                });
          }
        },
      ),
    );
  }
}

class EveryoneWatchingList extends StatelessWidget {
  const EveryoneWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const LoadDataIsEveryOneWatching());
    });
    return RefreshIndicator(
      onRefresh: ()async{
         BlocProvider.of<NewAndHotBloc>(context)
          .add(const LoadDataIsEveryOneWatching());
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isErorr) {
            return const Center(
              child: Text('DATA LIST IS GOT ERORR'),
            );
          } else if (state.everyonewatching.isEmpty) {
            return const Center(
              child: Text('DATA LIST IS EMPTY'),
            );
          } else {
            return ListView.builder(
              padding: EdgeInsets.all(20),
                itemCount: state.everyonewatching.length,
                itemBuilder: (BuildContext context, index) {
                  final tv = state.everyonewatching[index];
                  if (tv.id == null) {
                    return SizedBox();
                  }
    
                  
    
                  return Everyonewatchingweiget(
                      movieName: tv.originalName ?? '',
                      posterpath: '$imageAppentUrl${tv.posterPath}',
                      description: tv.overview ?? '');
                });
          }
        },
      ),
    );
  }
}
