import 'package:flutter/material.dart';
import 'package:task2/widgets/home/section_with_title.dart';

import '../../data/data.dart';
import '../app_bar.dart';
import 'main_cards_block.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _trackIndex = 0;

  void changeTrackIndex(int newIndex) {
    setState(() {
      _trackIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // const LogoBar(),
          const MainCardBlock(),
          _buildSections(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSections() {
    return Column(
      children: sections.map((section) {
        return sectionWithTitle(
            title: section['title'],
            type: section['type'],
            data: section['data'],
            trackIndex: _trackIndex,
            changeTrackIndex: changeTrackIndex);
      }).toList(),
    );
  }
}
