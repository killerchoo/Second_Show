import 'package:flutter/material.dart';
import 'package:netfilx_app_1/presentation/weigets/video_weiget.dart';

import '../../home/weiget/custem_butten.dart';

class ComingSoonWeiget extends StatelessWidget {
  final String id;
  final String mouth;
  final String day;
  final String movieName;
  final String posterpath;
  final String description;

  const ComingSoonWeiget(
      {super.key,
      required this.id,
      required this.mouth,
      required this.day,
      required this.movieName,
      required this.posterpath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                mouth,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                day,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Videoweiget(url: posterpath,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines:1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 35  , letterSpacing: -4),
                    ),
                  ),
                  
                  Row(
                    children: [
                      CustemBotten(
                        icon: Icons.alarm,
                        title: 'Remind Me',
                        iconsize: 30,
                        titlesize: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustemBotten(
                        icon: Icons.info,
                        title: 'info',
                        iconsize: 30,
                        titlesize: 16,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(" Coming On $day $mouth"),
              SizedBox(
                height: 20,
              ),
              Text(
                movieName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
