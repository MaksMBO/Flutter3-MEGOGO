import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/theme_cubit.dart';

class SearchWidgetMenu extends StatefulWidget {
  const SearchWidgetMenu({super.key});

  @override
  _SearchWidgetMenuState createState() => _SearchWidgetMenuState();
}

class _SearchWidgetMenuState extends State<SearchWidgetMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _colorAnimation = ColorTween(
      begin: Colors.grey.withOpacity(0.3),
      end: Colors.grey.withOpacity(1),
    ).animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        Color backgroundColor = state == ThemeState.dark
            ? const Color(0x59515152)
            : const Color(0x59DADADA);
        Color textColor =
            state == ThemeState.dark ? Colors.white : const Color(0xFF9B9B9B);

        return Container(
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.search,
                    color: _colorAnimation.value ?? textColor),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Пошук',
                    hintStyle: TextStyle(color: textColor),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
