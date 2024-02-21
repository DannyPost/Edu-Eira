import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecentNewsRecord extends FirestoreRecord {
  RecentNewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "image4" field.
  String? _image4;
  String get image4 => _image4 ?? '';
  bool hasImage4() => _image4 != null;

  // "image5" field.
  String? _image5;
  String get image5 => _image5 ?? '';
  bool hasImage5() => _image5 != null;

  // "paragraph1" field.
  String? _paragraph1;
  String get paragraph1 => _paragraph1 ?? '';
  bool hasParagraph1() => _paragraph1 != null;

  // "paragraph2" field.
  String? _paragraph2;
  String get paragraph2 => _paragraph2 ?? '';
  bool hasParagraph2() => _paragraph2 != null;

  // "paragraph3" field.
  String? _paragraph3;
  String get paragraph3 => _paragraph3 ?? '';
  bool hasParagraph3() => _paragraph3 != null;

  // "paragraph4" field.
  String? _paragraph4;
  String get paragraph4 => _paragraph4 ?? '';
  bool hasParagraph4() => _paragraph4 != null;

  // "paragraph5" field.
  String? _paragraph5;
  String get paragraph5 => _paragraph5 ?? '';
  bool hasParagraph5() => _paragraph5 != null;

  // "date1" field.
  String? _date1;
  String get date1 => _date1 ?? '';
  bool hasDate1() => _date1 != null;

  // "date2" field.
  String? _date2;
  String get date2 => _date2 ?? '';
  bool hasDate2() => _date2 != null;

  // "date3" field.
  String? _date3;
  String get date3 => _date3 ?? '';
  bool hasDate3() => _date3 != null;

  // "date4" field.
  String? _date4;
  String get date4 => _date4 ?? '';
  bool hasDate4() => _date4 != null;

  // "date5" field.
  String? _date5;
  String get date5 => _date5 ?? '';
  bool hasDate5() => _date5 != null;

  void _initializeFields() {
    _title1 = snapshotData['title1'] as String?;
    _title2 = snapshotData['title2'] as String?;
    _title3 = snapshotData['title3'] as String?;
    _title4 = snapshotData['title4'] as String?;
    _title5 = snapshotData['title5'] as String?;
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _image4 = snapshotData['image4'] as String?;
    _image5 = snapshotData['image5'] as String?;
    _paragraph1 = snapshotData['paragraph1'] as String?;
    _paragraph2 = snapshotData['paragraph2'] as String?;
    _paragraph3 = snapshotData['paragraph3'] as String?;
    _paragraph4 = snapshotData['paragraph4'] as String?;
    _paragraph5 = snapshotData['paragraph5'] as String?;
    _date1 = snapshotData['date1'] as String?;
    _date2 = snapshotData['date2'] as String?;
    _date3 = snapshotData['date3'] as String?;
    _date4 = snapshotData['date4'] as String?;
    _date5 = snapshotData['date5'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recent_news');

  static Stream<RecentNewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecentNewsRecord.fromSnapshot(s));

  static Future<RecentNewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecentNewsRecord.fromSnapshot(s));

  static RecentNewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecentNewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecentNewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecentNewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecentNewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecentNewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecentNewsRecordData({
  String? title1,
  String? title2,
  String? title3,
  String? title4,
  String? title5,
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
  String? paragraph1,
  String? paragraph2,
  String? paragraph3,
  String? paragraph4,
  String? paragraph5,
  String? date1,
  String? date2,
  String? date3,
  String? date4,
  String? date5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title1': title1,
      'title2': title2,
      'title3': title3,
      'title4': title4,
      'title5': title5,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'image4': image4,
      'image5': image5,
      'paragraph1': paragraph1,
      'paragraph2': paragraph2,
      'paragraph3': paragraph3,
      'paragraph4': paragraph4,
      'paragraph5': paragraph5,
      'date1': date1,
      'date2': date2,
      'date3': date3,
      'date4': date4,
      'date5': date5,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecentNewsRecordDocumentEquality implements Equality<RecentNewsRecord> {
  const RecentNewsRecordDocumentEquality();

  @override
  bool equals(RecentNewsRecord? e1, RecentNewsRecord? e2) {
    return e1?.title1 == e2?.title1 &&
        e1?.title2 == e2?.title2 &&
        e1?.title3 == e2?.title3 &&
        e1?.title4 == e2?.title4 &&
        e1?.title5 == e2?.title5 &&
        e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.image4 == e2?.image4 &&
        e1?.image5 == e2?.image5 &&
        e1?.paragraph1 == e2?.paragraph1 &&
        e1?.paragraph2 == e2?.paragraph2 &&
        e1?.paragraph3 == e2?.paragraph3 &&
        e1?.paragraph4 == e2?.paragraph4 &&
        e1?.paragraph5 == e2?.paragraph5 &&
        e1?.date1 == e2?.date1 &&
        e1?.date2 == e2?.date2 &&
        e1?.date3 == e2?.date3 &&
        e1?.date4 == e2?.date4 &&
        e1?.date5 == e2?.date5;
  }

  @override
  int hash(RecentNewsRecord? e) => const ListEquality().hash([
        e?.title1,
        e?.title2,
        e?.title3,
        e?.title4,
        e?.title5,
        e?.image1,
        e?.image2,
        e?.image3,
        e?.image4,
        e?.image5,
        e?.paragraph1,
        e?.paragraph2,
        e?.paragraph3,
        e?.paragraph4,
        e?.paragraph5,
        e?.date1,
        e?.date2,
        e?.date3,
        e?.date4,
        e?.date5
      ]);

  @override
  bool isValidKey(Object? o) => o is RecentNewsRecord;
}
