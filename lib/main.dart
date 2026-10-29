import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EdgeInsetsDemoPage(),
    ),
  );
}

class EdgeInsetsDemoPage extends StatelessWidget {
  const EdgeInsetsDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edgeinsets Masaway')),
      backgroundColor: const Color(0xFFFFF7FF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'EdgeInsets.all(30)',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              color: const Color(0xFFFFEB3B),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: const Text(
                'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 10,
                  right: 5,
                  bottom: 20,
                ),
                child: const Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: const Text(
                  'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
