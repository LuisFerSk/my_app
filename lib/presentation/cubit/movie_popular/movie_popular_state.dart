part of 'movie_popular_cubit.dart';

abstract class MoviePopularState extends Equatable {
  const MoviePopularState();

  @override
  List<Object> get props => [];
}

class MoviePopularInitial extends MoviePopularState {}

class MoviePopularLoading extends MoviePopularState {}

class MoviePopularLoaded extends MoviePopularState {
  final MoviePopular moviePopular;

  const MoviePopularLoaded(this.moviePopular);

  @override
  List<Object> get props => [moviePopular];
}

class MoviePopularError extends MoviePopularState {
  final String message;

  const MoviePopularError(this.message);

  @override
  List<Object> get props => [message];
}
