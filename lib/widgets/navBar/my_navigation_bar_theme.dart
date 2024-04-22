import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/theme_cubit.dart';
import 'navigation_barItem_builder.dart';

class MyNavigationBarTheme extends StatelessWidget {
  final int selectedIndex;

  final dynamic onItemTapped;

  const MyNavigationBarTheme({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
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
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              NavigationBarItemBuilder(
                icon: Icons.home,
                title: "Головна",
                index: 0,
                currentIndex: selectedIndex,
                state: state,
              ).build(),
              NavigationBarItemBuilder(
                icon: Icons.search,
                title: "Пошук",
                index: 1,
                currentIndex: selectedIndex,
                state: state,
              ).build(),
              NavigationBarItemBuilder(
                icon: Icons.movie_creation,
                title: "Популярне",
                index: 2,
                currentIndex: selectedIndex,
                state: state,
              ).build(),
              NavigationBarItemBuilder(
                icon: Icons.settings,
                title: "Налаштування",
                index: 3,
                currentIndex: selectedIndex,
                state: state,
              ).build(),
            ],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          );
        },
      ),
    );
  }
}
