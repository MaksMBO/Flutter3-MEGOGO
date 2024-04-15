import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/widgets/search/search_content.dart';
import 'package:task2/widgets/search/search_widget_menu.dart';

import '../../cubits/theme_cubit.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SearchWidgetMenu(),
                Padding(
                  padding: EdgeInsets.only(top: 24.0, bottom: 16.0),
                  child: Text(
                    "Що зараз шукають",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      // color: Colors.white,
                    ),
                  ),
                ),
                SearchContent(),
              ],
            ),
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
                onPressed: () {},
                child: const Icon(
                  Icons.mic,
                  // color: Colors.white,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
