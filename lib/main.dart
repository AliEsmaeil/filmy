import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:filmy/core/constants/constants.dart';
import 'package:filmy/movie/data/datasource/movie_remote_data_source.dart';
import 'package:filmy/movie/data/models/movie_model.dart';
import 'package:filmy/movie/data/repositories/movies_repo.dart';
import 'package:filmy/movie/domain/usecases/upcoming_movies_usecase.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  var result = await UpcomingMoviesUseCase(movieRepository: MoviesRepository(dataSource: MovieRemoteDataSource())).getUpcomingMovie();

  result.fold(
          (left) => print('failure ${left.message}'),
          (right) => print('got data ${right.length}'),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      themeAnimationCurve: Curves.easeIn,
      themeAnimationDuration: Duration(seconds: 1),
    );
  }
}
