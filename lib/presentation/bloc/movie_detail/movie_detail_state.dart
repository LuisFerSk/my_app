part of 'movie_detail_bloc.dart';

abstract class MovieDetailState extends Equatable {
  const MovieDetailState();

  @override
  List<Object> get props => [];
}

//
// Estado que indica que se esta llevando a cabo la consulta de los detalles de la película.
//
class MovieDetailLoading extends MovieDetailState {}

//
// Estado que indica que se han consultado exitosamente los detalle de la película.
//
class MovieDetailLoaded extends MovieDetailState {
  final MovieDetail movieDetail;

  const MovieDetailLoaded(this.movieDetail);

  @override
  List<Object> get props => [movieDetail];
}

//
// Estado que indica que ha sucedido un error al momento de intentar consultar los detalles de la película.
//
class MovieDetailError extends MovieDetailState {
  final String message;

  const MovieDetailError(this.message);

  @override
  List<Object> get props => [message];
}
