// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference> creteLecheria(
  String emailAddress,
  String userName,
  String userPassword,
  String randomDocGen,
  String dairyName,
) async {
  //Crete the dairy in the collection.

  final CollectionReference<Map<String, dynamic>> dairyRef =
      FirebaseFirestore.instance.collection('Lecheria');

  //Recover the dairy collection.
  DocumentReference newDairyRef =
      await dairyRef.add({'nombre_lecheria': dairyName});

  //Create the user in FirebaseAuth
  DateTime createdTime = DateTime.now();

  FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen, options: Firebase.app().options);

  UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
      .createUserWithEmailAndPassword(
          email: emailAddress, password: userPassword);

  String? uid = userCredential.user?.uid;

  final CollectionReference<Map<String, dynamic>> userRef =
      FirebaseFirestore.instance.collection('users');

  userRef.doc(uid).set({
    'uid': uid,
    'email': emailAddress,
    'display_name': userName,
    'created_time': createdTime,
    'uid_lecheria': newDairyRef,
  });

  final firestore = FirebaseFirestore.instance;
  final collectionUserRef = firestore.collection('users');
  final userFound = await collectionUserRef.where('uid', isEqualTo: uid).get();

  UsersRecord usuario = await UsersRecord.fromSnapshot(userFound.docs[0]);

  DocumentReference userReference =
      FirebaseFirestore.instance.doc('/users/' + usuario.uid);

  //return
  return userReference;
}
