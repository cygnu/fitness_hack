import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              onChanged: (value) {},
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
