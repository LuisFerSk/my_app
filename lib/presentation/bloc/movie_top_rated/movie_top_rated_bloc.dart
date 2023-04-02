import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app/core/errors/failure.dart';

import 'package:my_app/domain/entities/movie_top_rated.dart';
import 'package:my_app/domain/usecases/get_movie_top_rated.dart';

part 'movie_top_rated_event.dart';
part 'movie_top_rated_state.dart';

//
// BLoC para el manejo de lógica empresaria para las películas dentro del top rated.
//
class MovieTopRatedBloc extends Bloc<MovieTopRatedEvent, MovieTopRatedState> {
  final GetMovieTopRated getMovieTopRated;

  MovieTopRatedBloc(this.getMovieTopRated) : super(MovieTopRatedLoading()) {
    on<GetNewMovieTopRated>((event, emit) async {
      emit(MovieTopRatedLoading());

      final failureOrMoviePopular = await getMovieTopRated();

      emit(_failureOrMovieTopRated(failureOrMoviePopular));
    });
  }

  MovieTopRatedState _failureOrMovieTopRated(
    Either<Failure, MovieTopRated> failureOrMovieTopRated,
  ) {
    return failureOrMovieTopRated.fold(
      (failure) => MovieTopRatedError(_mapFailureToMessage(failure)),
      (movieTopRated) => MovieTopRatedLoaded(movieTopRated),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return failure.message;
      default:
        return 'Unexpected error';
    }
  }
}
