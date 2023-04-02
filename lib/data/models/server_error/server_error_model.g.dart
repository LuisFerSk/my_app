// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerErrorModel _$ServerErrorModelFromJson(Map<String, dynamic> json) =>
    ServerErrorModel(
      newStatusCode: json['status_code'] as int?,
      newStatusMessage: json['status_message'] as String?,
      newSuccess: json['success'] as bool?,
    );

Map<String, dynamic> _$ServerErrorModelToJson(ServerErrorModel instance) =>
    <String, dynamic>{
      'status_code': instance.newStatusCode,
      'status_message': instance.newStatusMessage,
      'success': instance.newSuccess,
    };
