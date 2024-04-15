import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/widgets/settings/theme/theme_row.dart';

import '../../cubits/theme_cubit.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return ThemeRow(themeState: state);
              },
            ),
          ],
        ),
      ),
    );
  }
}
