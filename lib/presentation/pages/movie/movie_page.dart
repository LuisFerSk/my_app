import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/di/injection_container.dart';
import 'package:my_app/presentation/cubit/movie_detail/movie_detail_cubit.dart';
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
      create: (_) => setupLocator<MovieDetailCubit>(),
      child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
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
    if (state is MovieDetailInitial) {
      _getMovieDetail(context);
      return const LoadingIndicator();
    }

    if (state is MovieDetailLoading) {
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
    final movieDetailCubit = context.read<MovieDetailCubit>();
    movieDetailCubit.getNewMovieDetail(widget.id);
  }
}
