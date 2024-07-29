// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../server_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerErrorModel _$ServerErrorModelFromJson(Map<String, dynamic> json) =>
    ServerErrorModel(
      success: json['success'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      statusMessage: json['status_message'] as String,
    );

Map<String, dynamic> _$ServerErrorModelToJson(ServerErrorModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
