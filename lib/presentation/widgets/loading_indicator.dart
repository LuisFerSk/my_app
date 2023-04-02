import 'package:my_app/core/framework/colors.dart';
import 'package:flutter/material.dart';

//
// Widget general para el indicador de carga de la app.
//
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsTheme.secondary,
      ),
    );
  }
}
