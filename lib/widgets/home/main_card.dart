import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final double baseHeight = 110;
  final EdgeInsets padding;
  final double increaseBy;
  final String img;
  final String title;

  const MainCard(
      {super.key,
      required this.padding,
      this.increaseBy = 1,
      required this.img,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              img,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13 * increaseBy +
                  (increaseBy == 1 ? 0 : (increaseBy - 1) * 8),
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.45),
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13 * increaseBy +
                  (increaseBy == 1 ? 0 : (increaseBy - 1) * 8),
            ),
            Positioned(
              left: 8,
              bottom: 8,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
