import 'package:flutter/material.dart';

import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/core/framework/colors.dart';
import 'package:my_app/core/framework/font.dart';
import 'package:my_app/presentation/pages/home/widgets/movie_card.dart';
import 'package:my_app/presentation/widgets/appbar.dart';

class ScaffoldWidget extends StatefulWidget {
  final MoviePopular moviesPopular;

  const ScaffoldWidget({
    super.key,
    required this.moviesPopular,
  });

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: Container(
          color: ColorsTheme.backgroundSecondary,
          child: ListView(
            children: [
              MovieCardSection(moviesPopular: widget.moviesPopular),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieCardSection extends StatelessWidget {
  const MovieCardSection({
    super.key,
    required this.moviesPopular,
  });

  final MoviePopular moviesPopular;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Popular',
            style: FontTheme.subtitle,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: moviesPopular.results.map((item) {
              return MovieCard(
                title: item.title,
                id: item.id,
                overview: item.overview,
                posterPath: item.posterPath,
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
