import 'package:equatable/equatable.dart';

//
// Clase base de todos los failure de la app.
//
// message - mensaje de error
//
abstract class Failure extends Equatable {
  final String message;

  const Failure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

//
// Clase general para encapsular todas los errores provenientes de los servicios.
//
class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}
