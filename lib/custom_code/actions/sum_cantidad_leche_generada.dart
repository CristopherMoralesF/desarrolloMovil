// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

// plus all fields cantidadLecheVendida from collection RegistroVenta
// Import the necessary packages

// Define the function to sum all the fields cantidadLecheVendida from the collection RegistroVenta
Future<double> sumCantidadLecheGenerada() async {
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('IngresoLeche') // Replace with your actual collection name
        .get();

    double totalSum = 0;

    querySnapshot.docs.forEach((doc) {
      //Replace 'your_field' with the actual field name you want to sum
      var fieldValue = doc['cantidadLeche'];

      if (fieldValue != null && fieldValue is int) {
        totalSum += fieldValue;
      }
    });

    return totalSum;
  } catch (e) {
    print('Error summing field values: $e');
    return 0; // Handle the error gracefully
  }
}
