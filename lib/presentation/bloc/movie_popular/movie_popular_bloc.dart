import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/domain/usecases/get_movie_popular.dart';

part 'movie_popular_event.dart';
part 'movie_popular_state.dart';

class MoviePopularBloc extends Bloc<MoviePopularEvent, MoviePopularState> {
  final GetMoviePopular getMoviePopular;

  MoviePopularBloc(this.getMoviePopular) : super(MoviePopularLoading()) {
    on<GetNewMoviePopular>((event, emit) async {
      emit(MoviePopularLoading());

      final failureOrMoviePopular = await getMoviePopular();

      emit(_failureOrMoviePopular(failureOrMoviePopular));
    });
  }

  MoviePopularState _failureOrMoviePopular(
    Either<Failure, MoviePopular> failureOrMoviePopular,
  ) {
    return failureOrMoviePopular.fold(
      (failure) => MoviePopularError(_mapFailureToMessage(failure)),
      (moviePopular) => MoviePopularLoaded(moviePopular),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Ha ocurrido un error, por favor intenta nuevamente.';
      default:
        return 'Unexpected error';
    }
  }
}
