import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data['title'],
          // style: const TextStyle(color: Colors.white),
        ),
        // backgroundColor: const Color(0xb0343434),
        // iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: data['title'],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  data['img'],
                  width: MediaQuery.of(context).size.width - 20,
                  height: MediaQuery.of(context).size.height / 2.2,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              data['title'],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
              child: Text(
                data['subtitle'],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  // color: Color(0x90ffffff),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
