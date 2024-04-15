import 'package:flutter/material.dart';

class Movie {
  final int id;
  final String img;
  final String secondSubTitle;
  final Color color;

  Movie({
    required this.id,
    required this.img,
    required this.secondSubTitle,
    required this.color,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.id == id &&
        other.img == img &&
        other.secondSubTitle == secondSubTitle &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        img.hashCode ^
        secondSubTitle.hashCode ^
        color.hashCode;
  }
}

class LikedListModel with ChangeNotifier {
  final List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  void addMovie(Movie movie) {
    if (!_movies.contains(movie)) {
      _movies.add(movie);
      notifyListeners();
    }
  }

  void removeMovie(Movie movie) {
    _movies.remove(movie);
    notifyListeners();
  }

  void clearMovies() {
    _movies.clear();
    notifyListeners();
  }
}
