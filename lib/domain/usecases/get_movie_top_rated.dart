import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_top_rated.dart';
import 'package:my_app/domain/repositories/movie_top_rated_repositoy.dart';

class GetMovieTopRated {
  final MovieTopRatedRepository movieTopRatedRepository;

  GetMovieTopRated(this.movieTopRatedRepository);

  Future<Either<Failure, MovieTopRated>> call() async {
    return movieTopRatedRepository.getMovieTopRated();
  }
}
