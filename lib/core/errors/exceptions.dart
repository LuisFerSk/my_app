import 'package:http/http.dart';
import 'package:my_app/domain/entities/server_error.dart';

//
// Clase para representar una excepción provocada por la Api.
//
// response - respuesta del servidor
//
class ServerException implements Exception {
  final Response response;

  ServerException(this.response);
}

//
// Clase representar una excepción provocada por los posibles errores 401 y 404 lanzadas por la Api.
//
// response - respuesta del servidor
//
class ServerErrorException implements Exception {
  final ServerError response;

  ServerErrorException(this.response);
}
