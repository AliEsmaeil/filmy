import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class UpcomingMoviesUseCase{

  final BaseMovieRepository _movieRepository;

  const UpcomingMoviesUseCase({required BaseMovieRepository movieRepository}) : _movieRepository = movieRepository;

  Future<List<Movie>> getUpcomingMovie()async{
    return await _movieRepository.getUpcoming();
  }
}