import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';
import 'package:my_app/domain/entities/movie_popular.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
    required this.moviesPopular,
  });

  final MoviePopular moviesPopular;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.1,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: moviesPopular.results.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w185${item.posterPath}',
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.1),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            color: white,
                            fontFamily: 'Mplus 1p Black',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              item.originalLanguage,
                              style: const TextStyle(
                                color: white,
                                fontFamily: 'Mplus 1p Black',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
