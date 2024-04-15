import 'package:flutter/cupertino.dart';
import 'package:task2/widgets/home/section_with_title.dart';

class SectionsWidget extends StatelessWidget {
  final List<Map<String, dynamic>> sections;
  final int trackIndex;
  final Function(int) changeTrackIndex;

  const SectionsWidget({
    super.key,
    required this.sections,
    required this.trackIndex,
    required this.changeTrackIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: sections.map((section) {
        return _sectionWithTitle(
          title: section['title'],
          type: section['type'],
          data: section['data'],
        );
      }).toList(),
    );
  }

  Widget _sectionWithTitle({
    required String title,
    required String type,
    required dynamic data,
  }) {
    return sectionWithTitle(
      title: title,
      type: type,
      data: data,
      trackIndex: trackIndex,
      changeTrackIndex: changeTrackIndex,
    );
  }
}
