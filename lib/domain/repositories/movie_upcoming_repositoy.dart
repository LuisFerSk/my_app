import 'package:dartz/dartz.dart';

import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_upcoming.dart';

abstract class MovieUpcomingRepository {
  Future<Either<Failure, MovieUpcoming>> getMovieUpcoming();
}
