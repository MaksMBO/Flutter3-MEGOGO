import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      color: Colors.black,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(movie, context),
            const SizedBox(height: 8),
            _buildTitle(data, index),
            _buildFirstSubTitle(data, index),
            _buildSecondSubTitle(movie),
            _buildSwitch(movie),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(Movie movie, BuildContext context) {
    return Image.asset(
      movie.img,
      height: MediaQuery.of(context).size.height * 0.23,
      fit: BoxFit.cover,
    );
  }

  Widget _buildTitle(List<Map<String, dynamic>> data, int index) {
    if (data[index]['title'] != null) {
      return Text(
        data[index]['title'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildFirstSubTitle(List<Map<String, dynamic>> data, int index) {
    if (data[index]['firstSubTitle'] != null) {
      return Text(
        data[index]['firstSubTitle'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white38,
          fontSize: 11,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildSecondSubTitle(Movie movie) {
    if (movie.secondSubTitle != null) {
      return Text(
        movie.secondSubTitle!,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: movie.color,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildSwitch(Movie movie) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "В уподобане",
            style: TextStyle(
              color: Colors.white,
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
