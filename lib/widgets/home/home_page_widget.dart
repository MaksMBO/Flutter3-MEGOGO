import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task2/widgets/home/sections_widget.dart';

import '../../cubits/theme_cubit.dart';
import '../../data/data.dart';
import '../../models/liked_list_model.dart';
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
              SectionsWidget(
                  sections: sections,
                  trackIndex: _trackIndex,
                  changeTrackIndex: changeTrackIndex),
              const SizedBox(height: 32),
            ],
          ),
        ),
        BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Positioned(
              bottom: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                backgroundColor: state == ThemeState.dark
                    ? const Color(0xff313131)
                    : const Color(0xFFDADADA),
                onPressed: () {
                  Provider.of<LikedListModel>(context, listen: false)
                      .clearMovies();
                },
                child: SizedBox(
                  height: 27,
                  child: Image.asset(
                    "assets/img/icons/dislike.png",
                    color: state == ThemeState.dark
                        ? const Color(0xFFBCD4FF)
                        : const Color(0xFF96BBFA),
                    // color: Colors.cyan,0x00BCD4FF
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
