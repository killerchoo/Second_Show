import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:netfilx_app_1/application/downloads/downloads_bloc.dart';
import 'package:netfilx_app_1/application/fast_laught/fast_laught_bloc.dart';
import 'package:netfilx_app_1/application/home/home_bloc.dart';
import 'package:netfilx_app_1/application/new_and_hot/new_and_hot_bloc.dart';

import 'package:netfilx_app_1/application/search/search_bloc.dart';
import 'package:netfilx_app_1/core/colour/colour.dart';
import 'package:netfilx_app_1/domain/core/di/injectable.dart';
import 'package:netfilx_app_1/presentation/main_page/screen_main_page.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigureInjection();
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getit<DownloadsBloc>()),
        BlocProvider(create: (context) => getit<SearchBloc>()),
        BlocProvider(create: (context) => getit<FastLaughtBloc>()),
        BlocProvider(create: (context) => getit<NewAndHotBloc>()),
        BlocProvider(create: (context) => getit<HomeBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: backgroundcolour,
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white),
            )),
        home: ScreenMainPage(),
      ),
    );
  }
}
