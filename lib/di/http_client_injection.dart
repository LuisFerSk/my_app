import 'package:injector/injector.dart';
import 'package:http/http.dart' as http;

//
// La clase HttpClientInjection es usada para establecer la inyección de dependencia de la clase Client
// proporcionada por el paquete http.
//
class HttpClientInjection {
  static void init() {
    final injector = Injector.appInstance;

    injector.registerSingleton(() => http.Client());
  }
}
