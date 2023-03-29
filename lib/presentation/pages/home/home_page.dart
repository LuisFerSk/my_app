import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';

import 'package:my_app/core/framework/colors.dart';
import 'package:my_app/presentation/bloc/movie_popular/movie_popular_bloc.dart';
import 'package:my_app/presentation/bloc/movie_top_rated/movie_top_rated_bloc.dart';
import 'package:my_app/presentation/bloc/movie_upcoming/movie_upcoming_bloc.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_popular.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_upcoming.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_top_rated.dart';
import 'package:my_app/presentation/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final injector = Injector.appInstance;

    Size size = MediaQuery.of(context).size;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => injector.get<MoviePopularBloc>(),
        ),
        BlocProvider(
          create: (_) => injector.get<MovieUpcomingBloc>(),
        ),
        BlocProvider(
          create: (_) => injector.get<MovieTopRatedBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: appBar(context),
        body: SafeArea(
          child: Container(
            color: ColorsTheme.backgroundSecondary,
            child: ListView(
              children: [
                SizedBox(height: size.height * 0.02),
                const MoviePopularWidget(),
                const MovieUpcomingWidget(),
                const MovieTopRatedWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
