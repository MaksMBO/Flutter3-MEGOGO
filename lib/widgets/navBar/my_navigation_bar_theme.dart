import 'package:flutter/material.dart';

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
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: const Color(0xFF24BDAB),
        highlightColor: const Color(0xFF24BDAB),

      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1A1A1A),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Головна',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Пошук',
          ),
        ],
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFF757575),
        onTap: onDestinationSelected,
      ),
    );
  }
}
