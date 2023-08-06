import 'package:flutter/material.dart';
import 'package:netfilx_app_1/presentation/weigets/main_title.dart';

import 'maincard.dart';

class MainTtileCard extends StatelessWidget {
  const MainTtileCard({super.key, required this.title,required this.posterList});

  final String title;
  final List<String> posterList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        const SizedBox(
          height: 30,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(posterList.length, (index) => MainCard(imageURL: posterList[index],)),
          ),
        ),
      ],
    );
  }
}
