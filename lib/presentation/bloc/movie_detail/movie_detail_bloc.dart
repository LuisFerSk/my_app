import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/domain/usecases/get_movie_detail.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

//
// BLoC para el manejo de lógica empresaria para los detalles de películas.
//
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
        return failure.message;
      default:
        return 'Unexpected error';
    }
  }
}
