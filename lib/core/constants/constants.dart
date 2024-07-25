
import 'environment_vars/config.dart';

class Constants {

  // api constants

  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static final String apiKey = Config.apiKey;

  // endpoints
  static const String nowPlayingMovies = 'movie/now_playing?';
  static const String topRatedMovies = 'movie/top_rated?';
  static const String popularMovies = 'movie/popular?';
  static const String upcomingMovies = 'movie/upcoming?';
  // images endpoint : https://api.themoviedb.org/3/movie/(860)/images?api_key=d861ca82e03f4b369705709fd16192f2
  static const String imagesMovies = 'images?'; // precede it by movie id and movie endpoint as above
 // here's image call : https://image.tmdb.org/t/p/w500/(lol7pTLCvfrRIxjrPdDZ0iQq1Fl.jpg)

}
