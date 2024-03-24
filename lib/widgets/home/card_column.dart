import 'package:flutter/material.dart';

import 'main_card_item.dart';

class CardColumn extends StatelessWidget {
  final List<Map<String, dynamic>> cardDataList;
  final EdgeInsets padding;

  const CardColumn({
    super.key,
    required this.cardDataList,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: cardDataList.map((data) {
        return MainCardItem(
          data: data,
          padding: padding,
        );
      }).toList(),
    );
  }
}
