import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/data/services/movie_popular_service.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/domain/repositories/movie_popular_repository.dart';

class MoviePopularRepositoryImpl implements MoviePopularRepository {
  final MoviePopularServiceType service;

  MoviePopularRepositoryImpl(this.service);

  @override
  Future<Either<Failure, MoviePopular>> getMoviePopular() async {
    try {
      final moviePopular = await service.requestMoviePopular();

      return Right(moviePopular);
    } on ServerException catch (error) {
      return Left(
        ServerFailure(
          message: error.toString(),
        ),
      );
    }
  }
}
