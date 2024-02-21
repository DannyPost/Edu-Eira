import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CollegeListFinalRecord extends FirestoreRecord {
  CollegeListFinalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "CAOCode" field.
  String? _cAOCode;
  String get cAOCode => _cAOCode ?? '';
  bool hasCAOCode() => _cAOCode != null;

  // "CourseLevel" field.
  String? _courseLevel;
  String get courseLevel => _courseLevel ?? '';
  bool hasCourseLevel() => _courseLevel != null;

  // "CourseTitle" field.
  String? _courseTitle;
  String get courseTitle => _courseTitle ?? '';
  bool hasCourseTitle() => _courseTitle != null;

  // "Classification" field.
  String? _classification;
  String get classification => _classification ?? '';
  bool hasClassification() => _classification != null;

  // "SpecialistClassification" field.
  String? _specialistClassification;
  String get specialistClassification => _specialistClassification ?? '';
  bool hasSpecialistClassification() => _specialistClassification != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _title = snapshotData['Title'] as String?;
    _cAOCode = snapshotData['CAOCode'] as String?;
    _courseLevel = snapshotData['CourseLevel'] as String?;
    _courseTitle = snapshotData['CourseTitle'] as String?;
    _classification = snapshotData['Classification'] as String?;
    _specialistClassification =
        snapshotData['SpecialistClassification'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('college_list_final');

  static Stream<CollegeListFinalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollegeListFinalRecord.fromSnapshot(s));

  static Future<CollegeListFinalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CollegeListFinalRecord.fromSnapshot(s));

  static CollegeListFinalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollegeListFinalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollegeListFinalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollegeListFinalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollegeListFinalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollegeListFinalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollegeListFinalRecordData({
  String? image,
  String? title,
  String? cAOCode,
  String? courseLevel,
  String? courseTitle,
  String? classification,
  String? specialistClassification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'Title': title,
      'CAOCode': cAOCode,
      'CourseLevel': courseLevel,
      'CourseTitle': courseTitle,
      'Classification': classification,
      'SpecialistClassification': specialistClassification,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollegeListFinalRecordDocumentEquality
    implements Equality<CollegeListFinalRecord> {
  const CollegeListFinalRecordDocumentEquality();

  @override
  bool equals(CollegeListFinalRecord? e1, CollegeListFinalRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.cAOCode == e2?.cAOCode &&
        e1?.courseLevel == e2?.courseLevel &&
        e1?.courseTitle == e2?.courseTitle &&
        e1?.classification == e2?.classification &&
        e1?.specialistClassification == e2?.specialistClassification;
  }

  @override
  int hash(CollegeListFinalRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.cAOCode,
        e?.courseLevel,
        e?.courseTitle,
        e?.classification,
        e?.specialistClassification
      ]);

  @override
  bool isValidKey(Object? o) => o is CollegeListFinalRecord;
}
