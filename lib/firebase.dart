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

Future<void> addUser(UserCredential userCredential, [String? userName]) async {
  await db.collection('users').doc(userCredential.user!.uid).set({
    'email': userCredential.user!.email,
    'user_name': userName,
    'created_at': FieldValue.serverTimestamp(),
    'updated_at': FieldValue.serverTimestamp(),
  });
}

Future<void> addWorkout(
    String userId, String workoutName, String startTime, String endTime) async {
  await db.collection('workouts').doc().set({
    'user_id': userId,
    'workout_name': workoutName,
    'start_time': startTime,
    'end_time': endTime,
  });
}

Future<void> addSet(String workoutId, String exerciseId, int reps, int weight,
    [int? interval]) async {
  await db.collection('workouts').doc(workoutId).collection('sets').doc().set({
    'exercise_id': exerciseId,
    'reps': reps,
    'weight': weight,
    'interval': interval,
  });
}

Future<void> addExercise(
    String exerciseName, String description, List<String> parts) async {
  await db.collection('exercises').doc().set({
    'exercise_name': exerciseName,
    'description': description,
    'parts': parts,
  });
}

Future<void> addEvent(String eventName, String userId, String workoutId,
    String description, String startTime, String endTime) async {
  await db.collection('events').doc().set({
    'event_name': eventName,
    'user_id': userId,
    'workout_id': workoutId,
    'description': description,
    'start_time': startTime,
    'end_time': endTime,
  });
}
