import 'package:flutter/material.dart';

class TitleBlock extends StatelessWidget {
  final String title;

  const TitleBlock({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xC0C0C0FF).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 40,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
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
      ),
    );
  }
}
