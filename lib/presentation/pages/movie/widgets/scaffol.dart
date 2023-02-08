import 'package:flutter/material.dart';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:my_app/presentation/widgets/appbar.dart';
import 'package:my_app/util/url.dart';

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
          child: Text(widget.movieDetail.toString()),
        ),
      ),
    );
  }
}
