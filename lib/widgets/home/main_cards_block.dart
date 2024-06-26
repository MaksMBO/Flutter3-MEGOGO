import 'package:flutter/material.dart';

import '../../data/data.dart';
import 'card/card_column.dart';

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
            child: CardColumn(
              cardDataList: cardDataList.sublist(0, 4),
              padding:
                  const EdgeInsets.only(left: 16.0, right: 4.0, bottom: 8.0),
            ),
          ),
          Expanded(
            child: CardColumn(
              cardDataList: cardDataList.sublist(4),
              padding:
                  const EdgeInsets.only(left: 4.0, right: 16.0, bottom: 8.0),
            ),
          ),
        ],
      ),
    );
  }
}
