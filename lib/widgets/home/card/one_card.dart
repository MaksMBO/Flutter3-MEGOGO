import 'package:flutter/material.dart';
import 'package:task2/widgets/home/card/card_content.dart';
import 'package:task2/widgets/home/play_button.dart';

import 'card_image.dart';

class OneCard extends StatelessWidget {
  const OneCard({
    super.key,
    required this.defaultWidth,
    required this.data,
    required this.index,
    required this.isAudio,
    required this.trackIndex,
    required this.changeTrackIndex,
  });

  final double defaultWidth;
  final List<Map<String, dynamic>> data;
  final int index;
  final bool isAudio;
  final int trackIndex;
  final Function changeTrackIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(0, 0, 0, 0.0),
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SizedBox(
        width: defaultWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardImage(
              imageUrl: data[index]['img'],
              defaultWidth: defaultWidth,
            ),
            if (isAudio)
              PlayButton(
                onPressed: () {
                  if (int.parse(data[index]['id']) == trackIndex) {
                    changeTrackIndex(0);
                  } else {
                    changeTrackIndex(int.parse(data[index]['id']));
                  }
                },
                isPlaying: int.parse(data[index]['id']) == trackIndex,
              ),
            CardContent(
              title: data[index]['title'] ?? "",
              firstSubTitle: data[index]['firstSubTitle'] ?? "",
              secondSubTitle: data[index]['secondSubTitle'] ?? "",
              color: data[index]['color'] ?? Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
