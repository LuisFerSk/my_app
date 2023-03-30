// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) =>
    MovieDetailModel(
      newAdult: json['adult'] as bool?,
      newBackdropPath: json['backdrop_path'] as String?,
      newBelongsToCollection: json['belongs_to_collection'] == null
          ? null
          : BelongsToCollectionModel.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      newBudget: json['budget'] as int?,
      newGenres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newHomepage: json['homepage'] as String?,
      newId: json['id'] as int?,
      newImdbId: json['imdb_id'] as String?,
      newOriginalLanguage: json['original_language'] as String?,
      newOriginalTitle: json['original_title'] as String?,
      newOverview: json['overview'] as String?,
      newPopularity: (json['popularity'] as num?)?.toDouble(),
      newPosterPath: json['poster_path'] as String?,
      newProductionCompanies: (json['production_companies'] as List<dynamic>?)
          ?.map(
              (e) => ProductionCompanyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newProductionCountries: (json['production_countries'] as List<dynamic>?)
          ?.map(
              (e) => ProductionCountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newReleaseDate: json['release_date'] as String?,
      newRevenue: json['revenue'] as int?,
      newRuntime: json['runtime'] as int?,
      newSpokenLanguages: (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => SpokenLanguageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newStatus: json['status'] as String?,
      newTagline: json['tagline'] as String?,
      newTitle: json['title'] as String?,
      newVideo: json['video'] as bool?,
      newVoteAverage: (json['vote_average'] as num?)?.toDouble(),
      newVoteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$MovieDetailModelToJson(MovieDetailModel instance) =>
    <String, dynamic>{
      'adult': instance.newAdult,
      'backdrop_path': instance.newBackdropPath,
      'belongs_to_collection': instance.newBelongsToCollection?.toJson(),
      'budget': instance.newBudget,
      'genres': instance.newGenres?.map((e) => e.toJson()).toList(),
      'homepage': instance.newHomepage,
      'id': instance.newId,
      'imdb_id': instance.newImdbId,
      'original_language': instance.newOriginalLanguage,
      'original_title': instance.newOriginalTitle,
      'overview': instance.newOverview,
      'popularity': instance.newPopularity,
      'poster_path': instance.newPosterPath,
      'production_companies':
          instance.newProductionCompanies?.map((e) => e.toJson()).toList(),
      'production_countries':
          instance.newProductionCountries?.map((e) => e.toJson()).toList(),
      'release_date': instance.newReleaseDate,
      'revenue': instance.newRevenue,
      'runtime': instance.newRuntime,
      'spoken_languages':
          instance.newSpokenLanguages?.map((e) => e.toJson()).toList(),
      'status': instance.newStatus,
      'tagline': instance.newTagline,
      'title': instance.newTitle,
      'video': instance.newVideo,
      'vote_average': instance.newVoteAverage,
      'vote_count': instance.newVoteCount,
    };

BelongsToCollectionModel _$BelongsToCollectionModelFromJson(
        Map<String, dynamic> json) =>
    BelongsToCollectionModel(
      newId: json['id'] as int?,
      newName: json['name'] as String?,
      newPosterPath: json['poster_path'] as String?,
      newBackdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$BelongsToCollectionModelToJson(
        BelongsToCollectionModel instance) =>
    <String, dynamic>{
      'id': instance.newId,
      'name': instance.newName,
      'poster_path': instance.newPosterPath,
      'backdrop_path': instance.newBackdropPath,
    };

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) => GenreModel(
      newId: json['id'] as int?,
      newName: json['name'] as String?,
    );

Map<String, dynamic> _$GenreModelToJson(GenreModel instance) =>
    <String, dynamic>{
      'id': instance.newId,
      'name': instance.newName,
    };

ProductionCompanyModel _$ProductionCompanyModelFromJson(
        Map<String, dynamic> json) =>
    ProductionCompanyModel(
      newId: json['id'] as int?,
      newLogoPath: json['logo_path'] as String?,
      newName: json['name'] as String?,
      newOriginCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$ProductionCompanyModelToJson(
        ProductionCompanyModel instance) =>
    <String, dynamic>{
      'id': instance.newId,
      'logo_path': instance.newLogoPath,
      'name': instance.newName,
      'origin_country': instance.newOriginCountry,
    };

ProductionCountryModel _$ProductionCountryModelFromJson(
        Map<String, dynamic> json) =>
    ProductionCountryModel(
      newIso31661: json['iso_3166_1'] as String?,
      newName: json['name'] as String?,
    );

Map<String, dynamic> _$ProductionCountryModelToJson(
        ProductionCountryModel instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.newIso31661,
      'name': instance.newName,
    };

SpokenLanguageModel _$SpokenLanguageModelFromJson(Map<String, dynamic> json) =>
    SpokenLanguageModel(
      newIso6391: json['iso_639_1'] as String?,
      newName: json['name'] as String?,
    );

Map<String, dynamic> _$SpokenLanguageModelToJson(
        SpokenLanguageModel instance) =>
    <String, dynamic>{
      'iso_639_1': instance.newIso6391,
      'name': instance.newName,
    };
