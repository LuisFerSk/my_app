import 'dart:convert';
import 'package:my_app/domain/entities/movie_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_model.g.dart';

MovieDetailModel movieDetailFromJson(String str) =>
    MovieDetailModel.fromJson(json.decode(str));

@JsonSerializable(explicitToJson: true)
class MovieDetailModel extends MovieDetail {
  MovieDetailModel({
    this.newAdult,
    this.newBackdropPath,
    this.newBelongsToCollection,
    this.newBudget,
    this.newGenres,
    this.newHomepage,
    this.newId,
    this.newImdbId,
    this.newOriginalLanguage,
    this.newOriginalTitle,
    this.newOverview,
    this.newPopularity,
    this.newPosterPath,
    this.newProductionCompanies,
    this.newProductionCountries,
    this.newReleaseDate,
    this.newRevenue,
    this.newRuntime,
    this.newSpokenLanguages,
    this.newStatus,
    this.newTagline,
    this.newTitle,
    this.newVideo,
    this.newVoteAverage,
    this.newVoteCount,
  }) : super(
          adult: newAdult ?? false,
          backdropPath: newBackdropPath ?? '',
          belongsToCollection:
              newBelongsToCollection ?? const BelongsToCollectionModel(),
          budget: newBudget ?? -1,
          genres: newGenres ?? [],
          homepage: newHomepage ?? '',
          id: newId ?? -1,
          imdbId: newImdbId ?? '',
          originalLanguage: newOriginalLanguage ?? '',
          originalTitle: newOriginalTitle ?? '',
          overview: newOverview ?? '',
          popularity: newPopularity ?? -1,
          posterPath: newPosterPath ?? '',
          productionCompanies: newProductionCompanies ?? [],
          productionCountries: newProductionCountries ?? [],
          releaseDate: newReleaseDate ?? '',
          revenue: newRevenue ?? -1,
          runtime: newRuntime ?? 0,
          spokenLanguages: newSpokenLanguages ?? [],
          status: newStatus ?? '',
          tagline: newTagline ?? '',
          title: newTitle ?? '',
          video: newVideo ?? false,
          voteAverage: newVoteAverage ?? -1,
          voteCount: newVoteCount ?? -1,
        );

  @JsonKey(name: 'adult')
  final bool? newAdult;

  @JsonKey(name: 'backdrop_path')
  final String? newBackdropPath;

  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollectionModel? newBelongsToCollection;

  @JsonKey(name: 'budget')
  final int? newBudget;

  @JsonKey(name: 'genres')
  final List<GenreModel>? newGenres;

  @JsonKey(name: 'homepage')
  final String? newHomepage;

  @JsonKey(name: 'id')
  final int? newId;

  @JsonKey(name: 'imdb_id')
  final String? newImdbId;

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

  @JsonKey(name: 'production_companies')
  final List<ProductionCompanyModel>? newProductionCompanies;

  @JsonKey(name: 'production_countries')
  final List<ProductionCountryModel>? newProductionCountries;

  @JsonKey(name: 'release_date')
  final String? newReleaseDate;

  @JsonKey(name: 'revenue')
  final int? newRevenue;

  @JsonKey(name: 'runtime')
  final int? newRuntime;

  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguageModel>? newSpokenLanguages;

  @JsonKey(name: 'status')
  final String? newStatus;

  @JsonKey(name: 'tagline')
  final String? newTagline;

  @JsonKey(name: 'title')
  final String? newTitle;

  @JsonKey(name: 'video')
  final bool? newVideo;

  @JsonKey(name: 'vote_average')
  final double? newVoteAverage;

  @JsonKey(name: 'vote_count')
  final int? newVoteCount;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BelongsToCollectionModel extends BelongsToCollection {
  const BelongsToCollectionModel({
    this.newId,
    this.newName,
    this.newPosterPath,
    this.newBackdropPath,
  }) : super(
          id: newId ?? -1,
          name: newName ?? '',
          posterPath: newPosterPath ?? '',
          backdropPath: newBackdropPath ?? '',
        );

  @JsonKey(name: 'id')
  final int? newId;

  @JsonKey(name: 'name')
  final String? newName;

  @JsonKey(name: 'poster_path')
  final String? newPosterPath;

  @JsonKey(name: 'backdrop_path')
  final String? newBackdropPath;

  factory BelongsToCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$BelongsToCollectionModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenreModel extends Genre {
  const GenreModel({
    this.newId,
    this.newName,
  }) : super(
          id: newId ?? -1,
          name: newName ?? '',
        );

  @JsonKey(name: 'id')
  final int? newId;

  @JsonKey(name: 'name')
  final String? newName;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductionCompanyModel extends ProductionCompany {
  const ProductionCompanyModel({
    this.newId,
    this.newLogoPath,
    this.newName,
    this.newOriginCountry,
  }) : super(
          id: newId ?? -1,
          logoPath: newLogoPath ?? '',
          name: newName ?? '',
          originCountry: newOriginCountry ?? '',
        );

  @JsonKey(name: 'id')
  final int? newId;

  @JsonKey(name: 'logo_path')
  final String? newLogoPath;

  @JsonKey(name: 'name')
  final String? newName;

  @JsonKey(name: 'origin_country')
  final String? newOriginCountry;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductionCountryModel extends ProductionCountry {
  const ProductionCountryModel({
    this.newIso31661,
    this.newName,
  }) : super(
          iso31661: newIso31661 ?? '',
          name: newName ?? '',
        );

  @JsonKey(name: 'iso_3166_1')
  final String? newIso31661;

  @JsonKey(name: 'name')
  final String? newName;

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpokenLanguageModel extends SpokenLanguage {
  const SpokenLanguageModel({
    this.newIso6391,
    this.newName,
  }) : super(
          iso6391: newIso6391 ?? '',
          name: newName ?? '',
        );

  @JsonKey(name: 'iso_639_1')
  final String? newIso6391;

  @JsonKey(name: 'name')
  final String? newName;

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageModelToJson(this);
}
