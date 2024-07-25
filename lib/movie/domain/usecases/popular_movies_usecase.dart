import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class PopularMoviesUseCase{

  final BaseMovieRepository _movieRepository;

  const PopularMoviesUseCase({required BaseMovieRepository movieRepository}):_movieRepository = movieRepository;

  Future<List<Movie>> getPopularMovies()async{
    return await _movieRepository.getPopular();
  }
}