import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LecheriaRecord extends FirestoreRecord {
  LecheriaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre_lecheria" field.
  String? _nombreLecheria;
  String get nombreLecheria => _nombreLecheria ?? '';
  bool hasNombreLecheria() => _nombreLecheria != null;

  void _initializeFields() {
    _nombreLecheria = snapshotData['nombre_lecheria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lecheria');

  static Stream<LecheriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LecheriaRecord.fromSnapshot(s));

  static Future<LecheriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LecheriaRecord.fromSnapshot(s));

  static LecheriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LecheriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LecheriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LecheriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LecheriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LecheriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLecheriaRecordData({
  String? nombreLecheria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_lecheria': nombreLecheria,
    }.withoutNulls,
  );

  return firestoreData;
}

class LecheriaRecordDocumentEquality implements Equality<LecheriaRecord> {
  const LecheriaRecordDocumentEquality();

  @override
  bool equals(LecheriaRecord? e1, LecheriaRecord? e2) {
    return e1?.nombreLecheria == e2?.nombreLecheria;
  }

  @override
  int hash(LecheriaRecord? e) => const ListEquality().hash([e?.nombreLecheria]);

  @override
  bool isValidKey(Object? o) => o is LecheriaRecord;
}
