import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String route = '/menu';
  const DetailsScreen({Key? key}) : super(key: key);

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
                children: const [
                  Text('1種目: インクラインダンベルカール 3sets 10-16kg'),
                  Text('2種目: ダンベルサイドカール 3sets 10kg'),
                  Text('3種目: バーベルカール 3sets 10-12kg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
