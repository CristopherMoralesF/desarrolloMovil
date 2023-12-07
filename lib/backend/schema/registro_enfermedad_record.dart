import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroEnfermedadRecord extends FirestoreRecord {
  RegistroEnfermedadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreEnfermedad" field.
  String? _nombreEnfermedad;
  String get nombreEnfermedad => _nombreEnfermedad ?? '';
  bool hasNombreEnfermedad() => _nombreEnfermedad != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "tratamiento" field.
  String? _tratamiento;
  String get tratamiento => _tratamiento ?? '';
  bool hasTratamiento() => _tratamiento != null;

  void _initializeFields() {
    _nombreEnfermedad = snapshotData['nombreEnfermedad'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tratamiento = snapshotData['tratamiento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RegistroEnfermedad');

  static Stream<RegistroEnfermedadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroEnfermedadRecord.fromSnapshot(s));

  static Future<RegistroEnfermedadRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroEnfermedadRecord.fromSnapshot(s));

  static RegistroEnfermedadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroEnfermedadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroEnfermedadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroEnfermedadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroEnfermedadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroEnfermedadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroEnfermedadRecordData({
  String? nombreEnfermedad,
  String? descripcion,
  String? tratamiento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEnfermedad': nombreEnfermedad,
      'descripcion': descripcion,
      'tratamiento': tratamiento,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroEnfermedadRecordDocumentEquality
    implements Equality<RegistroEnfermedadRecord> {
  const RegistroEnfermedadRecordDocumentEquality();

  @override
  bool equals(RegistroEnfermedadRecord? e1, RegistroEnfermedadRecord? e2) {
    return e1?.nombreEnfermedad == e2?.nombreEnfermedad &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tratamiento == e2?.tratamiento;
  }

  @override
  int hash(RegistroEnfermedadRecord? e) => const ListEquality()
      .hash([e?.nombreEnfermedad, e?.descripcion, e?.tratamiento]);

  @override
  bool isValidKey(Object? o) => o is RegistroEnfermedadRecord;
}
