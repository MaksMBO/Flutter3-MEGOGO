import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';
import '../widgets/navBar/my_navigation_bar_theme.dart';
import '../widgets/navBar/offstage_navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/info');
            },
            child: const Text(
              'MEGOGO',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 28,
                letterSpacing: 8.0,
              ),
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
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
        body: Stack(
          children: [
            OffstageNavigator(
              index: 0,
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
              navigatorKeys: _navigatorKeys,
            ),
            OffstageNavigator(
              index: 1,
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
              navigatorKeys: _navigatorKeys,
            ),
            OffstageNavigator(
              index: 2,
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
              navigatorKeys: _navigatorKeys,
            ),
            OffstageNavigator(
              index: 3,
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
              navigatorKeys: _navigatorKeys,
            ),
          ],
        ),
      ),
    );
  }
}
