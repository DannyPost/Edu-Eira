import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GrantsRecord extends FirestoreRecord {
  GrantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  bool hasIsFavorite() => _isFavorite != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "title1" field.
  String? _title1;
  String get title1 => _title1 ?? '';
  bool hasTitle1() => _title1 != null;

  // "content1" field.
  String? _content1;
  String get content1 => _content1 ?? '';
  bool hasContent1() => _content1 != null;

  // "title2" field.
  String? _title2;
  String get title2 => _title2 ?? '';
  bool hasTitle2() => _title2 != null;

  // "content2" field.
  String? _content2;
  String get content2 => _content2 ?? '';
  bool hasContent2() => _content2 != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
    _isFavorite = snapshotData['is_favorite'] as bool?;
    _photo = snapshotData['photo'] as String?;
    _title1 = snapshotData['title1'] as String?;
    _content1 = snapshotData['content1'] as String?;
    _title2 = snapshotData['title2'] as String?;
    _content2 = snapshotData['content2'] as String?;
    _website = snapshotData['website'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grants');

  static Stream<GrantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GrantsRecord.fromSnapshot(s));

  static Future<GrantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GrantsRecord.fromSnapshot(s));

  static GrantsRecord fromSnapshot(DocumentSnapshot snapshot) => GrantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GrantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GrantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GrantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GrantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGrantsRecordData({
  String? name,
  DateTime? lastUpdated,
  bool? isFavorite,
  String? photo,
  String? title1,
  String? content1,
  String? title2,
  String? content2,
  String? website,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'last_updated': lastUpdated,
      'is_favorite': isFavorite,
      'photo': photo,
      'title1': title1,
      'content1': content1,
      'title2': title2,
      'content2': content2,
      'website': website,
    }.withoutNulls,
  );

  return firestoreData;
}

class GrantsRecordDocumentEquality implements Equality<GrantsRecord> {
  const GrantsRecordDocumentEquality();

  @override
  bool equals(GrantsRecord? e1, GrantsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.isFavorite == e2?.isFavorite &&
        e1?.photo == e2?.photo &&
        e1?.title1 == e2?.title1 &&
        e1?.content1 == e2?.content1 &&
        e1?.title2 == e2?.title2 &&
        e1?.content2 == e2?.content2 &&
        e1?.website == e2?.website;
  }

  @override
  int hash(GrantsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lastUpdated,
        e?.isFavorite,
        e?.photo,
        e?.title1,
        e?.content1,
        e?.title2,
        e?.content2,
        e?.website
      ]);

  @override
  bool isValidKey(Object? o) => o is GrantsRecord;
}
