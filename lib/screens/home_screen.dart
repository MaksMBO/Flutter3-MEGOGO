import 'package:flutter/material.dart';

import '../widgets/home/home_page_widget.dart';
import '../widgets/navBar/my_navigation_bar_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const pages = [
  HomePageWidget(),
  SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 32),
      ],
    ),
  )
];

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0,
      ),
      bottomNavigationBar: MyNavigationBarTheme(
        currentPageIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: pages[currentPageIndex],
    );
  }
}
