import 'package:dartz/dartz.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/movie/domain/entities/movie_image.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class MovieImagesUseCase{
  final BaseMovieRepository _movieRepository;

  const MovieImagesUseCase({required BaseMovieRepository movieRepository}) : _movieRepository = movieRepository;

  Future<Either<Failure, List<MovieImage>>> getMovieImages({required int movieId})async{
    return await _movieRepository.getMovieImages(movieId: movieId);
  }
}