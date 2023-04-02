import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:my_app/domain/entities/movie_top_rated.dart';

part 'movie_top_rated_model.g.dart';

//
// La función movieTopRatedModelFromJson se encarga de la serialización de un String con formato Json a la
// clase MovieTopRatedModel.
//
// str - string en formato Json
//
MovieTopRatedModel movieTopRatedModelFromJson(String str) =>
    MovieTopRatedModel.fromJson(json.decode(str));

@JsonSerializable(explicitToJson: true)
class MovieTopRatedModel extends MovieTopRated {
  MovieTopRatedModel({
    this.newPage,
    this.newResults,
    this.newTotalPages,
    this.newTotalResults,
  }) : super(
          page: newPage ?? -1,
          results: newResults ?? [],
          totalPages: newTotalPages ?? -1,
          totalResults: newTotalResults ?? -1,
        );

  @JsonKey(name: 'page')
  final int? newPage;

  @JsonKey(name: 'results')
  final List<ResultModel>? newResults;

  @JsonKey(name: 'total_pages')
  final int? newTotalPages;

  @JsonKey(name: 'total_results')
  final int? newTotalResults;

  factory MovieTopRatedModel.fromJson(Map<String, dynamic> json) =>
      _$MovieTopRatedModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTopRatedModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResultModel extends Result {
  ResultModel({
    this.newAdult,
    this.newBackdropPath,
    this.newGenreIds,
    this.newId,
    this.newOriginalLanguage,
    this.newOriginalTitle,
    this.newOverview,
    this.newPopularity,
    this.newPosterPath,
    this.newReleaseDate,
    this.newTitle,
    this.newVideo,
    this.newVoteAverage,
    this.newVoteCount,
  }) : super(
          adult: newAdult ?? false,
          backdropPath: newBackdropPath ?? '',
          genreIds: newGenreIds ?? [],
          id: newId ?? -1,
          originalLanguage: newOriginalLanguage ?? '',
          originalTitle: newOriginalTitle ?? '',
          overview: newOverview ?? '',
          popularity: newPopularity ?? double.nan,
          posterPath: newPosterPath ?? '',
          releaseDate: newReleaseDate ?? '',
          title: newTitle ?? '',
          video: newVideo ?? false,
          voteAverage: newVoteAverage ?? double.nan,
          voteCount: newVoteCount ?? -1,
        );

  @JsonKey(name: 'adult')
  final bool? newAdult;

  @JsonKey(name: 'backdrop_path')
  final String? newBackdropPath;

  @JsonKey(name: 'genre_ids')
  final List<int>? newGenreIds;

  @JsonKey(name: 'id')
  final int? newId;

  @JsonKey(name: 'original_language')
  final String? newOriginalLanguage;

  @JsonKey(name: 'original_title')
  final String? newOriginalTitle;

  @JsonKey(name: 'overview')
  final String? newOverview;

  @JsonKey(name: 'popularity')
  final double? newPopularity;

  @JsonKey(name: 'poster_path')
  final String? newPosterPath;

  @JsonKey(name: 'release_date')
  final String? newReleaseDate;

  @JsonKey(name: 'title')
  final String? newTitle;

  @JsonKey(name: 'video')
  final bool? newVideo;

  @JsonKey(name: 'vote_average')
  final double? newVoteAverage;

  @JsonKey(name: 'vote_count')
  final int? newVoteCount;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResultModelToJson(this);
}
