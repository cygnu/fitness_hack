import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const String route = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Image.network(''),
            ),
            const Text('腕'),
          ],
        ),
      ),
    );
  }
}
