import 'package:flutter/material.dart';

import 'package:my_app/core/framework/font.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';

class MovieCardSection extends StatelessWidget {
  const MovieCardSection({
    super.key,
    required this.children,
    required this.title,
    required this.height,
  });

  final String title;
  final List<MovieCard> children;
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
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: height,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: children,
          ),
        )
      ],
    );
  }
}
