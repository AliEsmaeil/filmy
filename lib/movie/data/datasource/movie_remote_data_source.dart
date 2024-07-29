import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:filmy/core/constants/constants.dart';
import 'package:filmy/core/utils/error/errors.dart';
import 'package:filmy/core/utils/failure/failures.dart';
import 'package:filmy/core/utils/util_models/general_data_getter.dart';
import 'package:filmy/movie/data/datasource/base_movie_data_source.dart';
import 'package:filmy/movie/data/models/movie_image_model.dart';
import 'package:filmy/movie/data/models/movie_model.dart';
import 'package:filmy/movie/domain/entities/movie.dart';
import 'package:filmy/movie/domain/entities/movie_image.dart';

final class MovieRemoteDataSource extends BaseMovieDataSource{
  @override
  Future<Either<Failure, List<MovieImage>>> getMovieImages({required int movieId})async{
  try{
    final data =  await GeneralDataGetter.getData(endPoint: 'movie/$movieId/${Constants.imagesMovies}');
    return Right(data['backdrops'].map((e)=> MovieImageModel.fromJson(json: e)) as List<MovieImageModel>);
  }
  on ServerException catch(e){
    return Left(ServerFailure(message: e.serverError.statusMessage));
  }
  catch(e){
    return Left(UnKnownFailure(message: e.toString()));
  }
  }

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying()async {
    try{
      final data =  await GeneralDataGetter.getData(endPoint: Constants.nowPlayingMovies);
      return Right(_jsonToMovieMapper(data : data));
    }
    on ServerException catch (e){
      return Left(ServerFailure(message: e.serverError.statusMessage));
    }
    catch(e){
      return Left(UnKnownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopular()async{
    try{
      final data =  await GeneralDataGetter.getData(endPoint: Constants.popularMovies);
      return Right(_jsonToMovieMapper(data : data));
    }
    on ServerException catch (e){
      return Left(ServerFailure(message: e.serverError.statusMessage));
    }
    catch(e){
      return Left(UnKnownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRated()async{
    try{
      final data =  await GeneralDataGetter.getData(endPoint: Constants.topRatedMovies);
      return Right(_jsonToMovieMapper(data : data));
    }
    on ServerException catch (e){
      return Left(ServerFailure(message: e.serverError.statusMessage));
    }
    catch(e){
      return Left(UnKnownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcoming()async{
    try{
      final data = await GeneralDataGetter.getData(endPoint: Constants.upcomingMovies);

      return Right(_jsonToMovieMapper(data : data));
    }
    on ServerException catch (e,s){
      print('server exception ... $e \n $s');
      return Left(ServerFailure(message: e.serverError.statusMessage));
    }
    catch(e,s){
      print('unknown exception .... $e \n  $s');
      return Left(UnKnownFailure(message: e.toString()));
    }
  }

  List<MovieModel> _jsonToMovieMapper({required Map<String,dynamic> data}){

  List<MovieModel> movies = [];
    data['results'].forEach((e){
      movies.add(MovieModel.fromJson(json: e));
    });
    return movies;
  }

}