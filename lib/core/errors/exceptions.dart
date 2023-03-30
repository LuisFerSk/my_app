import 'package:http/http.dart';
import 'package:my_app/domain/entities/error.dart';

class ServerException implements Exception {
  final Response response;

  ServerException(this.response);
}

class ServerErrorException implements Exception {
  final ErrorEntities response;

  ServerErrorException(this.response);
}
