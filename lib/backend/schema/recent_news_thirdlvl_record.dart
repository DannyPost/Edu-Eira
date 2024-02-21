import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecentNewsThirdlvlRecord extends FirestoreRecord {
  RecentNewsThirdlvlRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "article" field.
  String? _article;
  String get article => _article ?? '';
  bool hasArticle() => _article != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title2" field.
  String? _title2;
  String get title2 => _title2 ?? '';
  bool hasTitle2() => _title2 != null;

  // "article2" field.
  String? _article2;
  String get article2 => _article2 ?? '';
  bool hasArticle2() => _article2 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "title3" field.
  String? _title3;
  String get title3 => _title3 ?? '';
  bool hasTitle3() => _title3 != null;

  // "article3" field.
  String? _article3;
  String get article3 => _article3 ?? '';
  bool hasArticle3() => _article3 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _article = snapshotData['article'] as String?;
    _image = snapshotData['image'] as String?;
    _title2 = snapshotData['title2'] as String?;
    _article2 = snapshotData['article2'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _title3 = snapshotData['title3'] as String?;
    _article3 = snapshotData['article3'] as String?;
    _image3 = snapshotData['image3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recent_news_thirdlvl');

  static Stream<RecentNewsThirdlvlRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecentNewsThirdlvlRecord.fromSnapshot(s));

  static Future<RecentNewsThirdlvlRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecentNewsThirdlvlRecord.fromSnapshot(s));

  static RecentNewsThirdlvlRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecentNewsThirdlvlRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecentNewsThirdlvlRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecentNewsThirdlvlRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecentNewsThirdlvlRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecentNewsThirdlvlRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecentNewsThirdlvlRecordData({
  String? title,
  String? article,
  String? image,
  String? title2,
  String? article2,
  String? image2,
  String? title3,
  String? article3,
  String? image3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'article': article,
      'image': image,
      'title2': title2,
      'article2': article2,
      'image2': image2,
      'title3': title3,
      'article3': article3,
      'image3': image3,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecentNewsThirdlvlRecordDocumentEquality
    implements Equality<RecentNewsThirdlvlRecord> {
  const RecentNewsThirdlvlRecordDocumentEquality();

  @override
  bool equals(RecentNewsThirdlvlRecord? e1, RecentNewsThirdlvlRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.article == e2?.article &&
        e1?.image == e2?.image &&
        e1?.title2 == e2?.title2 &&
        e1?.article2 == e2?.article2 &&
        e1?.image2 == e2?.image2 &&
        e1?.title3 == e2?.title3 &&
        e1?.article3 == e2?.article3 &&
        e1?.image3 == e2?.image3;
  }

  @override
  int hash(RecentNewsThirdlvlRecord? e) => const ListEquality().hash([
        e?.title,
        e?.article,
        e?.image,
        e?.title2,
        e?.article2,
        e?.image2,
        e?.title3,
        e?.article3,
        e?.image3
      ]);

  @override
  bool isValidKey(Object? o) => o is RecentNewsThirdlvlRecord;
}
