import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/domain/entities/movie_upcoming.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card_section_loading.dart';

import 'package:my_app/presentation/bloc/movie_upcoming/movie_upcoming_bloc.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';
import 'package:my_app/presentation/widgets/error_message.dart';

class MovieUpcomingWidget extends StatefulWidget {
  const MovieUpcomingWidget({super.key});

  @override
  State<MovieUpcomingWidget> createState() => _MovieUpcomingState();
}

class _MovieUpcomingState extends State<MovieUpcomingWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieUpcomingBloc, MovieUpcomingState>(
      builder: (context, state) {
        if (state is MovieUpcomingLoading) {
          _getMovieUpcoming(context);

          return const MovieCardSectionLoading(numberItems: 4);
        }

        if (state is MovieUpcomingLoaded) {
          MovieUpcoming movieUpcoming = state.movieUpcoming;

          return ListView(
            scrollDirection: Axis.horizontal,
            children: movieUpcoming.results.map((item) {
              return MovieCard(
                title: item.title,
                id: item.id,
                overview: item.overview,
                posterPath: item.posterPath,
              );
            }).toList(),
          );
        }

        if (state is MovieUpcomingError) {
          return ErrorMessage(
            message: state.message,
            onPressed: () => _getMovieUpcoming(context),
          );
        }

        return ErrorMessage(
          message: 'Unexpected error',
          onPressed: () => _getMovieUpcoming(context),
        );
      },
    );
  }

  void _getMovieUpcoming(BuildContext context) {
    final movieUpcomingBloc = context.read<MovieUpcomingBloc>();
    movieUpcomingBloc.add(GetNewMovieUpcoming());
  }
}
