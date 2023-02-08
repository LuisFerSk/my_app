import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/usecases/get_movie_detail.dart';

part 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  final GetMovieDetail getMovieDetail;

  MovieDetailCubit(this.getMovieDetail) : super(MovieDetailInitial());

  void getNewMovieDetail(int id) async {
    emit(MovieDetailLoading());

    final failureOrMoviePopular = await getMovieDetail(id);

    emit(_failureOrMovieDetail(failureOrMoviePopular));
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
