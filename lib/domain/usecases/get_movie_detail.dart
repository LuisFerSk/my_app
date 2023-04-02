import 'package:dartz/dartz.dart';
import 'package:my_app/core/errors/failure.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/domain/repositories/movie_detail_repository.dart';


class GetMovieDetail {
  final MovieDetailRepository movieDetailRepository;

  GetMovieDetail(this.movieDetailRepository);

  Future<Either<Failure, MovieDetail>> call(int id) async {
    return movieDetailRepository.getMovieDetail(id);
  }
}
