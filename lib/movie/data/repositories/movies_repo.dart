import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/movie/data/datasource/base_movie_data_source.dart';
import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/entities/movie_image.dart';
import 'package:filmy/movie/domain/repositories/base_movie_repo.dart';

final class MoviesRepository extends BaseMovieRepository{

  BaseMovieDataSource dataSource;

  MoviesRepository({required this.dataSource});

  @override
  Future<Either<Failure, List<MovieImage>>> getMovieImages({required int movieId})async{
    return await dataSource.getMovieImages(movieId: movieId);
  }

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying()async{
    return await dataSource.getNowPlaying();
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopular()async{
    return await dataSource.getPopular();
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRated()async{
    return await dataSource.getTopRated();
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcoming()async{
    return await dataSource.getUpcoming();
  }

}