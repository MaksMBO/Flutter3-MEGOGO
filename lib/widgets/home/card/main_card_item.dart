import 'package:flutter/material.dart';
import 'package:task2/widgets/home/card/main_card.dart';

import '../detail_page.dart';

class MainCardItem extends StatelessWidget {
  final Map<String, dynamic> data;
  final EdgeInsets padding;

  const MainCardItem({super.key, required this.data, required this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(data: data),
          ),
        );
      },
      child: Hero(
        tag: data['title'],
        child: MainCard(
          padding: padding,
          increaseBy: data.containsKey('increaseBy') ? data['increaseBy'] : 1.0,
          img: data['img'],
          title: data['title'],
        ),
      ),
    );
  }
}
