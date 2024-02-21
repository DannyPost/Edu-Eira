import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class WorkPlacementsRecord extends FirestoreRecord {
  WorkPlacementsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "career_area" field.
  String? _careerArea;
  String get careerArea => _careerArea ?? '';
  bool hasCareerArea() => _careerArea != null;

  void _initializeFields() {
    _careerArea = snapshotData['career_area'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('work_placements');

  static Stream<WorkPlacementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkPlacementsRecord.fromSnapshot(s));

  static Future<WorkPlacementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkPlacementsRecord.fromSnapshot(s));

  static WorkPlacementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkPlacementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkPlacementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkPlacementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkPlacementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkPlacementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkPlacementsRecordData({
  String? careerArea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'career_area': careerArea,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkPlacementsRecordDocumentEquality
    implements Equality<WorkPlacementsRecord> {
  const WorkPlacementsRecordDocumentEquality();

  @override
  bool equals(WorkPlacementsRecord? e1, WorkPlacementsRecord? e2) {
    return e1?.careerArea == e2?.careerArea;
  }

  @override
  int hash(WorkPlacementsRecord? e) =>
      const ListEquality().hash([e?.careerArea]);

  @override
  bool isValidKey(Object? o) => o is WorkPlacementsRecord;
}
