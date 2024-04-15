import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/screens/home_screen.dart';

import 'cubits/theme_cubit.dart';

class Megogo extends StatelessWidget {
  const Megogo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness:
                state == ThemeState.dark ? Brightness.dark : Brightness.light,
            scaffoldBackgroundColor:
                state == ThemeState.dark ? Colors.black : Colors.white,
            fontFamily: 'OpenSans',
          ),
          title: 'Megogo_clone',
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}
