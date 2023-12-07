// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> firebaseservice() async {
  // Add your function code here!
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Vaca') // Replace with your actual collection name
        .get();

    return querySnapshot.size; // Size contains the count of documents
  } catch (e) {
    print('Error getting items count: $e');
    return 0; // Handle the error gracefully
  }
}
