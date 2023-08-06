import 'package:flutter/material.dart';

class CustemBotten extends StatelessWidget {
  const CustemBotten({
    super.key,
    required this.icon,
    required this.title,
    this.iconsize = 30,
    this.titlesize = 20,
  });

  final IconData icon;
  final String title;
  final double iconsize;
  final double titlesize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
            size: iconsize,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: titlesize,
          ),
        ),
      ],
    );
  }
}
