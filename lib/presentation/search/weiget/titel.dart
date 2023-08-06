import 'package:flutter/material.dart';

class SearchTextTile extends StatelessWidget {
  final String title;
  const SearchTextTile({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
