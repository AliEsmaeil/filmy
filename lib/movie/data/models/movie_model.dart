import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/movie_model.g.dart';

@JsonSerializable()
class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.title,
      required super.overview,
      required super.popularity,
      required super.releaseDate,
      required super.voteAverage,
      required super.voteCount,
      required super.genIds,
      required super.backdropPath,
      required super.posterPath});

     factory MovieModel.fromJson({required Map<String,dynamic> json})=>_$MovieModelFromJson(json);

     Map<String,dynamic> toJson()=>_$MovieModelToJson(this);
}
