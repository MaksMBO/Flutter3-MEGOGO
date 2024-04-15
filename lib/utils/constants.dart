import '../api/api_config.dart';

class ApiConstants {
  static String popularMovies =
      '${ApiConfig.baseUrl}/movie/popular?api_key=${ApiConfig.apiKey}';
  static String topRatedMovies =
      '${ApiConfig.baseUrl}/movie/top_rated?api_key=${ApiConfig.apiKey}';
  static String nowPlayingMovies =
      '${ApiConfig.baseUrl}/movie/now_playing?api_key=${ApiConfig.apiKey}';
}
