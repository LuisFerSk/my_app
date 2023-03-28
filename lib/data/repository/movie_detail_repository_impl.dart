import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/data/services/movie_detail_service.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/domain/repositories/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailServiceType service;

  MovieDetailRepositoryImpl(this.service);

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetail(int id) async {
    try {
      final movieDetail = await service.requestMovieDetail(id);

      return Right(movieDetail);
    } on ServerException catch (error) {
      return Left(
        ServerFailure(
          message: error.toString(),
        ),
      );
    }
  }
}
