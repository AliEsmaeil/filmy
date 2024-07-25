import 'package:json_annotation/json_annotation.dart';

class MovieImage {

  @JsonKey(name: 'aspect_ratio')
  final double aspectRatio;
  @JsonKey(name: 'file_path')
  final String imagePath;
  @JsonKey(name : 'vote_average')
  final double voteAverage;

  const MovieImage({
    required this.imagePath,
    required this.aspectRatio,
    required this.voteAverage,
  });
}
