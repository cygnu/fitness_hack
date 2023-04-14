import 'package:fitness_hack/components/constants.dart';
import 'package:fitness_hack/components/rounded_button.dart';
import 'package:fitness_hack/firebase.dart';
import 'package:fitness_hack/screens/main_screen.dart';
import 'package:flutter/material.dart';

String email = '';
String password = '';

class AuthenticationScreen extends StatelessWidget {
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: kTextFieldDecoration.copyWith(hintText: 'Email'),
              onChanged: (value) {
                email = value;
              },
            ),
            const SizedBox(
              height: 7.0,
            ),
            TextField(
              textAlign: TextAlign.start,
              obscureText: true,
              decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 21.0,
            ),
            RoundedButton(
              text: 'Login',
              colour: Colors.lightBlueAccent,
              onPressed: () async {
                await signInWithEmailAndPassword(email, password)
                    .then((userCredential) {
                  Navigator.pushNamed(context, MainScreen.route);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
