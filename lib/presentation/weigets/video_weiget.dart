import 'package:flutter/material.dart';

class Videoweiget extends StatelessWidget {
  final String url;
  const Videoweiget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.network(
            url,
            fit: BoxFit.cover,
            loadingBuilder:
                (BuildContext _, Widget child, ImageChunkEvent? Progress) {
              if (Progress == null) {
                return child;
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
            },
            errorBuilder: (BuildContext _, Object a, StackTrace? trace) {
              return const Center(child: Icon(Icons.wifi_off,color: Colors.white,));
            },
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black45,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
