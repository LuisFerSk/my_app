import 'package:flutter/material.dart';

//
// Widget usado para mostrar todos los mensajes de error de la app, con una botón que puede volver a intentar
// realizar el proceso que fallo.
//
// message - mensaje de error
// onPressed - función que se va a ejecutar cuando se presione el botón retry
//
class ErrorMessage extends StatelessWidget {
  final String message;
  final VoidCallback onPressed;

  const ErrorMessage({
    Key? key,
    required this.message,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: const TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: onPressed, child: const Text('Retry'))
      ],
    );
  }
}
