import 'package:flutter/material.dart';

import 'one_navigation_destination.dart';

class MyNavigationBarTheme extends StatelessWidget {
  final int currentPageIndex;
  final ValueChanged<int> onDestinationSelected;

  const MyNavigationBarTheme({
    super.key,
    required this.currentPageIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) =>
              const TextStyle(fontSize: 0, height: 0),
        ),
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor: const Color(0xFF1A1A1A),
        onDestinationSelected: onDestinationSelected,
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => const Color(0xFF24BDAB),
        ),
        indicatorColor: const Color(0x00000000),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          OneNavigationDestination(
            title: "Головна",
            icon: Icons.home,
          ),
          OneNavigationDestination(
            title: "Пошук",
            icon: Icons.search,
          ),
        ],
      ),
    );
  }
}
