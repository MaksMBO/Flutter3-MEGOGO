import 'package:flutter/material.dart';

class OneCard extends StatelessWidget {
  const OneCard(
      {super.key,
      required this.defaultWidth,
      required this.data,
      required this.index});

  final double defaultWidth;
  final List<Map<String, dynamic>> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: SizedBox(
        width: defaultWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  data[index]['img'],
                  width: defaultWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            if (data[index]['title'] != null)
              Text(
                data[index]['title'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            if (data[index]['firstSubTitle'] != null)
              Text(
                data[index]['firstSubTitle'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white38,
                  fontSize: 11,
                ),
              ),
            if (data[index]['secondSubTitle'] != null)
              Text(
                data[index]['secondSubTitle'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: data[index]['color'],
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
