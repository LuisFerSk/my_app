part of 'movie_upcoming_bloc.dart';

abstract class MovieUpcomingEvent extends Equatable {
  const MovieUpcomingEvent();

  @override
  List<Object> get props => [];
}

//
// Evento para consultar los próximos estrenos de películas.
//
class GetNewMovieUpcoming extends MovieUpcomingEvent {}
