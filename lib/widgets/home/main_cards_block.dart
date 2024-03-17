import 'package:flutter/material.dart';

import '../../data/data.dart';
import 'main_card.dart';

class MainCardBlock extends StatelessWidget {
  const MainCardBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 1.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: cardDataList.sublist(0, 4).map((data) {
                return MainCard(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 4.0, bottom: 8.0),
                  increaseBy:
                      data.containsKey('increaseBy') ? data['increaseBy'] : 1.0,
                  img: data['img'],
                  title: data['title'],
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: cardDataList.sublist(4).map((data) {
                return MainCard(
                  padding: const EdgeInsets.only(
                      left: 4.0, right: 16.0, bottom: 8.0),
                  img: data['img'],
                  title: data['title'],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
