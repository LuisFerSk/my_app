// To parse this JSON data, do
//
//     final movieDetail = movieDetailFromJson(jsonString);

import 'dart:convert';

import 'package:my_app/domain/entities/movie_detail.dart';

MovieDetailModel movieDetailFromJson(String str) =>
    MovieDetailModel.fromJson(json.decode(str));

String movieDetailToJson(MovieDetailModel data) => json.encode(data.toJson());

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel({
    required this.newAdult,
    required this.newBackdropPath,
    required this.newBelongsToCollection,
    required this.newBudget,
    required this.newGenres,
    required this.newHomepage,
    required this.newId,
    required this.newImdbId,
    required this.newOriginalLanguage,
    required this.newOriginalTitle,
    required this.newOverview,
    required this.newPopularity,
    required this.newPosterPath,
    required this.newProductionCompanies,
    required this.newProductionCountries,
    required this.newReleaseDate,
    required this.newRevenue,
    required this.newRuntime,
    required this.newSpokenLanguages,
    required this.newStatus,
    required this.newTagline,
    required this.newTitle,
    required this.newVideo,
    required this.newVoteAverage,
    required this.newVoteCount,
  }) : super(
          adult: newAdult,
          backdropPath: newBackdropPath,
          belongsToCollection: newBelongsToCollection,
          budget: newBudget,
          genres: newGenres,
          homepage: newHomepage,
          id: newId,
          imdbId: newImdbId,
          originalLanguage: newOriginalLanguage,
          originalTitle: newOriginalTitle,
          overview: newOverview,
          popularity: newPopularity,
          posterPath: newPosterPath,
          productionCompanies: newProductionCompanies,
          productionCountries: newProductionCountries,
          releaseDate: newReleaseDate,
          revenue: newRevenue,
          runtime: newRuntime,
          spokenLanguages: newSpokenLanguages,
          status: newStatus,
          tagline: newTagline,
          title: newTitle,
          video: newVideo,
          voteAverage: newVoteAverage,
          voteCount: newVoteCount,
        );

  final bool newAdult;
  final String newBackdropPath;
  final BelongsToCollectionModel newBelongsToCollection;
  final int newBudget;
  final List<GenreModel> newGenres;
  final String newHomepage;
  final int newId;
  final String newImdbId;
  final String newOriginalLanguage;
  final String newOriginalTitle;
  final String newOverview;
  final double newPopularity;
  final String newPosterPath;
  final List<ProductionCompanyModel> newProductionCompanies;
  final List<ProductionCountryModel> newProductionCountries;
  final DateTime newReleaseDate;
  final int newRevenue;
  final int newRuntime;
  final List<SpokenLanguageModel> newSpokenLanguages;
  final String newStatus;
  final String newTagline;
  final String newTitle;
  final bool newVideo;
  final double newVoteAverage;
  final int newVoteCount;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailModel(
        newAdult: json["adult"],
        newBackdropPath: json["backdrop_path"],
        newBelongsToCollection:
            BelongsToCollectionModel.fromJson(json["belongs_to_collection"]),
        newBudget: json["budget"],
        newGenres: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromJson(x))),
        newHomepage: json["homepage"],
        newId: json["id"],
        newImdbId: json["imdb_id"],
        newOriginalLanguage: json["original_language"],
        newOriginalTitle: json["original_title"],
        newOverview: json["overview"],
        newPopularity: json["popularity"]?.toDouble(),
        newPosterPath: json["poster_path"],
        newProductionCompanies: List<ProductionCompanyModel>.from(
            json["production_companies"]
                .map((x) => ProductionCompanyModel.fromJson(x))),
        newProductionCountries: List<ProductionCountryModel>.from(
            json["production_countries"]
                .map((x) => ProductionCountryModel.fromJson(x))),
        newReleaseDate: DateTime.parse(json["release_date"]),
        newRevenue: json["revenue"],
        newRuntime: json["runtime"],
        newSpokenLanguages: List<SpokenLanguageModel>.from(
            json["spoken_languages"]
                .map((x) => SpokenLanguageModel.fromJson(x))),
        newStatus: json["status"],
        newTagline: json["tagline"],
        newTitle: json["title"],
        newVideo: json["video"],
        newVoteAverage: json["vote_average"]?.toDouble(),
        newVoteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "adult": newAdult,
        "backdrop_path": newBackdropPath,
        "belongs_to_collection": newBelongsToCollection.toJson(),
        "budget": budget,
        "genres": List<dynamic>.from(newGenres.map((x) => x.toJson())),
        "homepage": newHomepage,
        "id": newId,
        "imdb_id": newImdbId,
        "original_language": newOriginalLanguage,
        "original_title": newOriginalTitle,
        "overview": newOverview,
        "popularity": newPopularity,
        "poster_path": newPosterPath,
        "production_companies":
            List<dynamic>.from(newProductionCompanies.map((x) => x.toJson())),
        "production_countries":
            List<dynamic>.from(newProductionCountries.map((x) => x.toJson())),
        "release_date":
            "${newReleaseDate.year.toString().padLeft(4, '0')}-${newReleaseDate.month.toString().padLeft(2, '0')}-${newReleaseDate.day.toString().padLeft(2, '0')}",
        "revenue": newRevenue,
        "runtime": newRuntime,
        "spoken_languages":
            List<dynamic>.from(newSpokenLanguages.map((x) => x.toJson())),
        "status": newStatus,
        "tagline": newTagline,
        "title": newTitle,
        "video": newVideo,
        "vote_average": newVoteAverage,
        "vote_count": newVoteCount,
      };
}

class BelongsToCollectionModel extends BelongsToCollection {
  const BelongsToCollectionModel({
    required this.newId,
    required this.newName,
    required this.newPosterPath,
    required this.newBackdropPath,
  }) : super(
          id: newId,
          name: newName,
          posterPath: newPosterPath,
          backdropPath: newBackdropPath,
        );

  final int newId;
  final String newName;
  final String newPosterPath;
  final String newBackdropPath;

  factory BelongsToCollectionModel.fromJson(Map<String, dynamic> json) =>
      BelongsToCollectionModel(
        newId: json["id"],
        newName: json["name"],
        newPosterPath: json["poster_path"],
        newBackdropPath: json["backdrop_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": newId,
        "name": newName,
        "poster_path": newPosterPath,
        "backdrop_path": newBackdropPath,
      };
}

class GenreModel extends Genre {
  const GenreModel({
    required this.newId,
    required this.newName,
  }) : super(
          id: newId,
          name: newName,
        );

  final int newId;
  final String newName;

  factory GenreModel.fromJson(Map<String, dynamic> json) => GenreModel(
        newId: json["id"],
        newName: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": newId,
        "name": newName,
      };
}

class ProductionCompanyModel extends ProductionCompany {
  const ProductionCompanyModel({
    required this.newId,
    required this.newLogoPath,
    required this.newName,
    required this.newOriginCountry,
  }) : super(
          id: newId,
          logoPath: newLogoPath,
          name: newName,
          originCountry: newOriginCountry,
        );

  final int newId;
  final String newLogoPath;
  final String newName;
  final String newOriginCountry;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      ProductionCompanyModel(
        newId: json["id"],
        newLogoPath: json["logo_path"],
        newName: json["name"],
        newOriginCountry: json["origin_country"],
      );

  Map<String, dynamic> toJson() => {
        "id": newId,
        "logo_path": newLogoPath,
        "name": newName,
        "origin_country": newOriginCountry,
      };
}

class ProductionCountryModel extends ProductionCountry {
  const ProductionCountryModel({
    required this.newIso31661,
    required this.newName,
  }) : super(
          iso31661: newIso31661,
          name: newName,
        );

  final String newIso31661;
  final String newName;

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      ProductionCountryModel(
        newIso31661: json["iso_3166_1"],
        newName: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "iso_3166_1": newIso31661,
        "name": newName,
      };
}

class SpokenLanguageModel extends SpokenLanguage {
  const SpokenLanguageModel({
    required this.newEnglishName,
    required this.newIso6391,
    required this.newName,
  }) : super(
          englishName: newEnglishName,
          iso6391: newIso6391,
          name: newName,
        );

  final String newEnglishName;
  final String newIso6391;
  final String newName;

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      SpokenLanguageModel(
        newEnglishName: json["english_name"],
        newIso6391: json["iso_639_1"],
        newName: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "english_name": newEnglishName,
        "iso_639_1": newIso6391,
        "name": newName,
      };
}
