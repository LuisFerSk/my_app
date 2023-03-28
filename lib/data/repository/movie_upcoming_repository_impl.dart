import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/data/services/movie_upcoming_service.dart';
import 'package:my_app/domain/entities/movie_upcoming.dart';
import 'package:my_app/domain/repositories/movie_upcoming_repositoy.dart';

class MovieUpcomingRepositoryImpl implements MovieUpcomingRepository {
  final MovieUpcomingServiceType service;

  MovieUpcomingRepositoryImpl(this.service);

  @override
  Future<Either<Failure, MovieUpcoming>> getMovieUpcoming() async {
    try {
      final movieUpcoming = await service.requestMovieUpcoming();

      return Right(movieUpcoming);
    } on ServerException catch (error) {
      return Left(
        ServerFailure(
          message: error.toString(),
        ),
      );
    }
  }
}
