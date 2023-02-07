import 'package:flutter/material.dart';

import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/presentation/pages/home/widgets/drawer.dart';
import 'package:my_app/presentation/pages/home/widgets/carousel.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';
import 'package:my_app/core/framework/colors.dart';

class ScaffoldWidget extends StatelessWidget {
  final MoviePopular moviesPopular;

  const ScaffoldWidget({
    super.key,
    required this.moviesPopular,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: background,
        title: SizedBox(
          height: 100,
          child: Image.asset('assets/logo.png', fit: BoxFit.cover),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: backgroundSecondary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CarouselSliderWidget(moviesPopular: moviesPopular),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Populares',
                  style: TextStyle(
                    color: white,
                    fontFamily: 'Mplus 1p Black',
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: moviesPopular.results.map((item) {
                    return MovieCard(movie: item);
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
