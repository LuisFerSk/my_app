import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/data/services/movie_top_rated_service.dart';
import 'package:my_app/domain/entities/movie_top_rated.dart';
import 'package:my_app/domain/repositories/movie_top_rated_repositoy.dart';

class MovieTopRatedRepositoryImpl implements MovieTopRatedRepository {
  final MovieTopRatedServiceType service;

  MovieTopRatedRepositoryImpl(this.service);

  @override
  Future<Either<Failure, MovieTopRated>> getMovieTopRated() async {
    try {
      final movieTopRated = await service.requestMovieTopRated();

      return Right(movieTopRated);
    } on ServerErrorException catch (error) {
      final response = error.response;

      return Left(
        ServerFailure(
          message: response.statusMessage,
        ),
      );
    } on ServerException catch (error) {
      return Left(
        ServerFailure(
          message: error.toString(),
        ),
      );
    } catch (error) {
      return Left(
        ServerFailure(
          message: error.toString(),
        ),
      );
    }
  }
}
