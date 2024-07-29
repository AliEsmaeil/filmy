import 'package:json_annotation/json_annotation.dart';

part 'generated/server_error_model.g.dart';

@JsonSerializable()
class ServerErrorModel{

  final bool success;
  @JsonKey(name: 'status_code')
  final int statusCode;
  @JsonKey(name: 'status_message')
  final String statusMessage;

  ServerErrorModel({
    required this.success,
    required this.statusCode,
    required this.statusMessage,
});

  factory ServerErrorModel.fromJson(Map<String,dynamic> json)=> _$ServerErrorModelFromJson(json);

  Map<String,dynamic> toJson()=>_$ServerErrorModelToJson(this);

}