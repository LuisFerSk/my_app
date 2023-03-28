import 'dart:convert';

import 'package:my_app/domain/entities/movie_top_rated.dart';

MovieTopRatedModel movieTopRatedModelFromJson(String str) =>
    MovieTopRatedModel.fromJson(json.decode(str));

class MovieTopRatedModel extends MovieTopRated {
  const MovieTopRatedModel({
    required this.newPage,
    required this.newResults,
    required this.newTotalPages,
    required this.newTotalResults,
  }) : super(
          page: newPage,
          results: newResults,
          totalPages: newTotalPages,
          totalResults: newTotalResults,
        );

  final int newPage;
  final List<Result> newResults;
  final int newTotalPages;
  final int newTotalResults;

  factory MovieTopRatedModel.fromJson(Map<String, dynamic> json) =>
      MovieTopRatedModel(
        newPage: json["page"],
        newResults: List<Result>.from(
            json["results"].map((x) => ResultModel.fromJson(x))),
        newTotalPages: json["total_pages"],
        newTotalResults: json["total_results"],
      );
}

class ResultModel extends Result {
  const ResultModel({
    required this.newAdult,
    required this.newBackdropPath,
    required this.newGenreIds,
    required this.newId,
    required this.newOriginalLanguage,
    required this.newOriginalTitle,
    required this.newOverview,
    required this.newPopularity,
    required this.newPosterPath,
    required this.newReleaseDate,
    required this.newTitle,
    required this.newVideo,
    required this.newVoteAverage,
    required this.newVoteCount,
  }) : super(
          adult: newAdult,
          backdropPath: newBackdropPath ?? '',
          genreIds: newGenreIds,
          id: newId,
          originalLanguage: newOriginalLanguage,
          originalTitle: newOriginalTitle,
          overview: newOverview,
          popularity: newPopularity,
          posterPath: newPosterPath ?? '',
          releaseDate: newReleaseDate,
          title: newTitle,
          video: newVideo,
          voteAverage: newVoteAverage,
          voteCount: newVoteCount,
        );

  final bool newAdult;
  final String? newBackdropPath;
  final List<int> newGenreIds;
  final int newId;
  final String newOriginalLanguage;
  final String newOriginalTitle;
  final String newOverview;
  final double newPopularity;
  final String? newPosterPath;
  final DateTime newReleaseDate;
  final String newTitle;
  final bool newVideo;
  final double newVoteAverage;
  final int newVoteCount;

  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
        newAdult: json["adult"],
        newBackdropPath: json["backdrop_path"],
        newGenreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        newId: json["id"],
        newOriginalLanguage: json["original_language"],
        newOriginalTitle: json["original_title"],
        newOverview: json["overview"],
        newPopularity: json["popularity"]?.toDouble(),
        newPosterPath: json["poster_path"],
        newReleaseDate: DateTime.parse(json["release_date"]),
        newTitle: json["title"],
        newVideo: json["video"],
        newVoteAverage: json["vote_average"]?.toDouble(),
        newVoteCount: json["vote_count"],
      );
}
