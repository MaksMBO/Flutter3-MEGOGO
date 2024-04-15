import 'package:flutter/cupertino.dart';

import '../../../models/liked_list_model.dart';

class MovieSecondSubTitle extends StatelessWidget {
  const MovieSecondSubTitle({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Text(
      movie.secondSubTitle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: movie.color,
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
