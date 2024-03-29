import 'package:flutter/material.dart';
import 'package:task2/widgets/home/title_block.dart';

import 'cards_scroll_side.dart';

Widget sectionWithTitle({
  required String title,
  required String type,
  required dynamic data,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TitleBlock(title: title),
      CardsScrollSide(
        type: type,
        data: data,
      ),
    ],
  );
}
