import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class NowPlayingMoviesUseCase{

  final BaseMovieRepository _movieRepository;

  const NowPlayingMoviesUseCase({required BaseMovieRepository movieRepository}):_movieRepository = movieRepository;

  Future<List<Movie>> getNowPlayingMovies()async{
    return await _movieRepository.getNowPlaying();
  }
}