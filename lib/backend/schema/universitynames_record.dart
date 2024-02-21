import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UniversitynamesRecord extends FirestoreRecord {
  UniversitynamesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "names" field.
  String? _names;
  String get names => _names ?? '';
  bool hasNames() => _names != null;

  // "title1" field.
  String? _title1;
  String get title1 => _title1 ?? '';
  bool hasTitle1() => _title1 != null;

  // "title2" field.
  String? _title2;
  String get title2 => _title2 ?? '';
  bool hasTitle2() => _title2 != null;

  // "title3" field.
  String? _title3;
  String get title3 => _title3 ?? '';
  bool hasTitle3() => _title3 != null;

  // "title4" field.
  String? _title4;
  String get title4 => _title4 ?? '';
  bool hasTitle4() => _title4 != null;

  // "title5" field.
  String? _title5;
  String get title5 => _title5 ?? '';
  bool hasTitle5() => _title5 != null;

  // "para1" field.
  String? _para1;
  String get para1 => _para1 ?? '';
  bool hasPara1() => _para1 != null;

  // "para2" field.
  String? _para2;
  String get para2 => _para2 ?? '';
  bool hasPara2() => _para2 != null;

  // "para3" field.
  String? _para3;
  String get para3 => _para3 ?? '';
  bool hasPara3() => _para3 != null;

  // "para4" field.
  String? _para4;
  String get para4 => _para4 ?? '';
  bool hasPara4() => _para4 != null;

  // "para5" field.
  String? _para5;
  String get para5 => _para5 ?? '';
  bool hasPara5() => _para5 != null;

  // "para6" field.
  String? _para6;
  String get para6 => _para6 ?? '';
  bool hasPara6() => _para6 != null;

  // "para7" field.
  String? _para7;
  String get para7 => _para7 ?? '';
  bool hasPara7() => _para7 != null;

  // "para8" field.
  String? _para8;
  String get para8 => _para8 ?? '';
  bool hasPara8() => _para8 != null;

  // "para9" field.
  String? _para9;
  String get para9 => _para9 ?? '';
  bool hasPara9() => _para9 != null;

  // "title6" field.
  String? _title6;
  String get title6 => _title6 ?? '';
  bool hasTitle6() => _title6 != null;

  // "title7" field.
  String? _title7;
  String get title7 => _title7 ?? '';
  bool hasTitle7() => _title7 != null;

  // "title8" field.
  String? _title8;
  String get title8 => _title8 ?? '';
  bool hasTitle8() => _title8 != null;

  // "title9" field.
  String? _title9;
  String get title9 => _title9 ?? '';
  bool hasTitle9() => _title9 != null;

  // "uni_logo" field.
  String? _uniLogo;
  String get uniLogo => _uniLogo ?? '';
  bool hasUniLogo() => _uniLogo != null;

  void _initializeFields() {
    _names = snapshotData['names'] as String?;
    _title1 = snapshotData['title1'] as String?;
    _title2 = snapshotData['title2'] as String?;
    _title3 = snapshotData['title3'] as String?;
    _title4 = snapshotData['title4'] as String?;
    _title5 = snapshotData['title5'] as String?;
    _para1 = snapshotData['para1'] as String?;
    _para2 = snapshotData['para2'] as String?;
    _para3 = snapshotData['para3'] as String?;
    _para4 = snapshotData['para4'] as String?;
    _para5 = snapshotData['para5'] as String?;
    _para6 = snapshotData['para6'] as String?;
    _para7 = snapshotData['para7'] as String?;
    _para8 = snapshotData['para8'] as String?;
    _para9 = snapshotData['para9'] as String?;
    _title6 = snapshotData['title6'] as String?;
    _title7 = snapshotData['title7'] as String?;
    _title8 = snapshotData['title8'] as String?;
    _title9 = snapshotData['title9'] as String?;
    _uniLogo = snapshotData['uni_logo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('universitynames');

  static Stream<UniversitynamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UniversitynamesRecord.fromSnapshot(s));

  static Future<UniversitynamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UniversitynamesRecord.fromSnapshot(s));

  static UniversitynamesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UniversitynamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UniversitynamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UniversitynamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UniversitynamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UniversitynamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUniversitynamesRecordData({
  String? names,
  String? title1,
  String? title2,
  String? title3,
  String? title4,
  String? title5,
  String? para1,
  String? para2,
  String? para3,
  String? para4,
  String? para5,
  String? para6,
  String? para7,
  String? para8,
  String? para9,
  String? title6,
  String? title7,
  String? title8,
  String? title9,
  String? uniLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'names': names,
      'title1': title1,
      'title2': title2,
      'title3': title3,
      'title4': title4,
      'title5': title5,
      'para1': para1,
      'para2': para2,
      'para3': para3,
      'para4': para4,
      'para5': para5,
      'para6': para6,
      'para7': para7,
      'para8': para8,
      'para9': para9,
      'title6': title6,
      'title7': title7,
      'title8': title8,
      'title9': title9,
      'uni_logo': uniLogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UniversitynamesRecordDocumentEquality
    implements Equality<UniversitynamesRecord> {
  const UniversitynamesRecordDocumentEquality();

  @override
  bool equals(UniversitynamesRecord? e1, UniversitynamesRecord? e2) {
    return e1?.names == e2?.names &&
        e1?.title1 == e2?.title1 &&
        e1?.title2 == e2?.title2 &&
        e1?.title3 == e2?.title3 &&
        e1?.title4 == e2?.title4 &&
        e1?.title5 == e2?.title5 &&
        e1?.para1 == e2?.para1 &&
        e1?.para2 == e2?.para2 &&
        e1?.para3 == e2?.para3 &&
        e1?.para4 == e2?.para4 &&
        e1?.para5 == e2?.para5 &&
        e1?.para6 == e2?.para6 &&
        e1?.para7 == e2?.para7 &&
        e1?.para8 == e2?.para8 &&
        e1?.para9 == e2?.para9 &&
        e1?.title6 == e2?.title6 &&
        e1?.title7 == e2?.title7 &&
        e1?.title8 == e2?.title8 &&
        e1?.title9 == e2?.title9 &&
        e1?.uniLogo == e2?.uniLogo;
  }

  @override
  int hash(UniversitynamesRecord? e) => const ListEquality().hash([
        e?.names,
        e?.title1,
        e?.title2,
        e?.title3,
        e?.title4,
        e?.title5,
        e?.para1,
        e?.para2,
        e?.para3,
        e?.para4,
        e?.para5,
        e?.para6,
        e?.para7,
        e?.para8,
        e?.para9,
        e?.title6,
        e?.title7,
        e?.title8,
        e?.title9,
        e?.uniLogo
      ]);

  @override
  bool isValidKey(Object? o) => o is UniversitynamesRecord;
}
