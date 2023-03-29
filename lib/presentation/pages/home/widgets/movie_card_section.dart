import 'package:flutter/material.dart';

import 'package:my_app/core/framework/font.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';

class MovieCardSection extends StatelessWidget {
  const MovieCardSection({
    super.key,
    required this.children,
    required this.title,
  });

  final String title;
  final List<MovieCard> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style: FontTheme.subtitle,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: children,
          ),
        )
      ],
    );
  }
}
