import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;

Future<UserCredential> signInWithEmailAndPassword(
    String email, String password) async {
  final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
  return userCredential;
}

Future<void> addUserToFirestore(UserCredential userCredential) async {
  await db.collection('users').doc(userCredential.user!.uid).set({
    'email': userCredential.user!.email,
    'created_at': FieldValue.serverTimestamp(),
    'updated_at': FieldValue.serverTimestamp(),
  });
}
