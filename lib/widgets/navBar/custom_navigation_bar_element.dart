import 'package:flutter/material.dart';

class CustomNavigationBarElement extends StatelessWidget {
  final Widget icon;
  final String label;
  final Color currentColor;

  const CustomNavigationBarElement({
    super.key,
    required this.icon,
    required this.label,
    required this.currentColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: currentColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
