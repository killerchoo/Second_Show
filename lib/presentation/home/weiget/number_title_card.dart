import 'package:flutter/material.dart';
import 'package:netfilx_app_1/presentation/home/weiget/number_card.dart';
import 'package:netfilx_app_1/presentation/weigets/main_title.dart';

class NumberTitelCard extends StatelessWidget {
  const NumberTitelCard({
    super.key,
    required this.posterList,
  });

  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: "Top 10 TV Show In India Today",
          
        ),
        const SizedBox(
          height: 30,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterList.length,
                (index) => NumberCard(
                  
                      index: index,
                      imageURL: posterList[index],
                    )),
          ),
        ),
      ],
    );
  }
}