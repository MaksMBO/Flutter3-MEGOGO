import 'package:flutter/material.dart';

typedef Json = Map<String, dynamic>;

class CardsScrollSide extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final String type;

  const CardsScrollSide({
    super.key,
    required this.type,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    late final double defaultHeight;
    late final double defaultWidth;
    double tempWidth = MediaQuery.of(context).size.width;
    double tempHeight = MediaQuery.of(context).size.height;

    switch (type) {
      case 'tv':
        defaultHeight = tempWidth > 450 ? tempHeight * 0.5 : tempHeight * 0.25;
        defaultWidth = tempWidth > 450 ? tempWidth * 0.33 : tempWidth * 0.64;
        break;
      case 'onlyAudio':
        defaultHeight = tempWidth > 450 ? tempHeight * 0.5 : tempHeight * 0.23;
        defaultWidth = tempWidth > 450 ? tempWidth * 0.18 : tempWidth *  0.35;
        break;
      case 'films':
        defaultHeight = tempWidth > 450 ? tempHeight * 0.6 : tempHeight * 0.30;
        defaultWidth = tempWidth > 450 ? tempWidth * 0.17 : tempWidth * 0.33;
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
            child: Card(
              color: Colors.black,
              child: SizedBox(
                width: defaultWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          data[index]['img'],
                          width: defaultWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
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
            ),
          );
        },
      ),
    );
  }
}
