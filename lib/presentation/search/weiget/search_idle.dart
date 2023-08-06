import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx_app_1/application/search/search_bloc.dart';
import 'package:netfilx_app_1/core/string.dart';
import 'package:netfilx_app_1/presentation/search/weiget/titel.dart';

import '../../../core/consturter/constuter.dart';

class SearchIdleWeiget extends StatelessWidget {
  const SearchIdleWeiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(title: 'Top Search'),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isEror) {
                return const Center(
                  child: Text('there is a error'),
                );
              } else if (state.idleresult.isEmpty) {
                return const Center(
                  child: Text('List is Empty'),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final movie = state.idleresult[index];
                  return TopSearchListTile(
                      title: movie.title ?? 'No Title Provide',
                      imageUrl: '$imageAppentUrl${movie.PostPath}');
                },
                separatorBuilder: (ctx, index) => khight,
                itemCount: state.idleresult.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchListTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchListTile(
      {super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenweith = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenweith * 0.35,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
