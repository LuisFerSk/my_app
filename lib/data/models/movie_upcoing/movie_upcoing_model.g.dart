// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_upcoing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieUpcomingModel _$MovieUpcomingModelFromJson(Map<String, dynamic> json) =>
    MovieUpcomingModel(
      newDates: json['dates'] == null
          ? null
          : DatesModel.fromJson(json['dates'] as Map<String, dynamic>),
      newPage: json['page'] as int?,
      newResults: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newTotalPages: json['total_pages'] as int?,
      newTotalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$MovieUpcomingModelToJson(MovieUpcomingModel instance) =>
    <String, dynamic>{
      'dates': instance.newDates?.toJson(),
      'page': instance.newPage,
      'results': instance.newResults?.map((e) => e.toJson()).toList(),
      'total_pages': instance.newTotalPages,
      'total_results': instance.newTotalResults,
    };

DatesModel _$DatesModelFromJson(Map<String, dynamic> json) => DatesModel(
      newMaximum: json['maximum'] as String?,
      newMinimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$DatesModelToJson(DatesModel instance) =>
    <String, dynamic>{
      'maximum': instance.newMaximum,
      'minimum': instance.newMinimum,
    };

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) => ResultModel(
      newAdult: json['adult'] as bool?,
      newBackdropPath: json['backdrop_path'] as String?,
      newGenreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      newId: json['id'] as int?,
      newOriginalLanguage: json['original_language'] as String?,
      newOriginalTitle: json['original_title'] as String?,
      newOverview: json['overview'] as String?,
      newPopularity: (json['popularity'] as num?)?.toDouble(),
      newPosterPath: json['poster_path'] as String?,
      newReleaseDate: json['release_date'] as String?,
      newTitle: json['title'] as String?,
      newVideo: json['video'] as bool?,
      newVoteAverage: (json['vote_average'] as num?)?.toDouble(),
      newVoteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$ResultModelToJson(ResultModel instance) =>
    <String, dynamic>{
      'adult': instance.newAdult,
      'backdrop_path': instance.newBackdropPath,
      'genre_ids': instance.newGenreIds,
      'id': instance.newId,
      'original_language': instance.newOriginalLanguage,
      'original_title': instance.newOriginalTitle,
      'overview': instance.newOverview,
      'popularity': instance.newPopularity,
      'poster_path': instance.newPosterPath,
      'release_date': instance.newReleaseDate,
      'title': instance.newTitle,
      'video': instance.newVideo,
      'vote_average': instance.newVoteAverage,
      'vote_count': instance.newVoteCount,
    };
