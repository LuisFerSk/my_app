import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/domain/entities/movie_top_rated.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card_section_loading.dart';

import 'package:my_app/presentation/bloc/movie_top_rated/movie_top_rated_bloc.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';
import 'package:my_app/presentation/widgets/error_message.dart';

class MovieTopRatedWidget extends StatefulWidget {
  const MovieTopRatedWidget({super.key});

  @override
  State<MovieTopRatedWidget> createState() => _MovieTopRatedState();
}

class _MovieTopRatedState extends State<MovieTopRatedWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieTopRatedBloc, MovieTopRatedState>(
      builder: (context, state) {
        if (state is MovieTopRatedLoading) {
          _getMovieTopRated(context);

          return const MovieCardSectionLoading(numberItems: 4);
        }

        if (state is MovieTopRatedLoaded) {
          MovieTopRated movieTopRated = state.movieTopRated;

          return ListView(
            scrollDirection: Axis.horizontal,
            children: movieTopRated.results.map((item) {
              return MovieCard(
                title: item.title,
                id: item.id,
                overview: item.overview,
                posterPath: item.posterPath,
              );
            }).toList(),
          );
        }

        if (state is MovieTopRatedError) {
          return ErrorMessage(
            message: state.message,
            onPressed: () => _getMovieTopRated(context),
          );
        }

        return ErrorMessage(
          message: 'Unexpected error',
          onPressed: () => _getMovieTopRated(context),
        );
      },
    );
  }

  void _getMovieTopRated(BuildContext context) {
    final movieTopRatedBloc = context.read<MovieTopRatedBloc>();
    movieTopRatedBloc.add(GetNewMovieTopRated());
  }
}
