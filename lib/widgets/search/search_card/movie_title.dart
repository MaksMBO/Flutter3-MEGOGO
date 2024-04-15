import 'package:flutter/cupertino.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({super.key, required this.data, required this.index});

  final List<Map<String, dynamic>> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    if (data[index]['title'] != null) {
      return Text(
        data[index]['title'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          // color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}