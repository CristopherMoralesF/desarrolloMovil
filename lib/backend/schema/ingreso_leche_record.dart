import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresoLecheRecord extends FirestoreRecord {
  IngresoLecheRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vacaSeleccionada" field.
  String? _vacaSeleccionada;
  String get vacaSeleccionada => _vacaSeleccionada ?? '';
  bool hasVacaSeleccionada() => _vacaSeleccionada != null;

  // "cantidadLeche" field.
  double? _cantidadLeche;
  double get cantidadLeche => _cantidadLeche ?? 0.0;
  bool hasCantidadLeche() => _cantidadLeche != null;

  // "fechaExtraccion" field.
  String? _fechaExtraccion;
  String get fechaExtraccion => _fechaExtraccion ?? '';
  bool hasFechaExtraccion() => _fechaExtraccion != null;

  void _initializeFields() {
    _vacaSeleccionada = snapshotData['vacaSeleccionada'] as String?;
    _cantidadLeche = castToType<double>(snapshotData['cantidadLeche']);
    _fechaExtraccion = snapshotData['fechaExtraccion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IngresoLeche');

  static Stream<IngresoLecheRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngresoLecheRecord.fromSnapshot(s));

  static Future<IngresoLecheRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngresoLecheRecord.fromSnapshot(s));

  static IngresoLecheRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngresoLecheRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngresoLecheRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngresoLecheRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngresoLecheRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngresoLecheRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngresoLecheRecordData({
  String? vacaSeleccionada,
  double? cantidadLeche,
  String? fechaExtraccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vacaSeleccionada': vacaSeleccionada,
      'cantidadLeche': cantidadLeche,
      'fechaExtraccion': fechaExtraccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngresoLecheRecordDocumentEquality
    implements Equality<IngresoLecheRecord> {
  const IngresoLecheRecordDocumentEquality();

  @override
  bool equals(IngresoLecheRecord? e1, IngresoLecheRecord? e2) {
    return e1?.vacaSeleccionada == e2?.vacaSeleccionada &&
        e1?.cantidadLeche == e2?.cantidadLeche &&
        e1?.fechaExtraccion == e2?.fechaExtraccion;
  }

  @override
  int hash(IngresoLecheRecord? e) => const ListEquality()
      .hash([e?.vacaSeleccionada, e?.cantidadLeche, e?.fechaExtraccion]);

  @override
  bool isValidKey(Object? o) => o is IngresoLecheRecord;
}
