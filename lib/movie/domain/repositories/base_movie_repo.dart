import 'package:dartz/dartz.dart' show Either;
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/entities/movie_image.dart';

abstract class BaseMovieRepository{

  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, List<Movie>>> getPopular();
  Future<Either<Failure, List<Movie>>> getTopRated();
  Future<Either<Failure, List<Movie>>> getUpcoming();

  Future<Either<Failure, List<MovieImage>>> getMovieImages({required int movieId});
}

