import 'package:flutter/material.dart';

import 'custom_navigation_bar_element.dart';

class OneNavigationDestination extends StatelessWidget {
  final String title;
  final IconData icon;

  const OneNavigationDestination({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: CustomNavigationBarElement(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: title,
        currentColor: Colors.white,
      ),
      icon: CustomNavigationBarElement(
        icon: Icon(
          icon,
          color: const Color(0xFF757575),
        ),
        label: title,
        currentColor: const Color(0xFF757575),
      ),
      label: '',
    );
  }
}
