import 'package:filmy/movie/domain/entities/movie_image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/movie_image_model.g.dart';

@JsonSerializable()
class MovieImageModel extends MovieImage {

  const MovieImageModel(
      {required super.imagePath,
      required super.aspectRatio,
      required super.voteAverage
      });

  factory MovieImageModel.fromJson({required Map<String,dynamic> json})=>_$MovieImageModelFromJson(json);

  Map<String,dynamic> toJson()=>_$MovieImageModelToJson(this);
}
