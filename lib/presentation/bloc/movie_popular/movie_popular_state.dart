part of 'movie_popular_bloc.dart';

abstract class MoviePopularState extends Equatable {
  const MoviePopularState();

  @override
  List<Object> get props => [];
}

//
// Estado que indica que se esta llevando a cabo la consulta de las películas populares.
//
class MoviePopularLoading extends MoviePopularState {}

//
// Estado que indica que se han consultado exitosamente las películas populares.
//
class MoviePopularLoaded extends MoviePopularState {
  final MoviePopular moviePopular;

  const MoviePopularLoaded(this.moviePopular);

  @override
  List<Object> get props => [moviePopular];
}

//
// Estado que indica que ha sucedido un error al momento de intentar consultar las películas populares.
//
class MoviePopularError extends MoviePopularState {
  final String message;

  const MoviePopularError(this.message);

  @override
  List<Object> get props => [message];
}
