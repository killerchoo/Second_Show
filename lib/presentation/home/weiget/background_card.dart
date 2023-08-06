import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 800,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://hippy.in/wp-content/uploads/2012/11/custom-made-hollywood-movie-posters-2.jpg"),
            ),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   child: Padding(
        //     padding: const EdgeInsets.only(bottom: 10),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         const CustemBotten(
        //           title: 'My List',
        //           icon: Icons.add,
        //         ),
        //         _PlayButten(),
        //         const CustemBotten(icon: Icons.info, title: 'Info')
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }

  // TextButton _PlayButten() {
  //   return TextButton.icon(
  //     onPressed: () {},
  //     style: ButtonStyle(
  //       backgroundColor: MaterialStateProperty.all(Colors.white),
  //     ),
  //     icon: const Icon(
  //       Icons.play_arrow,
  //       size: 40,
  //       color: Colors.black,
  //     ),
  //     label: const Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 10),
  //       child: Text(
  //         "play",
  //         style: TextStyle(fontSize: 20, color: Colors.black),
  //       ),
  //     ),
  //   );
  // }
}
