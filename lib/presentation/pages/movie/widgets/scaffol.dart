import 'package:flutter/material.dart';
import 'package:my_app/core/framework/colors.dart';
import 'package:my_app/core/framework/font.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/presentation/widgets/appbar.dart';
import 'package:my_app/util/url.dart';
import 'package:intl/intl.dart';

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
                  stops: const [0.5, 1],
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
                      widget.movieDetail.title,
                      style: FontTheme.title,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorsTheme.secondary,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            widget.movieDetail.status,
                            style: FontTheme.bodyBold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.03),
                      Text(
                        DateFormat.yMMMd()
                            .format(widget.movieDetail.releaseDate),
                        style: FontTheme.body,
                      ),
                    ]),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${widget.movieDetail.voteAverage.roundToDouble().truncate()}/10',
                      style: FontTheme.body2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Text(
                      widget.movieDetail.overview,
                      style: FontTheme.body2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
