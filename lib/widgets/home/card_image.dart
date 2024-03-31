import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.imageUrl,
    required this.defaultWidth,
  });

  final String imageUrl;
  final double defaultWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          imageUrl,
          width: defaultWidth,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
