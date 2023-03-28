import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';

import 'package:my_app/presentation/bloc/movie_popular/movie_popular_bloc.dart';
import 'package:my_app/presentation/widgets/error_message.dart';
import 'package:my_app/presentation/widgets/loading_indicator.dart';
import 'package:my_app/presentation/pages/home/widgets/scaffol.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Injector.appInstance.get<MoviePopularBloc>(),
      child: BlocBuilder<MoviePopularBloc, MoviePopularState>(
        builder: (context, state) {
          return _buildContentFromState(context, state);
        },
      ),
    );
  }

  Widget _buildContentFromState(
    BuildContext context,
    MoviePopularState state,
  ) {
    if (state is MoviePopularLoading) {
      _getMoviePopular(context);
      return const LoadingIndicator();
    }

    if (state is MoviePopularLoaded) {
      final moviesPopular = state.moviePopular;

      return ScaffoldWidget(moviesPopular: moviesPopular);
    }

    if (state is MoviePopularError) {
      return ErrorMessage(
        message: state.message,
        onPressed: () => _getMoviePopular(context),
      );
    }

    return const Center(
      child: Text('Error'),
    );
  }

  void _getMoviePopular(BuildContext context) {
    final moviePopularBloc = context.read<MoviePopularBloc>();
    moviePopularBloc.add(GetNewMoviePopular());
  }
}
