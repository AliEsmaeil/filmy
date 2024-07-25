import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class TopRatedMoviesUseCase{

   final BaseMovieRepository _movieRepository;

  const TopRatedMoviesUseCase({required BaseMovieRepository movieRepository}):_movieRepository = movieRepository;

  Future<List<Movie>> getTopRatedMovies()async{
    return await _movieRepository.getTopRated();
  }

}