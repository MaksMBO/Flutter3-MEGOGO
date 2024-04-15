import 'package:flutter/material.dart';
import 'package:task2/widgets/search/search_card/movie_first_sub_title.dart';
import 'package:task2/widgets/search/search_card/movie_image.dart';
import 'package:task2/widgets/search/search_card/movie_second_sub_title.dart';
import 'package:task2/widgets/search/search_card/movie_switch.dart';
import 'package:task2/widgets/search/search_card/movie_title.dart';

import '../../models/liked_list_model.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key, required this.data, required this.index});

  final List<Map<String, dynamic>> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    final movie = Movie(
      id: index,
      img: data[index]['img'],
      secondSubTitle: data[index]['secondSubTitle'],
      color: data[index]['color'],
    );

    return Card(
      color: const Color.fromRGBO(0, 0, 0, 0.0),
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieImage(movie: movie, context: context),
            const SizedBox(height: 8),
            MovieTitle(data: data, index: index),
            MovieFirstSubTitle(data: data, index: index),
            MovieSecondSubTitle(movie: movie),
            MovieSwitch(movie: movie),
          ],
        ),
      ),
    );
  }
}
