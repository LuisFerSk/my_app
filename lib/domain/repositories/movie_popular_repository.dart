import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_popular.dart';

abstract class MoviePopularRepository {
  Future<Either<Failure, MoviePopular>> getMoviePopular();
}
