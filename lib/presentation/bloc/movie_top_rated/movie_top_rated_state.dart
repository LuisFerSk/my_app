part of 'movie_top_rated_bloc.dart';

abstract class MovieTopRatedState extends Equatable {
  const MovieTopRatedState();

  @override
  List<Object> get props => [];
}

//
// Estado que indica que se esta llevando a cabo la consulta de las películas que están dentro del top rated.
//
class MovieTopRatedLoading extends MovieTopRatedState {}

//
// Estado que indica que se han consultado exitosamente las películas que están dentro del top rated.
//
class MovieTopRatedLoaded extends MovieTopRatedState {
  final MovieTopRated movieTopRated;

  const MovieTopRatedLoaded(this.movieTopRated);

  @override
  List<Object> get props => [movieTopRated];
}

//
// Estado que indica que ha sucedido un error al momento de intentar consultar las películas que están dentro
// del top rated.
//
class MovieTopRatedError extends MovieTopRatedState {
  final String message;

  const MovieTopRatedError(this.message);

  @override
  List<Object> get props => [message];
}
