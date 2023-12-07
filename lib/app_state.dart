import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _totalCows = 0;
  int get totalCows => _totalCows;
  set totalCows(int _value) {
    _totalCows = _value;
  }

  double _totalLecheLitros = 0.0;
  double get totalLecheLitros => _totalLecheLitros;
  set totalLecheLitros(double _value) {
    _totalLecheLitros = _value;
  }

  double _totalLecheVendida = 0.0;
  double get totalLecheVendida => _totalLecheVendida;
  set totalLecheVendida(double _value) {
    _totalLecheVendida = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
