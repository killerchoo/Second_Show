import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfilx_app_1/application/downloads/downloads_bloc.dart';
import 'package:netfilx_app_1/core/colour/colour.dart';
import 'package:netfilx_app_1/core/string.dart';

import 'weiget/appbar_weiget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _weigetlist = [
    const _SmartDownload(),
    const section2(),
    const section3()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWeiget(
            title: 'Download',
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _weigetlist[index],
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: _weigetlist.length,
        ),
      ),
    );
  }
}

class section2 extends StatelessWidget {
  const section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsimage());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Intorduction Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhite, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "We will download a porsonalised selection n of movies and shows for you, so there's nis always something to watch on your device",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        BlocBuilder<DownloadsBloc, DownloadState>(
          builder: (context, state) {
            return SizedBox(
              child: state.isLoading
                  ? const CircularProgressIndicator()
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          radius: size.width * 0.48,
                        ),
                        Downloadimageweiget(
                            margin: const EdgeInsets.only(left: 180, top: 90),
                            angle: 10,
                            size: Size(size.height * 0.2, size.width * 0.69),
                            imagelist: state.download!.isNotEmpty
                                ? '$imageAppentUrl${state.download?[0].PostPath}'
                                : ''),
                        Downloadimageweiget(
                            margin: const EdgeInsets.only(right: 180, top: 90),
                            angle: -10,
                            size: Size(size.height * 0.2, size.width * 0.69),
                            imagelist: state.download!.isNotEmpty
                                ? '$imageAppentUrl${state.download?[2].PostPath}'
                                : ''),
                        Downloadimageweiget(
                            margin: const EdgeInsets.only(top: 50),
                            size: Size(size.height * 0.2, size.width * 0.75),
                            imagelist: state.download!.isNotEmpty
                                ? '$imageAppentUrl${state.download?[1].PostPath}'
                                : ''),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class _SmartDownload extends StatelessWidget {
  const _SmartDownload();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 30,
        ),
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        Text('SMART DOWNLOAD'),
      ],
    );
  }
}

class section3 extends StatelessWidget {
  const section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'set up ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MaterialButton(
          color: Colors.white,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can Download ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}

class Downloadimageweiget extends StatelessWidget {
  const Downloadimageweiget({
    super.key,
    this.angle = 0,
    required this.margin,
    required this.size,
    required this.imagelist,
  });

  final String imagelist;
  final EdgeInsets margin;
  final Size size;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagelist))),
        ),
      ),
    );
  }
}
