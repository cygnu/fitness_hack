import 'package:fitness_hack/firebase.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Hack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fitness Hack'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Push'),
            onPressed: () => getMenu(),
          ),
        ),
      ),
    );
  }
}
