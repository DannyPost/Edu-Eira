import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewCodesRecord extends FirestoreRecord {
  NewCodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "new_codes" field.
  int? _newCodes;
  int get newCodes => _newCodes ?? 0;
  bool hasNewCodes() => _newCodes != null;

  void _initializeFields() {
    _newCodes = castToType<int>(snapshotData['new_codes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('New_codes');

  static Stream<NewCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewCodesRecord.fromSnapshot(s));

  static Future<NewCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewCodesRecord.fromSnapshot(s));

  static NewCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewCodesRecordData({
  int? newCodes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'new_codes': newCodes,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewCodesRecordDocumentEquality implements Equality<NewCodesRecord> {
  const NewCodesRecordDocumentEquality();

  @override
  bool equals(NewCodesRecord? e1, NewCodesRecord? e2) {
    return e1?.newCodes == e2?.newCodes;
  }

  @override
  int hash(NewCodesRecord? e) => const ListEquality().hash([e?.newCodes]);

  @override
  bool isValidKey(Object? o) => o is NewCodesRecord;
}
