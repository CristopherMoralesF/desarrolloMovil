import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacaRecord extends FirestoreRecord {
  VacaRecord._(
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

  // "madre_vaca" field.
  String? _madreVaca;
  String get madreVaca => _madreVaca ?? '';
  bool hasMadreVaca() => _madreVaca != null;

  // "lecheria" field.
  DocumentReference? _lecheria;
  DocumentReference? get lecheria => _lecheria;
  bool hasLecheria() => _lecheria != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _nombreVaca = snapshotData['nombre_vaca'] as String?;
    _comprado = snapshotData['comprado'] as bool?;
    _pesoVaca = castToType<int>(snapshotData['peso_vaca']);
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _sexoVaca = snapshotData['sexo_vaca'] as String?;
    _padreVaca = snapshotData['padre_vaca'] as String?;
    _madreVaca = snapshotData['madre_vaca'] as String?;
    _lecheria = snapshotData['lecheria'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vaca');

  static Stream<VacaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacaRecord.fromSnapshot(s));

  static Future<VacaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacaRecord.fromSnapshot(s));

  static VacaRecord fromSnapshot(DocumentSnapshot snapshot) => VacaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacaRecordData({
  String? photoUrl,
  String? nombreVaca,
  bool? comprado,
  int? pesoVaca,
  DateTime? fechaNacimiento,
  String? sexoVaca,
  String? padreVaca,
  String? madreVaca,
  DocumentReference? lecheria,
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
      'madre_vaca': madreVaca,
      'lecheria': lecheria,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacaRecordDocumentEquality implements Equality<VacaRecord> {
  const VacaRecordDocumentEquality();

  @override
  bool equals(VacaRecord? e1, VacaRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.nombreVaca == e2?.nombreVaca &&
        e1?.comprado == e2?.comprado &&
        e1?.pesoVaca == e2?.pesoVaca &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.sexoVaca == e2?.sexoVaca &&
        e1?.padreVaca == e2?.padreVaca &&
        e1?.madreVaca == e2?.madreVaca &&
        e1?.lecheria == e2?.lecheria;
  }

  @override
  int hash(VacaRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.nombreVaca,
        e?.comprado,
        e?.pesoVaca,
        e?.fechaNacimiento,
        e?.sexoVaca,
        e?.padreVaca,
        e?.madreVaca,
        e?.lecheria
      ]);

  @override
  bool isValidKey(Object? o) => o is VacaRecord;
}
