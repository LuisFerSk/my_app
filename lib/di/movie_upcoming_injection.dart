import 'package:injector/injector.dart';

import 'package:my_app/data/repository/movie_upcoming_repository_impl.dart';
import 'package:my_app/data/services/movie_upcoming_service.dart';
import 'package:my_app/domain/repositories/movie_upcoming_repositoy.dart';
import 'package:my_app/domain/usecases/get_movie_upcoming.dart';
import 'package:my_app/presentation/bloc/movie_upcoming/movie_upcoming_bloc.dart';

class MovieUpcomingInjection {
  static void init() {
    final injector = Injector.appInstance;

    injector.registerDependency(() => MovieUpcomingBloc(injector()));
    injector.registerSingleton(() => GetMovieUpcoming(injector()));
    injector.registerSingleton<MovieUpcomingRepository>(
      () => MovieUpcomingRepositoryImpl(injector()),
    );
    injector.registerSingleton<MovieUpcomingServiceType>(
      () => MovieUpcomingService(injector()),
    );
  }
}
