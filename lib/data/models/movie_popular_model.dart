// To parse this JSON data, do
//
//     final moviePopularModel = moviePopularModelFromJson(jsonString);

import 'dart:convert';

import 'package:my_app/domain/entities/movie_popular.dart';

MoviePopularModel moviePopularModelFromJson(String str) =>
    MoviePopularModel.fromJson(json.decode(str));

class MoviePopularModel extends MoviePopular {
  const MoviePopularModel({
    required this.newPage,
    required this.newResults,
    required this.newTotalPages,
    required this.newTotalResults,
  }) : super(
          page: newPage ?? 0,
          results: newResults,
          totalPages: newTotalPages,
          totalResults: newTotalResults,
        );

  final int? newPage;
  final List<ResultModel> newResults;
  final int newTotalPages;
  final int newTotalResults;

  factory MoviePopularModel.fromJson(Map<String, dynamic> json) =>
      MoviePopularModel(
        newPage: json["page"],
        newResults: List<ResultModel>.from(
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
        newBackdropPath: json["backdrop_path"] as String?,
        newGenreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        newId: json["id"],
        newOriginalLanguage: json["original_language"],
        newOriginalTitle: json["original_title"],
        newOverview: json["overview"],
        newPopularity: json["popularity"]?.toDouble(),
        newPosterPath: json["poster_path"] as String?,
        newReleaseDate: DateTime.parse(json["release_date"]),
        newTitle: json["title"],
        newVideo: json["video"],
        newVoteAverage: json["vote_average"]?.toDouble(),
        newVoteCount: json["vote_count"],
      );
}
