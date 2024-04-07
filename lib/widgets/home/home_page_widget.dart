import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2/widgets/home/section_with_title.dart';

import '../../data/data.dart';
import '../../models/liked_list_model.dart';
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
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // const LogoBar(),
              const MainCardBlock(),
              _buildSections(),
              const SizedBox(height: 32),
            ],
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            backgroundColor: const Color(0xff313131),
            onPressed: () {
              Provider.of<LikedListModel>(context, listen: false).clearMovies();
            },
            child: SizedBox(
              height: 27,
              child: Image.asset(
                "assets/img/icons/dislike.png",
                color: Colors.cyan,
              ),
            ),
          ),
        )
      ],
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
