// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../movie_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImageModel _$MovieImageModelFromJson(Map<String, dynamic> json) =>
    MovieImageModel(
      imagePath: json['file_path'] as String,
      aspectRatio: (json['aspect_ratio'] as num).toDouble(),
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieImageModelToJson(MovieImageModel instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'file_path': instance.imagePath,
      'vote_average': instance.voteAverage,
    };
