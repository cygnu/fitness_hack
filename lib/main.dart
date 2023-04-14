import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_hack/screens/authentication_screen.dart';
import 'package:fitness_hack/screens/main_screen.dart';
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
  const FitnessApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Hack',
      initialRoute: '/login',
      routes: {
        '/register': (context) => const AuthenticationScreen(),
        '/login': (context) => const AuthenticationScreen(),
        '/': (context) => const MainScreen(),
      },
    );
  }
}
