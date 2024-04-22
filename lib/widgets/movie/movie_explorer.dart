import 'package:flutter/material.dart';

import '../../api/service/movie_service.dart';
import '../../models/movie.dart';
import '../../utils/constants.dart';
import 'content_page.dart';

class MovieExplorerHomePage extends StatefulWidget {
  const MovieExplorerHomePage({super.key});

  @override
  _MovieExplorerHomePageState createState() => _MovieExplorerHomePageState();
}

class _MovieExplorerHomePageState extends State<MovieExplorerHomePage> {
  late final List<Map<String, dynamic>> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      {
        "ContentPage": ContentPage(
          endpoint: ApiConstants.popularMovies,
          fetchMovies: _fetchMovies,
          title: "Популярні фільми",
        ),
        "name": "Популярні фільми",
        "icon": const Icon(Icons.favorite),
      },
      {
        "ContentPage": ContentPage(
          endpoint: ApiConstants.topRatedMovies,
          fetchMovies: _fetchMovies,
          title: "Рейтингові фільми",
        ),
        "name": "Рейтингові фільми",
        "icon": const Icon(Icons.north_east_outlined),
      },
      {
        "ContentPage": ContentPage(
          endpoint: ApiConstants.nowPlayingMovies,
          fetchMovies: _fetchMovies,
          title: "Фільми що програються",
        ),
        "name": "Фільми що програються",
        "icon": const Icon(Icons.hourglass_top_outlined),
      },
    ];
  }

  Future<List<Movie>> _fetchMovies(String endpoint) async {
    try {
      return await MovieService.fetchMovies(endpoint);
    } catch (e) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.builder(
          itemCount: _pages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        _pages[index]["icon"],
                        const SizedBox(width: 8),
                        Text(_pages[index]["name"]),
                      ],
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => _pages[index]["ContentPage"],
                        ),
                      );

                      if (result != null) {
                        setState(() {
                          _pages[index]["result"] = result;
                        });
                      }
                    },
                  ),
                  if (_pages[index]["result"] != null)
                    Text('Було відвідано: ${_pages[index]["result"]}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
