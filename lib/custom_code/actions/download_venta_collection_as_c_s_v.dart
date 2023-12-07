// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadVentaCollectionAsCSV(List<RegistroVentaRecord>? docs) async {
  docs = docs ?? [];

  String fileContent = "fechaVenta, cantidadLecheVendida, identificadorVenta";

  docs.asMap().forEach((index, record) => fileContent += "\n" +
      "${record.fechaVenta}, ${record.cantidadLecheVendida}, ${record.identificadorVenta}");

  final fileName = "FFReporteVentas" + DateTime.now().toString() + ".csv";

  //Encode the String as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);
  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
//Set your action name, define your arguments and return parameter,
//and then add the boilerplate code using the button on the right!
