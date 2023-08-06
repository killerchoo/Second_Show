import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_app_1/core/consturter/constuter.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.imageURL});

  final int index;
  final String imageURL;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kradios,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageURL),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -25,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 10.0,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  fontSize: 150,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
