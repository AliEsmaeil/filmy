import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


// annotation is done in entity, while json generation is done in model

class Movie extends Equatable {

  final int id;
  final String title;
  final String overview;
  final double popularity;
  @JsonKey(name: 'release_date',)
  final DateTime releaseDate;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(name:'vote_count')
  final int voteCount;

  @JsonKey(name:'genre_ids')
  final List<int> genIds;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @JsonKey(name:'poster_path')
  final String posterPath;

  const Movie(
      {required this.id,
      required this.title,
      required this.overview,
      required this.popularity,
      required this.releaseDate,
      required this.voteAverage,
      required this.voteCount,
      required this.genIds,
      required this.backdropPath,
      required this.posterPath});


  @override
  List<Object?> get props => [
        id,
        title,
        overview,
        popularity,
        releaseDate,
        voteAverage,
        voteCount,
        genIds,
        backdropPath,
        posterPath
      ];

}
