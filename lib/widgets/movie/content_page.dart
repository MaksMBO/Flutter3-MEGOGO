import 'package:flutter/material.dart';

import '../../api/get_films.dart';
import '../../models/movie.dart';

class ContentPage extends StatelessWidget {
  final String endpoint;
  final Future<List<Movie>> Function(String) fetchMovies;

  const ContentPage({
    super.key,
    required this.endpoint,
    required this.fetchMovies,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
      future: fetchMovies(endpoint),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: OUtputFilms(movies: snapshot.data!),
          );
        }
      },
    );
  }
}
