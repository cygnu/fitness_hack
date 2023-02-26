import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

final db = FirebaseFirestore.instance;

Future<void> getMenu() async {
  const menuId = 1;
  DocumentReference docRef = db.collection("menu").doc("$menuId");
  DocumentSnapshot snapshot = docRef.get() as DocumentSnapshot<Object?>;
  debugPrint(snapshot.data().toString());
}
