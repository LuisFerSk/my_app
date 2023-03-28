import 'package:injector/injector.dart';

import 'package:my_app/data/repository/movie_popular_repository_impl.dart';
import 'package:my_app/data/services/movie_popular_service.dart';
import 'package:my_app/domain/repositories/movie_popular_repository.dart';
import 'package:my_app/domain/usecases/get_movie_popular.dart';
import 'package:my_app/presentation/bloc/movie_popular/movie_popular_bloc.dart';

class MoviePopularInjection {
  static void init() {
    final injector = Injector.appInstance;

    injector.registerDependency(() => MoviePopularBloc(injector()));
    injector.registerSingleton(() => GetMoviePopular(injector()));
    injector.registerSingleton<MoviePopularRepository>(
      () => MoviePopularRepositoryImpl(injector()),
    );
    injector.registerSingleton<MoviePopularServiceType>(
      () => MoviePopularService(injector()),
    );
  }
}
