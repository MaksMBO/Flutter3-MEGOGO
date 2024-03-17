import 'package:flutter/material.dart';

class LogoBar extends StatelessWidget implements PreferredSizeWidget {
  const LogoBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'MEGOGO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  letterSpacing: 8.0,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.cast, color: Colors.white),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
