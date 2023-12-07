import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VaquerosRecord extends FirestoreRecord {
  VaquerosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vaqueros');

  static Stream<VaquerosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VaquerosRecord.fromSnapshot(s));

  static Future<VaquerosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VaquerosRecord.fromSnapshot(s));

  static VaquerosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VaquerosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VaquerosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VaquerosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VaquerosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VaquerosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVaquerosRecordData({
  String? email,
  String? uid,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class VaquerosRecordDocumentEquality implements Equality<VaquerosRecord> {
  const VaquerosRecordDocumentEquality();

  @override
  bool equals(VaquerosRecord? e1, VaquerosRecord? e2) {
    return e1?.email == e2?.email && e1?.uid == e2?.uid && e1?.name == e2?.name;
  }

  @override
  int hash(VaquerosRecord? e) =>
      const ListEquality().hash([e?.email, e?.uid, e?.name]);

  @override
  bool isValidKey(Object? o) => o is VaquerosRecord;
}
