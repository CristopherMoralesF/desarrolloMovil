import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacaJimRecord extends FirestoreRecord {
  VacaJimRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "nombre_vaca" field.
  String? _nombreVaca;
  String get nombreVaca => _nombreVaca ?? '';
  bool hasNombreVaca() => _nombreVaca != null;

  // "comprado" field.
  bool? _comprado;
  bool get comprado => _comprado ?? false;
  bool hasComprado() => _comprado != null;

  // "peso_vaca" field.
  int? _pesoVaca;
  int get pesoVaca => _pesoVaca ?? 0;
  bool hasPesoVaca() => _pesoVaca != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "sexo_vaca" field.
  String? _sexoVaca;
  String get sexoVaca => _sexoVaca ?? '';
  bool hasSexoVaca() => _sexoVaca != null;

  // "padre_vaca" field.
  String? _padreVaca;
  String get padreVaca => _padreVaca ?? '';
  bool hasPadreVaca() => _padreVaca != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _nombreVaca = snapshotData['nombre_vaca'] as String?;
    _comprado = snapshotData['comprado'] as bool?;
    _pesoVaca = castToType<int>(snapshotData['peso_vaca']);
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _sexoVaca = snapshotData['sexo_vaca'] as String?;
    _padreVaca = snapshotData['padre_vaca'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vacaJim');

  static Stream<VacaJimRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacaJimRecord.fromSnapshot(s));

  static Future<VacaJimRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacaJimRecord.fromSnapshot(s));

  static VacaJimRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacaJimRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacaJimRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacaJimRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacaJimRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacaJimRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacaJimRecordData({
  String? photoUrl,
  String? nombreVaca,
  bool? comprado,
  int? pesoVaca,
  DateTime? fechaNacimiento,
  String? sexoVaca,
  String? padreVaca,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'nombre_vaca': nombreVaca,
      'comprado': comprado,
      'peso_vaca': pesoVaca,
      'fecha_nacimiento': fechaNacimiento,
      'sexo_vaca': sexoVaca,
      'padre_vaca': padreVaca,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacaJimRecordDocumentEquality implements Equality<VacaJimRecord> {
  const VacaJimRecordDocumentEquality();

  @override
  bool equals(VacaJimRecord? e1, VacaJimRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.nombreVaca == e2?.nombreVaca &&
        e1?.comprado == e2?.comprado &&
        e1?.pesoVaca == e2?.pesoVaca &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.sexoVaca == e2?.sexoVaca &&
        e1?.padreVaca == e2?.padreVaca;
  }

  @override
  int hash(VacaJimRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.nombreVaca,
        e?.comprado,
        e?.pesoVaca,
        e?.fechaNacimiento,
        e?.sexoVaca,
        e?.padreVaca
      ]);

  @override
  bool isValidKey(Object? o) => o is VacaJimRecord;
}
