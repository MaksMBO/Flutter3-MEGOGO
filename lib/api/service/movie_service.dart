import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/movie.dart';

class MovieService {
  static Future<List<Movie>> fetchMovies(String url) {
    return http.get(Uri.parse(url)).then((response) {
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> results = data['results'];
        return results.map((json) => Movie.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch movies');
      }
    });
  }
}
