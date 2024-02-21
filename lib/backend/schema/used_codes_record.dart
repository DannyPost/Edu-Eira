import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsedCodesRecord extends FirestoreRecord {
  UsedCodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "used_codes" field.
  int? _usedCodes;
  int get usedCodes => _usedCodes ?? 0;
  bool hasUsedCodes() => _usedCodes != null;

  void _initializeFields() {
    _usedCodes = castToType<int>(snapshotData['used_codes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Used_Codes');

  static Stream<UsedCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsedCodesRecord.fromSnapshot(s));

  static Future<UsedCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsedCodesRecord.fromSnapshot(s));

  static UsedCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsedCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsedCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsedCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsedCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsedCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsedCodesRecordData({
  int? usedCodes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'used_codes': usedCodes,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsedCodesRecordDocumentEquality implements Equality<UsedCodesRecord> {
  const UsedCodesRecordDocumentEquality();

  @override
  bool equals(UsedCodesRecord? e1, UsedCodesRecord? e2) {
    return e1?.usedCodes == e2?.usedCodes;
  }

  @override
  int hash(UsedCodesRecord? e) => const ListEquality().hash([e?.usedCodes]);

  @override
  bool isValidKey(Object? o) => o is UsedCodesRecord;
}
