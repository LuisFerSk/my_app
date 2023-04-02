import 'package:flutter/material.dart';

import 'package:my_app/core/framework/font.dart';

//
// Widget que crea una sección para las tarjetas de películas
//
// child - Las tarjetas de las películas
// title - El titulo de la sección
// height - La altura de la sección
//
class MovieCardSection extends StatelessWidget {
  const MovieCardSection({
    super.key,
    required this.child,
    required this.title,
    required this.height,
  });

  final String title;
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: FontTheme.subtitle,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: height,
          child: child,
        ),
        SizedBox(height: size.height * 0.01),
      ],
    );
  }
}
