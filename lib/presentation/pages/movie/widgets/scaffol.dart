import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';
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
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(getUrlImage(widget.movieDetail.posterPath)),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [0.5, 0.9],
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.movieDetail.title,
                      style: FontTheme.title,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorsTheme.secondary,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          widget.movieDetail.status,
                          style: FontTheme.body,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      widget.movieDetail.overview,
                      style: FontTheme.body2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
