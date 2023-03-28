import 'package:injector/injector.dart';
import 'package:http/http.dart' as http;

class HttpClientInjection {
  static void init() {
    final injector = Injector.appInstance;

    injector.registerSingleton(() => http.Client());
  }
}
