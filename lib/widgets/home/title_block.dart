import 'package:flutter/material.dart';

class TitleBlock extends StatelessWidget {
  final String title;

  const TitleBlock({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
