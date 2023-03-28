import 'package:dartz/dartz.dart';

import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_detail.dart';

abstract class MovieDetailRepository {
  Future<Either<Failure, MovieDetail>> getMovieDetail(int id);
}
