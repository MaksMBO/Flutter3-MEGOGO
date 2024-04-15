import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task2/themes/dark_theme.dart';

import 'cubits/theme_cubit.dart';
import 'megogo_clone.dart';
import 'models/liked_list_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: darkTheme,
      builder: (context, myTheme) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => LikedListModel(),
            ),
            BlocProvider(
              create: (context) => ThemeCubit(),
            ),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: myTheme,
            home: Megogo(),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
