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
          (sections[1]['data'].length / 3).ceil(),
          (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: List.generate(3, (innerIndex) {
                  int dataIndex = index * 3 + innerIndex;
                  if (dataIndex < sections[1]['data'].length) {
                    return Expanded(
                      child: SearchCard(
                        data: sections[1]['data'],
                        index: dataIndex,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
