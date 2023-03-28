part of 'movie_upcoming_bloc.dart';

abstract class MovieUpcomingState extends Equatable {
  const MovieUpcomingState();

  @override
  List<Object> get props => [];
}

class MovieUpcomingLoading extends MovieUpcomingState {}

class MovieUpcomingLoaded extends MovieUpcomingState {
  final MovieUpcoming movieUpcoming;

  const MovieUpcomingLoaded(this.movieUpcoming);

  @override
  List<Object> get props => [movieUpcoming];
}

class MovieUpcomingError extends MovieUpcomingState {
  final String message;

  const MovieUpcomingError(this.message);

  @override
  List<Object> get props => [message];
}
