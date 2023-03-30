import 'package:flutter/material.dart';

import 'package:my_app/core/framework/font.dart';
import 'package:my_app/presentation/pages/movie/movie_page.dart';
import 'package:my_app/util/url.dart';
import 'package:page_transition/page_transition.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({
    super.key,
    required this.posterPath,
    required this.id,
    required this.title,
    required this.overview,
  });

  final String posterPath;
  final int id;
  final String title;
  final String overview;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AspectRatio(
      aspectRatio: 0.5,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(getUrlImage(widget.posterPath)),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: const [0.1, 1],
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.1),
                      ],
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: MoviePage(id: widget.id),
                          type: PageTransitionType.fade,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              maxLines: 2,
              widget.title,
              overflow: TextOverflow.ellipsis,
              style: FontTheme.titleCard,
            ),
            Text(
              maxLines: 2,
              widget.overview,
              overflow: TextOverflow.ellipsis,
              style: FontTheme.shortOverviewCard,
            )
          ],
        ),
      ),
    );
  }
}
