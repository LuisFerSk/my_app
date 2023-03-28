import 'package:injector/injector.dart';

import 'package:my_app/data/repository/movie_top_rated_repository_impl.dart';
import 'package:my_app/data/services/movie_top_rated_service.dart';
import 'package:my_app/domain/repositories/movie_top_rated_repositoy.dart';
import 'package:my_app/domain/usecases/get_movie_top_rated.dart';
import 'package:my_app/presentation/bloc/movie_top_rated/movie_top_rated_bloc.dart';

class MovieTopRatedInjection {
  static void init() {
    final injector = Injector.appInstance;

    injector.registerDependency(() => MovieTopRatedBloc(injector()));
    injector.registerSingleton(() => GetMovieTopRated(injector()));
    injector.registerSingleton<MovieTopRatedRepository>(
      () => MovieTopRatedRepositoryImpl(injector()),
    );
    injector.registerSingleton<MovieTopRatedServiceType>(
      () => MovieTopRatedService(injector()),
    );
  }
}
