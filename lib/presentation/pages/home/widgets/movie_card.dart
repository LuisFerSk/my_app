import 'package:flutter/material.dart';
import 'package:my_app/domain/entities/movie_popular.dart';
import 'package:my_app/presentation/pages/movie/movie_page.dart';
import 'package:my_app/util/url.dart';
import 'package:page_transition/page_transition.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key, required this.movie});

  final Result movie;

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
                    image: NetworkImage(getUrlImage(widget.movie.posterPath)),
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
                          child: MoviePage(id: widget.movie.id),
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
              widget.movie.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              maxLines: 2,
              widget.movie.overview,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
