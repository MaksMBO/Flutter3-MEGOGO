import 'package:flutter/material.dart';

import '../../data/data.dart';

class MyNavigationBarTheme extends StatelessWidget {
  final TabController tabController;
  final int currentIndex;

  const MyNavigationBarTheme({
    super.key,
    required this.tabController,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: const Color(0xFF24BDAB),
        highlightColor: const Color(0xFF24BDAB),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1A1A1A),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              child: Column(
                children: [
                  Icon(Icons.home,
                      color: currentIndex == 0 ? myColors[0] : myColors[1]),
                  Text(
                    "Головна",
                    style: TextStyle(
                        color: currentIndex == 0 ? myColors[0] : myColors[1]),
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              child: Column(
                children: [
                  Icon(Icons.search,
                      color: currentIndex == 1 ? myColors[0] : myColors[1]),
                  Text(
                    "Пошук",
                    style: TextStyle(
                        color: currentIndex == 1 ? myColors[0] : myColors[1]),
                  ),
                ],
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          tabController.animateTo(index);
        },
      ),
    );
  }
}
