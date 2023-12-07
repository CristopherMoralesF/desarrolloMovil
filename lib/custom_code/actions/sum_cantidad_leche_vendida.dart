// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> sumCantidadLecheVendida() async {
  // Add your function code here!
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('RegistroVenta') // Replace with your actual collection name
        .get();

    double totalSum = 0;

    querySnapshot.docs.forEach((doc) {
      //Replace 'your_field' with the actual field name you want to sum
      var fieldValue = doc['cantidadLecheVendida'];

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
