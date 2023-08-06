import 'package:flutter/material.dart';
import 'package:netfilx_app_1/presentation/home/weiget/custem_butten.dart';
import 'package:netfilx_app_1/presentation/weigets/video_weiget.dart';

class Everyonewatchingweiget extends StatelessWidget {

  final String movieName;
  final String posterpath;
  final String description;

  const Everyonewatchingweiget({super.key, required this.movieName, required this.posterpath, required this.description});
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movieName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
     const   SizedBox(
          height: 20,
        ),
        Text(
          description,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(color: Colors.grey),
        ),
  const      SizedBox(
          height: 50,
        ),
        Videoweiget(url:posterpath,),
     const   SizedBox(
          height: 30,
        ),
     const   Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustemBotten(
              icon: Icons.share,
              title: 'Share',
              iconsize: 30,
              titlesize: 16,
            ),
            SizedBox(
              width: 10,
            ),
            CustemBotten(
              icon: Icons.add,
              title: 'Add',
              iconsize: 30,
              titlesize: 16,
            ),
            SizedBox(
              width: 10,
            ),
            CustemBotten(
              icon: Icons.play_arrow,
              title: 'Play ',
              iconsize: 30,
              titlesize: 16,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        )
      ],
    );
  }
}
