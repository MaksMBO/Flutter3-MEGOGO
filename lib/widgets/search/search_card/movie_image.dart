import 'package:flutter/cupertino.dart';

import '../../../models/liked_list_model.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({super.key, required this.movie, required this.context});

  final Movie movie;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      movie.img,
      height: MediaQuery.of(context).size.height * 0.23,
      fit: BoxFit.cover,
    );
  }
}
