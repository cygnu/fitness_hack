import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_hack/firebase.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
