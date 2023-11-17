import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroVentaRecord extends FirestoreRecord {
  RegistroVentaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "identificadorVenta" field.
  String? _identificadorVenta;
  String get identificadorVenta => _identificadorVenta ?? '';
  bool hasIdentificadorVenta() => _identificadorVenta != null;

  // "cantidadLecheVendida" field.
  double? _cantidadLecheVendida;
  double get cantidadLecheVendida => _cantidadLecheVendida ?? 0.0;
  bool hasCantidadLecheVendida() => _cantidadLecheVendida != null;

  // "fechaVenta" field.
  String? _fechaVenta;
  String get fechaVenta => _fechaVenta ?? '';
  bool hasFechaVenta() => _fechaVenta != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _identificadorVenta = snapshotData['identificadorVenta'] as String?;
    _cantidadLecheVendida =
        castToType<double>(snapshotData['cantidadLecheVendida']);
    _fechaVenta = snapshotData['fechaVenta'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RegistroVenta');

  static Stream<RegistroVentaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroVentaRecord.fromSnapshot(s));

  static Future<RegistroVentaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroVentaRecord.fromSnapshot(s));

  static RegistroVentaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroVentaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroVentaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroVentaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroVentaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroVentaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroVentaRecordData({
  String? identificadorVenta,
  double? cantidadLecheVendida,
  String? fechaVenta,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'identificadorVenta': identificadorVenta,
      'cantidadLecheVendida': cantidadLecheVendida,
      'fechaVenta': fechaVenta,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroVentaRecordDocumentEquality
    implements Equality<RegistroVentaRecord> {
  const RegistroVentaRecordDocumentEquality();

  @override
  bool equals(RegistroVentaRecord? e1, RegistroVentaRecord? e2) {
    return e1?.identificadorVenta == e2?.identificadorVenta &&
        e1?.cantidadLecheVendida == e2?.cantidadLecheVendida &&
        e1?.fechaVenta == e2?.fechaVenta &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(RegistroVentaRecord? e) => const ListEquality().hash(
      [e?.identificadorVenta, e?.cantidadLecheVendida, e?.fechaVenta, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is RegistroVentaRecord;
}
