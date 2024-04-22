import 'package:flutter/material.dart';

import '../home/home_page_widget.dart';
import '../movie/movie_explorer.dart';
import '../search/search_page_widget.dart';
import '../settings/settings.dart';

class OffstageNavigator extends StatelessWidget {
  final int index;
  final int _selectedIndex;
  final ValueChanged<int> _onItemTapped;
  final List<GlobalKey<NavigatorState>> _navigatorKeys;

  const OffstageNavigator({
    super.key,
    required this.index,
    required int selectedIndex,
    required ValueChanged<int> onItemTapped,
    required List<GlobalKey<NavigatorState>> navigatorKeys,
  })  : _selectedIndex = selectedIndex,
        _onItemTapped = onItemTapped,
        _navigatorKeys = navigatorKeys;

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: _selectedIndex != index,
      child: WillPopScope(
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await _navigatorKeys[index].currentState!.maybePop();
          if (isFirstRouteInCurrentTab) {
            if (_selectedIndex != 0) {
              _onItemTapped(0);
              return false;
            }
          }
          return isFirstRouteInCurrentTab;
        },
        child: Navigator(
          key: _navigatorKeys[index],
          onGenerateRoute: (routeSettings) {
            return MaterialPageRoute(
              builder: (context) {
                switch (index) {
                  case 0:
                    return const HomePageWidget();
                  case 1:
                    return const SearchWidget();
                  case 2:
                    return const MovieExplorerHomePage();
                  case 3:
                    return const SettingsWidget();
                  default:
                    return const HomePageWidget();
                }
              },
            );
          },
        ),
      ),
    );
  }
}
