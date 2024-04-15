import 'package:flutter/material.dart';

import '../data/data.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomDrawerItem> drawerItems = items.map((item) {
      return CustomDrawerItem(
        icon: Icons.tv,
        title: item['title']!,
        onTap: () {
          Navigator.pop(context);
        },
      );
    }).toList();

    return Drawer(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Center(
              child: Text(
                'Транслювати на...',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,),
              ),
            ),
          ),
          ...drawerItems,
        ],
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onTap;

  const CustomDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
