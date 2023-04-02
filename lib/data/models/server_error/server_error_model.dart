import 'dart:convert';
import 'package:my_app/domain/entities/server_error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_error_model.g.dart';

//
// La función serverErrorModelFromJson se encarga de la serialización de un String con formato Json a la
// clase ErrorModel.
//
// str - string en formato Json
//
ServerErrorModel serverErrorModelFromJson(String str) =>
    ServerErrorModel.fromJson(json.decode(str));

@JsonSerializable(explicitToJson: true)
class ServerErrorModel extends ServerError {
  const ServerErrorModel({
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

  factory ServerErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServerErrorModelToJson(this);
}
