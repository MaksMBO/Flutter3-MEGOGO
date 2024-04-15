import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/theme_cubit.dart';

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
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return IconButton(
          icon: Icon(
            isPlaying ? Icons.pause : Icons.play_arrow,
            color: state == ThemeState.dark ? Colors.white : Colors.black,
          ),
          onPressed: onPressed,
        );
      },
    );
  }
}
