import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/presentation/pages/home/widgets/drawer.dart';
import 'package:my_app/core/framework/colors.dart';

class ScaffoldWidget extends StatelessWidget {
  final MoviePopular moviePopular;

  const ScaffoldWidget({
    super.key,
    required this.moviePopular,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              viewportFraction: 1.1,
              autoPlay: true,
            ),
            items: moviePopular.results.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Image.network(
                        'https://image.tmdb.org/t/p/w185${item.posterPath}',
                      ),
                      Text(item.title)
                    ]),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
