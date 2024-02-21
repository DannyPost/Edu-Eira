import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentdealsSecondlevelRecord extends FirestoreRecord {
  StudentdealsSecondlevelRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_logo" field.
  String? _companyLogo;
  String get companyLogo => _companyLogo ?? '';
  bool hasCompanyLogo() => _companyLogo != null;

  // "comp_para1" field.
  String? _compPara1;
  String get compPara1 => _compPara1 ?? '';
  bool hasCompPara1() => _compPara1 != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "deal_title1" field.
  String? _dealTitle1;
  String get dealTitle1 => _dealTitle1 ?? '';
  bool hasDealTitle1() => _dealTitle1 != null;

  // "deal_title2" field.
  String? _dealTitle2;
  String get dealTitle2 => _dealTitle2 ?? '';
  bool hasDealTitle2() => _dealTitle2 != null;

  // "deal_title3" field.
  String? _dealTitle3;
  String get dealTitle3 => _dealTitle3 ?? '';
  bool hasDealTitle3() => _dealTitle3 != null;

  // "deal_title4" field.
  String? _dealTitle4;
  String get dealTitle4 => _dealTitle4 ?? '';
  bool hasDealTitle4() => _dealTitle4 != null;

  // "deal_title5" field.
  String? _dealTitle5;
  String get dealTitle5 => _dealTitle5 ?? '';
  bool hasDealTitle5() => _dealTitle5 != null;

  // "deal_title6" field.
  String? _dealTitle6;
  String get dealTitle6 => _dealTitle6 ?? '';
  bool hasDealTitle6() => _dealTitle6 != null;

  // "deal_title7" field.
  String? _dealTitle7;
  String get dealTitle7 => _dealTitle7 ?? '';
  bool hasDealTitle7() => _dealTitle7 != null;

  // "deal_title8" field.
  String? _dealTitle8;
  String get dealTitle8 => _dealTitle8 ?? '';
  bool hasDealTitle8() => _dealTitle8 != null;

  // "deal_title9" field.
  String? _dealTitle9;
  String get dealTitle9 => _dealTitle9 ?? '';
  bool hasDealTitle9() => _dealTitle9 != null;

  // "deal_title10" field.
  String? _dealTitle10;
  String get dealTitle10 => _dealTitle10 ?? '';
  bool hasDealTitle10() => _dealTitle10 != null;

  // "deal_para1" field.
  String? _dealPara1;
  String get dealPara1 => _dealPara1 ?? '';
  bool hasDealPara1() => _dealPara1 != null;

  // "deal_para2" field.
  String? _dealPara2;
  String get dealPara2 => _dealPara2 ?? '';
  bool hasDealPara2() => _dealPara2 != null;

  // "deal_para3" field.
  String? _dealPara3;
  String get dealPara3 => _dealPara3 ?? '';
  bool hasDealPara3() => _dealPara3 != null;

  // "deal_para4" field.
  String? _dealPara4;
  String get dealPara4 => _dealPara4 ?? '';
  bool hasDealPara4() => _dealPara4 != null;

  // "deal_para5" field.
  String? _dealPara5;
  String get dealPara5 => _dealPara5 ?? '';
  bool hasDealPara5() => _dealPara5 != null;

  // "deal_para6" field.
  String? _dealPara6;
  String get dealPara6 => _dealPara6 ?? '';
  bool hasDealPara6() => _dealPara6 != null;

  // "deal_para7" field.
  String? _dealPara7;
  String get dealPara7 => _dealPara7 ?? '';
  bool hasDealPara7() => _dealPara7 != null;

  // "deal_para8" field.
  String? _dealPara8;
  String get dealPara8 => _dealPara8 ?? '';
  bool hasDealPara8() => _dealPara8 != null;

  // "deal_para9" field.
  String? _dealPara9;
  String get dealPara9 => _dealPara9 ?? '';
  bool hasDealPara9() => _dealPara9 != null;

  // "deal_para10" field.
  String? _dealPara10;
  String get dealPara10 => _dealPara10 ?? '';
  bool hasDealPara10() => _dealPara10 != null;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _companyLogo = snapshotData['company_logo'] as String?;
    _compPara1 = snapshotData['comp_para1'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _dealTitle1 = snapshotData['deal_title1'] as String?;
    _dealTitle2 = snapshotData['deal_title2'] as String?;
    _dealTitle3 = snapshotData['deal_title3'] as String?;
    _dealTitle4 = snapshotData['deal_title4'] as String?;
    _dealTitle5 = snapshotData['deal_title5'] as String?;
    _dealTitle6 = snapshotData['deal_title6'] as String?;
    _dealTitle7 = snapshotData['deal_title7'] as String?;
    _dealTitle8 = snapshotData['deal_title8'] as String?;
    _dealTitle9 = snapshotData['deal_title9'] as String?;
    _dealTitle10 = snapshotData['deal_title10'] as String?;
    _dealPara1 = snapshotData['deal_para1'] as String?;
    _dealPara2 = snapshotData['deal_para2'] as String?;
    _dealPara3 = snapshotData['deal_para3'] as String?;
    _dealPara4 = snapshotData['deal_para4'] as String?;
    _dealPara5 = snapshotData['deal_para5'] as String?;
    _dealPara6 = snapshotData['deal_para6'] as String?;
    _dealPara7 = snapshotData['deal_para7'] as String?;
    _dealPara8 = snapshotData['deal_para8'] as String?;
    _dealPara9 = snapshotData['deal_para9'] as String?;
    _dealPara10 = snapshotData['deal_para10'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studentdeals_secondlevel');

  static Stream<StudentdealsSecondlevelRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => StudentdealsSecondlevelRecord.fromSnapshot(s));

  static Future<StudentdealsSecondlevelRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StudentdealsSecondlevelRecord.fromSnapshot(s));

  static StudentdealsSecondlevelRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      StudentdealsSecondlevelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentdealsSecondlevelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentdealsSecondlevelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentdealsSecondlevelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentdealsSecondlevelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentdealsSecondlevelRecordData({
  String? companyName,
  String? companyLogo,
  String? compPara1,
  int? code,
  String? dealTitle1,
  String? dealTitle2,
  String? dealTitle3,
  String? dealTitle4,
  String? dealTitle5,
  String? dealTitle6,
  String? dealTitle7,
  String? dealTitle8,
  String? dealTitle9,
  String? dealTitle10,
  String? dealPara1,
  String? dealPara2,
  String? dealPara3,
  String? dealPara4,
  String? dealPara5,
  String? dealPara6,
  String? dealPara7,
  String? dealPara8,
  String? dealPara9,
  String? dealPara10,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'company_logo': companyLogo,
      'comp_para1': compPara1,
      'code': code,
      'deal_title1': dealTitle1,
      'deal_title2': dealTitle2,
      'deal_title3': dealTitle3,
      'deal_title4': dealTitle4,
      'deal_title5': dealTitle5,
      'deal_title6': dealTitle6,
      'deal_title7': dealTitle7,
      'deal_title8': dealTitle8,
      'deal_title9': dealTitle9,
      'deal_title10': dealTitle10,
      'deal_para1': dealPara1,
      'deal_para2': dealPara2,
      'deal_para3': dealPara3,
      'deal_para4': dealPara4,
      'deal_para5': dealPara5,
      'deal_para6': dealPara6,
      'deal_para7': dealPara7,
      'deal_para8': dealPara8,
      'deal_para9': dealPara9,
      'deal_para10': dealPara10,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentdealsSecondlevelRecordDocumentEquality
    implements Equality<StudentdealsSecondlevelRecord> {
  const StudentdealsSecondlevelRecordDocumentEquality();

  @override
  bool equals(
      StudentdealsSecondlevelRecord? e1, StudentdealsSecondlevelRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.companyLogo == e2?.companyLogo &&
        e1?.compPara1 == e2?.compPara1 &&
        e1?.code == e2?.code &&
        e1?.dealTitle1 == e2?.dealTitle1 &&
        e1?.dealTitle2 == e2?.dealTitle2 &&
        e1?.dealTitle3 == e2?.dealTitle3 &&
        e1?.dealTitle4 == e2?.dealTitle4 &&
        e1?.dealTitle5 == e2?.dealTitle5 &&
        e1?.dealTitle6 == e2?.dealTitle6 &&
        e1?.dealTitle7 == e2?.dealTitle7 &&
        e1?.dealTitle8 == e2?.dealTitle8 &&
        e1?.dealTitle9 == e2?.dealTitle9 &&
        e1?.dealTitle10 == e2?.dealTitle10 &&
        e1?.dealPara1 == e2?.dealPara1 &&
        e1?.dealPara2 == e2?.dealPara2 &&
        e1?.dealPara3 == e2?.dealPara3 &&
        e1?.dealPara4 == e2?.dealPara4 &&
        e1?.dealPara5 == e2?.dealPara5 &&
        e1?.dealPara6 == e2?.dealPara6 &&
        e1?.dealPara7 == e2?.dealPara7 &&
        e1?.dealPara8 == e2?.dealPara8 &&
        e1?.dealPara9 == e2?.dealPara9 &&
        e1?.dealPara10 == e2?.dealPara10;
  }

  @override
  int hash(StudentdealsSecondlevelRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.companyLogo,
        e?.compPara1,
        e?.code,
        e?.dealTitle1,
        e?.dealTitle2,
        e?.dealTitle3,
        e?.dealTitle4,
        e?.dealTitle5,
        e?.dealTitle6,
        e?.dealTitle7,
        e?.dealTitle8,
        e?.dealTitle9,
        e?.dealTitle10,
        e?.dealPara1,
        e?.dealPara2,
        e?.dealPara3,
        e?.dealPara4,
        e?.dealPara5,
        e?.dealPara6,
        e?.dealPara7,
        e?.dealPara8,
        e?.dealPara9,
        e?.dealPara10
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentdealsSecondlevelRecord;
}
