// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      newStatusCode: json['status_code'] as int?,
      newStatusMessage: json['status_message'] as String?,
      newSuccess: json['success'] as bool?,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'status_code': instance.newStatusCode,
      'status_message': instance.newStatusMessage,
      'success': instance.newSuccess,
    };
