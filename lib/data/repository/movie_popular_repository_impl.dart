import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/data/datasources/movie_popular/movie_popular_remote_datasource.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/domain/repositories/movie_popular_repository.dart';

class MoviePopularRepositoryImpl implements MoviePopularRepository {
  final MoviePopularRemoteDataSource remoteDataSource;

  MoviePopularRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, MoviePopular>> getMoviePopular() async {
    try {
      final movie = await remoteDataSource.requestMoviePopular();

      return Right(movie);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
