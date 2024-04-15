import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/liked_list_model.dart';

class MovieSwitch extends StatelessWidget {
  const MovieSwitch({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "В уподобане",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          Consumer<LikedListModel>(
            builder: (context, likedList, child) {
              return Switch(
                value: likedList.movies.contains(movie),
                onChanged: (value) {
                  if (value) {
                    likedList.addMovie(movie);
                  } else {
                    likedList.removeMovie(movie);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
