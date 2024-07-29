import 'package:dartz/dartz.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class TopRatedMoviesUseCase{

   final BaseMovieRepository _movieRepository;

  const TopRatedMoviesUseCase({required BaseMovieRepository movieRepository}):_movieRepository = movieRepository;

  Future<Either<Failure, List<Movie>>> getTopRatedMovies()async{
    return await _movieRepository.getTopRated();
  }

}