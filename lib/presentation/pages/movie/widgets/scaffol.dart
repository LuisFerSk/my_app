import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:my_app/core/framework/font.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/presentation/widgets/appbar.dart';
import 'package:my_app/util/url.dart';
import 'package:my_app/util/status_movie.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({
    super.key,
    required this.movieDetail,
  });

  final MovieDetail movieDetail;

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final movieDetail = widget.movieDetail;

    final releaseDate = DateTime.tryParse(movieDetail.releaseDate);

    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(getUrlImage(movieDetail.posterPath)),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [0.4, 0.9],
                  colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(.2),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: size.height * 0.03),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      movieDetail.title,
                      style: FontTheme.title,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: StatusMovie.getStatusColor(movieDetail.status),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            movieDetail.status,
                            style: FontTheme.bodyBold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        releaseDate != null
                            ? DateFormat.yMMMd().format(releaseDate)
                            : '',
                        style: FontTheme.date,
                      ),
                      SizedBox(width: size.width * 0.03),
                    ]),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        RatingBarIndicator(
                          unratedColor: Colors.white54,
                          rating: movieDetail.voteAverage / 2,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20,
                          direction: Axis.horizontal,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.thumb_up,
                          color: Colors.white70,
                        ),
                        SizedBox(width: size.width * 0.03),
                        Text(
                          movieDetail.popularity.toString(),
                          style: FontTheme.date,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Text(
                      maxLines: 5,
                      movieDetail.overview,
                      overflow: TextOverflow.ellipsis,
                      style: FontTheme.body2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
