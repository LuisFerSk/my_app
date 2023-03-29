import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';

import 'package:my_app/presentation/bloc/movie_detail/movie_detail_bloc.dart';
import 'package:my_app/presentation/pages/movie/widgets/scaffol.dart';
import 'package:my_app/presentation/widgets/error_message.dart';
import 'package:my_app/presentation/widgets/loading_indicator.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key, required this.id});

  final int id;

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Injector.appInstance.get<MovieDetailBloc>(),
      child: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          return _buildContentFromState(context, state);
        },
      ),
    );
  }

  Widget _buildContentFromState(
    BuildContext context,
    MovieDetailState state,
  ) {
    if (state is MovieDetailLoading) {
      _getMovieDetail(context);

      return const LoadingIndicator();
    }

    if (state is MovieDetailLoaded) {
      final movieDetail = state.movieDetail;

      return ScaffoldWidget(movieDetail: movieDetail);
    }

    if (state is MovieDetailError) {
      return ErrorMessage(
        message: state.message,
        onPressed: () => _getMovieDetail(context),
      );
    }

    return const Center(
      child: Text('Error'),
    );
  }

  void _getMovieDetail(BuildContext context) {
    final movieDetailBloc = context.read<MovieDetailBloc>();
    movieDetailBloc.add(GetNewMovieDetail(widget.id));
  }
}
