import 'package:flutter/material.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/presentation/pages/movie/movie_page.dart';
import 'package:my_app/util/url.dart';
import 'package:page_transition/page_transition.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key, required this.movie});

  final Result movie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(getUrlImage(widget.movie.posterPath)),
          ),
        ),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                child: MoviePage(id: widget.movie.id),
                type: PageTransitionType.fade,
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
