import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/domain/usecases/get_movie_detail.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetail getMovieDetail;

  MovieDetailBloc(this.getMovieDetail) : super(MovieDetailLoading()) {
    on<GetNewMovieDetail>((event, emit) async {
      emit(MovieDetailLoading());

      final failureOrMoviePopular = await getMovieDetail(event.id);

      emit(_failureOrMovieDetail(failureOrMoviePopular));
    });
  }

  MovieDetailState _failureOrMovieDetail(
    Either<Failure, MovieDetail> failureOrMovieDetail,
  ) {
    return failureOrMovieDetail.fold(
      (failure) => MovieDetailError(_mapFailureToMessage(failure)),
      (movieDetail) => MovieDetailLoaded(movieDetail),
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
