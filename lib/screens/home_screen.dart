import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import '../widgets/home/home_page_widget.dart';
import '../widgets/movie/movie_explorer.dart';
import '../widgets/my_drawer.dart';
import '../widgets/navBar/my_navigation_bar_theme.dart';
import '../widgets/search/search_page_widget.dart';
import '../widgets/settings/settings.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
const page = [
  HomePageWidget(),
  SearchWidget(),
  MovieExplorerHomePage(),
  SettingsWidget(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text(
            'MEGOGO',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 28,
              letterSpacing: 8.0,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: const Icon(
                  Icons.cast,
                ),
                onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
              ),
            ),
          ],
        ),
        endDrawer: const CustomDrawer(),
        bottomNavigationBar: MyNavigationBarTheme(
          tabController: _tabController,
          currentIndex: _currentIndex,
        ),
        body: TabBarView(
          controller: _tabController,
          children: page,
        ),
      ),
    );
  }
}
