import 'package:dartz/dartz.dart';

import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_top_rated.dart';

abstract class MovieTopRatedRepository {
  Future<Either<Failure, MovieTopRated>> getMovieTopRated();
}
