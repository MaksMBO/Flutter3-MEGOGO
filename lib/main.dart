import 'package:flutter/material.dart';
import 'package:task2/screens/home_screen.dart';

void main() => runApp(const Megogo());

class Megogo extends StatelessWidget {
  const Megogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'OpenSans',
      ),
      title: 'Megogo_clone',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
