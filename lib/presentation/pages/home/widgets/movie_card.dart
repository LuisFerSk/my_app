import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';
import 'package:my_app/domain/entities/movie_popular.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Result movie;

  @override
  Widget build(BuildContext context) {
    // return const Text('Hola');
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://image.tmdb.org/t/p/w185${movie.posterPath}',
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
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
    );
  }
}
