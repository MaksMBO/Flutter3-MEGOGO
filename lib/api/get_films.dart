import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/movie.dart';
import 'api_config.dart';

class OutputFilms extends StatelessWidget {
  final List<Movie> movies;

  const OutputFilms({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.7,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  imageUrl: '${ApiConfig.imageBaseUrl}${movie.posterPath}',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            ListTile(
              title: Text(
                _truncateString(movie.title),
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  String _truncateString(String text) {
    if (text.length <= 20) {
      return text;
    } else {
      return '${text.substring(0, 17)}...';
    }
  }
}
