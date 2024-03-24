import 'package:flutter/material.dart';

import '../widgets/home/home_page_widget.dart';
import '../widgets/my_drawer.dart';
import '../widgets/navBar/my_navigation_bar_theme.dart';
import '../widgets/search/search_page_widget.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const pages = [
  HomePageWidget(),
  SearchWidget(),
];

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'MEGOGO',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 28,
            letterSpacing: 8.0,
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: const Icon(Icons.cast, color: Colors.white),
              onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: const CustomDrawer(),
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
