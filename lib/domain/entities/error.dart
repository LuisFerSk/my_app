import 'package:equatable/equatable.dart';

/*
/ 
*/

class ErrorEntities extends Equatable {
  const ErrorEntities({
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
