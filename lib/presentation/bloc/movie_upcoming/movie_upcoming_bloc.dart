import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_upcoming.dart';
import 'package:my_app/domain/usecases/get_movie_upcoming.dart';

part 'movie_upcoming_event.dart';
part 'movie_upcoming_state.dart';

class MovieUpcomingBloc extends Bloc<MovieUpcomingEvent, MovieUpcomingState> {
  final GetMovieUpcoming getMovieUpcoming;

  MovieUpcomingBloc(this.getMovieUpcoming) : super(MovieUpcomingLoading()) {
    on<GetNewMovieUpcoming>((event, emit) async {
      emit(MovieUpcomingLoading());

      final failureOrMoviePopular = await getMovieUpcoming();

      emit(_failureOrMoviePopular(failureOrMoviePopular));
    });
  }

  MovieUpcomingState _failureOrMoviePopular(
    Either<Failure, MovieUpcoming> failureOrMoviePopular,
  ) {
    return failureOrMoviePopular.fold(
      (failure) => MovieUpcomingError(_mapFailureToMessage(failure)),
      (moviePopular) => MovieUpcomingLoaded(moviePopular),
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
