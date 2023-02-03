import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/domain/repositories/movie_popular_repository.dart';

class GetMoviePopular {
  final MoviePopularRepository moviePopularRepository;

  GetMoviePopular(this.moviePopularRepository);

  Future<Either<Failure, MoviePopular>> call() async {
    return moviePopularRepository.getMoviePopular();
  }
}
