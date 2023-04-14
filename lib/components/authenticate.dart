import 'package:fitness_hack/firebase.dart';
import 'package:fitness_hack/screens/authentication_screen.dart';
import 'package:fitness_hack/screens/main_screen.dart';
import 'package:flutter/material.dart';

void authenticate(bool isSignIn, BuildContext context) async {
  if (isSignIn) {
    await signInWithEmailAndPassword(email, password).then((userCredential) {
      Navigator.pushNamed(context, MainScreen.route);
    });
  } else {
    await signUpWithEmailAndPassword(email, password).then((userCredential) {
      addUser(userCredential);
      Navigator.pushNamed(context, MainScreen.route);
    });
  }
}
