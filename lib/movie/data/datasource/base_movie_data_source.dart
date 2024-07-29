import 'package:dartz/dartz.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/entities/movie_image.dart';

// seems fat interface (fat abstract layer)? nah, it's a cohesive module and it does conform to SRP.
abstract class BaseMovieDataSource{

  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, List<Movie>>> getPopular();
  Future<Either<Failure, List<Movie>>> getTopRated();
  Future<Either<Failure, List<Movie>>> getUpcoming();

  Future<Either<Failure, List<MovieImage>>> getMovieImages({required int movieId});
}