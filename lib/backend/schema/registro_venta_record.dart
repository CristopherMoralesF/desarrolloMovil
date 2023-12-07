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

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "fechaVenta" field.
  DateTime? _fechaVenta;
  DateTime? get fechaVenta => _fechaVenta;
  bool hasFechaVenta() => _fechaVenta != null;

  void _initializeFields() {
    _identificadorVenta = snapshotData['identificadorVenta'] as String?;
    _cantidadLecheVendida =
        castToType<double>(snapshotData['cantidadLecheVendida']);
    _uid = snapshotData['uid'] as String?;
    _fechaVenta = snapshotData['fechaVenta'] as DateTime?;
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
  String? uid,
  DateTime? fechaVenta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'identificadorVenta': identificadorVenta,
      'cantidadLecheVendida': cantidadLecheVendida,
      'uid': uid,
      'fechaVenta': fechaVenta,
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
        e1?.uid == e2?.uid &&
        e1?.fechaVenta == e2?.fechaVenta;
  }

  @override
  int hash(RegistroVentaRecord? e) => const ListEquality().hash(
      [e?.identificadorVenta, e?.cantidadLecheVendida, e?.uid, e?.fechaVenta]);

  @override
  bool isValidKey(Object? o) => o is RegistroVentaRecord;
}
