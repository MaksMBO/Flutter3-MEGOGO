import 'package:flutter/cupertino.dart';

import '../../cubits/theme_cubit.dart';
import '../../data/data.dart';

class NavigationBarItemBuilder {
  final IconData icon;
  final String title;
  final int index;
  final int currentIndex;
  final ThemeState state;

  NavigationBarItemBuilder({
    required this.icon,
    required this.title,
    required this.index,
    required this.currentIndex,
    required this.state,
  });

  BottomNavigationBarItem build() {
    final isSelected = currentIndex == index;
    final color = isSelected
        ? (state == ThemeState.dark ? myColors[0] : myColors[2])
        : myColors[1];

    return BottomNavigationBarItem(
      icon: Column(
        children: [
          Icon(icon, color: color),
          Text(title, style: TextStyle(color: color)),
        ],
      ),
      label: '',
    );
  }
}
