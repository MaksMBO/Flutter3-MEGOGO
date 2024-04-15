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
  int _selectedIndex = 0;

  Future<List<Movie>> fetchMovies(String endpoint) async {
    try {
      return await MovieService.fetchMovies(endpoint);
    } catch (e) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: _selectedIndex,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Популярні',
              ),
              Tab(
                icon: Icon(Icons.north_east_outlined),
                text: 'Топ',
              ),
              Tab(
                icon: Icon(Icons.hourglass_top_outlined),
                text: 'Програються',
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
        body: TabBarView(
          children: [
            ContentPage(
              endpoint: ApiConstants.popularMovies,
              fetchMovies: fetchMovies,
            ),
            ContentPage(
              endpoint: ApiConstants.topRatedMovies,
              fetchMovies: fetchMovies,
            ),
            ContentPage(
              endpoint: ApiConstants.topRatedMovies,
              fetchMovies: fetchMovies,
            ),
          ],
        ),
      ),
    );
  }
}
