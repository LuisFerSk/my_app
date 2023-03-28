part of 'movie_upcoming_bloc.dart';

abstract class MovieUpcomingEvent extends Equatable {
  const MovieUpcomingEvent();

  @override
  List<Object> get props => [];
}

class GetNewMovieUpcoming extends MovieUpcomingEvent {}
