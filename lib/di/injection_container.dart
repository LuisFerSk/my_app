import 'package:my_app/di/http_client_injection.dart';
import 'package:my_app/di/movie_detail_injection.dart';
import 'package:my_app/di/movie_popular_injection.dart';
import 'package:my_app/di/movie_top_rated_injection.dart';
import 'package:my_app/di/movie_upcoming_injection.dart';

//
// La clase InjectionContainer es usada para realizar las inyecciones de dependencias usando el paquete
// Injector.
//
class InjectionContainer {
  static void init() {
    HttpClientInjection.init();
    MoviePopularInjection.init();
    MovieDetailInjection.init();
    MovieUpcomingInjection.init();
    MovieTopRatedInjection.init();
  }
}
