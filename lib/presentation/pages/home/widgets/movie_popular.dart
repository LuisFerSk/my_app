import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card_section_loading.dart';

import 'package:my_app/presentation/bloc/movie_popular/movie_popular_bloc.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';
import 'package:my_app/presentation/widgets/error_message.dart';

class MoviePopularWidget extends StatefulWidget {
  const MoviePopularWidget({super.key});

  @override
  State<MoviePopularWidget> createState() => _MoviePopularState();
}

class _MoviePopularState extends State<MoviePopularWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviePopularBloc, MoviePopularState>(
      builder: (context, state) {
        if (state is MoviePopularLoading) {
          _getMoviePopular(context);

          return const MovieCardSectionLoading(numberItems: 4);
        }

        if (state is MoviePopularLoaded) {
          MoviePopular moviePopular = state.moviePopular;

          return ListView(
            scrollDirection: Axis.horizontal,
            children: moviePopular.results.map((item) {
              return MovieCard(
                title: item.title,
                id: item.id,
                overview: item.overview,
                posterPath: item.posterPath,
              );
            }).toList(),
          );
        }

        if (state is MoviePopularError) {
          return ErrorMessage(
            message: state.message,
            onPressed: () => _getMoviePopular(context),
          );
        }

        return ErrorMessage(
          message: 'Unexpected error',
          onPressed: () => _getMoviePopular(context),
        );
      },
    );
  }

  void _getMoviePopular(BuildContext context) {
    final moviePopularBloc = context.read<MoviePopularBloc>();
    moviePopularBloc.add(GetNewMoviePopular());
  }
}
