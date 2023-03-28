part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();

  @override
  List<Object> get props => [];
}

class GetNewMovieDetail extends MovieDetailEvent {
  final int id;

  const GetNewMovieDetail(this.id);
}
