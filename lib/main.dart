import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:task2/screens/home_screen.dart';
import 'package:task2/themes/dark_theme.dart';

import 'cubits/theme_cubit.dart';
import 'models/liked_list_model.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    ThemeProvider(
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
            home: const Megogo(),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    ),
  );
}

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
