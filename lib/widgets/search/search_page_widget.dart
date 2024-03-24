import 'package:flutter/material.dart';
import 'package:task2/widgets/search/search_content.dart';
import 'package:task2/widgets/search/search_widget_menu.dart';

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
                      color: Colors.white,
                    ),
                  ),
                ),
                SearchContent(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            backgroundColor: const Color(0xff313131),
            onPressed: () {},
            child: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
