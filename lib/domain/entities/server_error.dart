import 'package:equatable/equatable.dart';

/*
/ La ServerError representa los errores 401 y 404 lanzados por la api.
*/
class ServerError extends Equatable {
  const ServerError({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });

  final int statusCode;
  final String statusMessage;
  final bool success;

  @override
  List<Object?> get props => [
        statusCode,
        statusMessage,
        success,
      ];
}
