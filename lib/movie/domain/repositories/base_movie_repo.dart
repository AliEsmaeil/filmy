import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/entities/movie_image.dart';

abstract class BaseMovieRepository{

  Future<List<Movie>> getNowPlaying();
  Future<List<Movie>> getPopular();
  Future<List<Movie>> getTopRated();
  Future<List<Movie>> getUpcoming();

  Future<List<MovieImage>> getMovieImages({required int movieId});
}

