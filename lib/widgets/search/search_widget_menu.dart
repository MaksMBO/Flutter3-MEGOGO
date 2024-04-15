import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/theme_cubit.dart';

class SearchWidgetMenu extends StatefulWidget {
  const SearchWidgetMenu({super.key});

  @override
  _SearchWidgetMenuState createState() => _SearchWidgetMenuState();
}

class _SearchWidgetMenuState extends State<SearchWidgetMenu> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  _onSearchChanged() {
    setState(() {});
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
          child: TextField(
            controller: _controller,
            style: TextStyle(color: textColor),
            decoration: InputDecoration(
              hintText: 'Пошук',
              hintStyle: TextStyle(color: textColor),
              prefixIcon: Icon(Icons.search, color: textColor),
              border: InputBorder.none,
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_onSearchChanged);
    _controller.dispose();
    super.dispose();
  }
}
