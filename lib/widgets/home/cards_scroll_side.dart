import 'package:flutter/material.dart';

import 'one_card.dart';

typedef Json = Map<String, dynamic>;

class CardsScrollSide extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final String type;
  final int trackIndex;
  final Function changeTrackIndex;

  const CardsScrollSide({
    super.key,
    required this.type,
    required this.data,
    required this.trackIndex,
    required this.changeTrackIndex,
  });

  @override
  Widget build(BuildContext context) {
    late double defaultHeight;
    late double defaultWidth;
    double tempWidth = MediaQuery.of(context).size.width;
    double tempHeight = MediaQuery.of(context).size.height;

    switch (type) {
      case 'tv':
        defaultHeight = tempWidth > 450 ? tempHeight * 0.5 : tempHeight * 0.25;
        defaultWidth = tempWidth > 450 ? tempWidth * 0.33 : tempWidth * 0.64;
        break;
      case 'onlyAudio':
        defaultHeight = tempWidth > 450 ? tempHeight * 0.5 : tempHeight * 0.23;
        defaultWidth = tempWidth > 450 ? tempWidth * 0.18 : tempWidth * 0.35;
        break;
      case 'films':
        defaultHeight = tempWidth > 450 ? tempHeight * 0.6 : tempHeight * 0.30;
        defaultWidth = tempWidth > 450 ? tempWidth * 0.17 : tempWidth * 0.33;
        break;
      default:
        defaultHeight = 0;
        defaultWidth = 0;
        break;
    }

    return SizedBox(
      height: defaultHeight,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 16.0 : 0,
              right: index == data.length - 1 ? 16.0 : 0,
            ),
            child: OneCard(
              defaultWidth: defaultWidth,
              data: data,
              index: index,
              isAudio: type == "onlyAudio" ? true : false,
              trackIndex: trackIndex,
              changeTrackIndex: changeTrackIndex,
            ),
          );
        },
      ),
    );
  }
}
