import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/widgets/settings/theme/tap_down_button.dart';

import '../../../cubits/theme_cubit.dart';
import '../../../themes/dark_theme.dart';
import '../../../themes/light_theme.dart';

class ThemeRow extends StatelessWidget {
  const ThemeRow({super.key, required this.themeState});

  final ThemeState themeState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              'Поточна тема:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 8),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: themeState == ThemeState.dark
                  ? const Icon(
                      Icons.dark_mode,
                      key: Key('dark_icon'),
                    )
                  : const Icon(
                      Icons.light_mode,
                      key: Key('light_icon'),
                    ),
            ),
          ],
        ),
        ThemeSwitcher(
          clipper: const ThemeSwitcherCircleClipper(),
          builder: (context) {
            return TapDownButton(
              child: const Text('Змінити тему'),
              onTap: (details) {
                context.read<ThemeCubit>().toggleTheme();
                ThemeSwitcher.of(context).changeTheme(
                  theme: themeState == ThemeState.dark ? lightTheme : darkTheme,
                  offset: details.localPosition,
                  isReversed: themeState == ThemeState.dark ? false : true,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
