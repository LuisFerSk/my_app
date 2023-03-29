import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_app/presentation/pages/home/widgets/movie_card_section.dart';
import 'package:my_app/presentation/bloc/movie_upcoming/movie_upcoming_bloc.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';
import 'package:my_app/presentation/widgets/error_message.dart';
import 'package:my_app/presentation/widgets/loading_indicator.dart';

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
          return const LoadingIndicator();
        }

        if (state is MovieUpcomingLoaded) {
          final moviesUpcoming = state.movieUpcoming;

          return MovieCardSection(
            title: 'Upcoming',
            children: moviesUpcoming.results.map((item) {
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

        return const Center(
          child: Text('Error'),
        );
      },
    );
  }

  void _getMovieUpcoming(BuildContext context) {
    final movieUpcomingBloc = context.read<MovieUpcomingBloc>();
    movieUpcomingBloc.add(GetNewMovieUpcoming());
  }
}
