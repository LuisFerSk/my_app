import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:my_app/data/repository/movie_detail_repository_impl.dart';
import 'package:my_app/data/services/movie_detail/movie_detail_service.dart';

import 'package:my_app/data/services/movie_popular/movie_popular_service.dart';
import 'package:my_app/data/repository/movie_popular_repository_impl.dart';
import 'package:my_app/domain/repositories/movie_detail_repository.dart';
import 'package:my_app/domain/repositories/movie_popular_repository.dart';
import 'package:my_app/domain/usecases/get_movie_detail.dart';
import 'package:my_app/domain/usecases/get_movie_popular.dart';
import 'package:my_app/presentation/cubit/movie_detail/movie_detail_cubit.dart';
import 'package:my_app/presentation/cubit/movie_popular/movie_popular_cubit.dart';

final setupLocator = GetIt.instance;

Future<void> init() async {
  await initMoviePopular();
}

Future<void> initMoviePopular() async {
  setupLocator.registerLazySingleton(() => http.Client());

  setupLocator.registerFactory(() => MoviePopularCubit(setupLocator()));
  setupLocator.registerLazySingleton(() => GetMoviePopular(setupLocator()));
  setupLocator.registerLazySingleton<MoviePopularRepository>(
    () => MoviePopularRepositoryImpl(setupLocator()),
  );
  setupLocator.registerLazySingleton<AbstractMoviePopularService>(
    () => MoviePopularService(setupLocator()),
  );

  setupLocator.registerFactory(() => MovieDetailCubit(setupLocator()));
  setupLocator.registerLazySingleton(() => GetMovieDetail(setupLocator()));
  setupLocator.registerLazySingleton<MovieDetailRepository>(
    () => MovieDetailRepositoryImpl(setupLocator()),
  );
  setupLocator.registerLazySingleton<AbstractMovieDetailService>(
    () => MovieDetailService(setupLocator()),
  );
}
