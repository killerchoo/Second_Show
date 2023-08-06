import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx_app_1/application/search/search_bloc.dart';
import 'package:netfilx_app_1/presentation/search/weiget/titel.dart';

class SearchResulteWidget extends StatelessWidget {
  const SearchResulteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(title: 'Movie and TV'),
        const SizedBox(
          height: 20,
        ),
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              childAspectRatio: 2 / 3,
              children: List.generate(
                20,
                (index) {
                  final movie = state.searchresultList[index];
                  return MainCard(
                    imageUrl: movie.posterImageUrl,
                  );
                },
              ),
            );
          },
        )),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
