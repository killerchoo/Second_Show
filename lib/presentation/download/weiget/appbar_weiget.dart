import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netfilx_app_1/core/consturter/constuter.dart';

class AppBarWeiget extends StatelessWidget {
  const AppBarWeiget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.w700),
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
        kwidth
      ],
    );
  }
}
