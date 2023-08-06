import 'package:flutter/material.dart';
import 'package:netfilx_app_1/core/consturter/constuter.dart';

class MainCard extends StatelessWidget {
  final String imageURL;
  const MainCard({
    super.key,
    required this.imageURL
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradios,
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              imageURL),
        ),
      ),
    );
  }
}
