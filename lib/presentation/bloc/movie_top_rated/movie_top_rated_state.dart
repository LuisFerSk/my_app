part of 'movie_top_rated_bloc.dart';

abstract class MovieTopRatedState extends Equatable {
  const MovieTopRatedState();

  @override
  List<Object> get props => [];
}

class MovieTopRatedLoading extends MovieTopRatedState {}

class MovieTopRatedLoaded extends MovieTopRatedState {
  final MovieTopRated movieTopRated;

  const MovieTopRatedLoaded(this.movieTopRated);

  @override
  List<Object> get props => [movieTopRated];
}

class MovieTopRatedError extends MovieTopRatedState {
  final String message;

  const MovieTopRatedError(this.message);

  @override
  List<Object> get props => [message];
}
