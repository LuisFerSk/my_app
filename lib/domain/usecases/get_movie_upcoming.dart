import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_upcoming.dart';
import 'package:my_app/domain/repositories/movie_upcoming_repositoy.dart';

class GetMovieUpcoming {
  final MovieUpcomingRepository movieUpcomingRepository;

  GetMovieUpcoming(this.movieUpcomingRepository);

  Future<Either<Failure, MovieUpcoming>> call() async {
    return movieUpcomingRepository.getMovieUpcoming();
  }
}
