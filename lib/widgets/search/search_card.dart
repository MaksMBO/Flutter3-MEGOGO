import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key, required this.data, required this.index});

  final List<Map<String, dynamic>> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              data[index]['img'],
              fit: BoxFit.cover,
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
