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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                      'https://www.kyoritsu-biyo.com/column/wordpress/wp-content/uploads/2022/03/%E4%BA%8C%E3%81%AE%E8%85%95%E3%81%AE%E3%82%B5%E3%82%A4%E3%82%BA%E3%82%92%E6%B8%AC%E3%82%8B%E5%A5%B3%E6%80%A7.jpg'),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Text(
                      '腕',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
