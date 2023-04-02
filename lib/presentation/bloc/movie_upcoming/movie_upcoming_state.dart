part of 'movie_upcoming_bloc.dart';

abstract class MovieUpcomingState extends Equatable {
  const MovieUpcomingState();

  @override
  List<Object> get props => [];
}

//
// Estado que indica que se esta llevando a cabo la consulta de los próximos estrenos de películas.
//
class MovieUpcomingLoading extends MovieUpcomingState {}

//
// Estado que indica que se han consultado exitosamente los próximos estrenos de películas.
//
class MovieUpcomingLoaded extends MovieUpcomingState {
  final MovieUpcoming movieUpcoming;

  const MovieUpcomingLoaded(this.movieUpcoming);

  @override
  List<Object> get props => [movieUpcoming];
}

//
// Estado que indica que ha sucedido un error al momento de intentar consultar los próximos estrenos
// de películas.
//
class MovieUpcomingError extends MovieUpcomingState {
  final String message;

  const MovieUpcomingError(this.message);

  @override
  List<Object> get props => [message];
}
