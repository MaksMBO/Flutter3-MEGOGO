import 'package:flutter/material.dart';

class SearchWidgetMenu extends StatefulWidget {
  const SearchWidgetMenu({super.key});

  @override
  _SearchWidgetMenuState createState() => _SearchWidgetMenuState();
}

class _SearchWidgetMenuState extends State<SearchWidgetMenu> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0x59515152),
        borderRadius: BorderRadius.circular(8),
      ),
      // padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          hintText: 'Пошук',
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.search, color: Colors.white),
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
