import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

final db = FirebaseFirestore.instance;

Future<void> getMenu() async {
  const menuId = "ZycEUzoOUxB8e8qeFN8Z";
  DocumentReference docRef = db.collection("menu").doc(menuId);
  await docRef.get().then(
    (DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      debugPrint(data.toString());
    },
    onError: (e) => debugPrint("Error getting document: $e"),
  );
}
