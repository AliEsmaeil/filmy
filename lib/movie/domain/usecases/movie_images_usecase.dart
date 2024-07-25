import 'package:filmy/movie/domain/entities/movie_image.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class MovieImagesUseCase{
  final BaseMovieRepository _movieRepository;

  const MovieImagesUseCase({required BaseMovieRepository movieRepository}) : _movieRepository = movieRepository;

  Future<List<MovieImage>> getMovieImages({required int movieId})async{
    return await _movieRepository.getMovieImages(movieId: movieId);
  }
}