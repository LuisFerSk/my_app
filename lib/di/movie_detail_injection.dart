import 'package:injector/injector.dart';

import 'package:my_app/data/repository/movie_detail_repository_impl.dart';
import 'package:my_app/data/services/movie_detail_service.dart';
import 'package:my_app/domain/repositories/movie_detail_repository.dart';
import 'package:my_app/domain/usecases/get_movie_detail.dart';
import 'package:my_app/presentation/bloc/movie_detail/movie_detail_bloc.dart';

class MovieDetailInjection {
  static void init() {
    final injector = Injector.appInstance;

    injector.registerDependency(() => MovieDetailBloc(injector()));
    injector.registerSingleton(() => GetMovieDetail(injector()));
    injector.registerSingleton<MovieDetailRepository>(
      () => MovieDetailRepositoryImpl(injector()),
    );
    injector.registerSingleton<MovieDetailServiceType>(
      () => MovieDetailService(injector()),
    );
  }
}
