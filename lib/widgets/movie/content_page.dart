import 'package:flutter/material.dart';

import '../../api/get_films.dart';
import '../../models/movie.dart';

class ContentPage extends StatelessWidget {
  final String endpoint;
  final Future<List<Movie>> Function(String) fetchMovies;
  final String title;

  const ContentPage({
    super.key,
    required this.endpoint,
    required this.fetchMovies,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();

        String addLeadingZero(int value) {
          return value.toString().padLeft(2, '0');
        }

        String formattedDate = "${now.year}."
            "${addLeadingZero(now.month)}."
            "${addLeadingZero(now.day)}  "
            "${addLeadingZero(now.hour)}:${addLeadingZero(now.minute)}:"
            "${addLeadingZero(now.second)}";

        Navigator.pop(context, formattedDate);

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              // letterSpacing: 8.0,
            ),
          ),
        ),
        body: FutureBuilder<List<Movie>>(
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
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: OutputFilms(movies: snapshot.data!),
              );
            }
          },
        ),
      ),
    );
  }
}
