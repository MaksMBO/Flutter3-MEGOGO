import 'package:flutter/cupertino.dart';

class MovieFirstSubTitle extends StatelessWidget {
  const MovieFirstSubTitle({super.key, required this.data, required this.index});

  final List<Map<String, dynamic>> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    if (data[index]['firstSubTitle'] != null) {
      return Text(
        data[index]['firstSubTitle'],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          // color: Colors.white38,
          fontSize: 11,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}