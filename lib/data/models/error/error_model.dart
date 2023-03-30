import 'dart:convert';
import 'package:my_app/domain/entities/error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

ErrorModel errorModelFromJson(String str) =>
    ErrorModel.fromJson(json.decode(str));

@JsonSerializable(explicitToJson: true)
class ErrorModel extends ErrorEntities {
  const ErrorModel({
    this.newStatusCode,
    this.newStatusMessage,
    this.newSuccess,
  }) : super(
          statusCode: newStatusCode ?? -1,
          statusMessage: newStatusMessage ?? '',
          success: newSuccess ?? false,
        );

  @JsonKey(name: 'status_code')
  final int? newStatusCode;

  @JsonKey(name: 'status_message')
  final String? newStatusMessage;

  @JsonKey(name: 'success')
  final bool? newSuccess;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
