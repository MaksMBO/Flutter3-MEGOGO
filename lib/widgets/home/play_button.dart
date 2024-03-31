import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    required this.onPressed,
    required this.isPlaying,
  });

  final VoidCallback onPressed;
  final bool isPlaying;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isPlaying ? Icons.pause : Icons.play_arrow,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
