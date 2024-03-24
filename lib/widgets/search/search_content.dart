import 'package:flutter/material.dart';
import 'package:task2/widgets/search/search_card.dart';

import '../../data/data.dart';

class SearchContent extends StatelessWidget {
  const SearchContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: List.generate(
          7,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: List.generate(3, (innerIndex) {
                  return Expanded(
                    child: SearchCard(
                      data: sections[1]['data'],
                      index: 0,
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
