import 'package:dartz/dartz.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class PopularMoviesUseCase{

  final BaseMovieRepository _movieRepository;

  const PopularMoviesUseCase({required BaseMovieRepository movieRepository}):_movieRepository = movieRepository;

  Future<Either<Failure, List<Movie>>> getPopularMovies()async{
    return await _movieRepository.getPopular();
  }
}