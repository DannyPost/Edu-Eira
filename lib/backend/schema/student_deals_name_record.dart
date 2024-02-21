import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class StudentDealsNameRecord extends FirestoreRecord {
  StudentDealsNameRecord._(
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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
    _isFavorite = snapshotData['is_favorite'] as bool?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('student_deals_name');

  static Stream<StudentDealsNameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentDealsNameRecord.fromSnapshot(s));

  static Future<StudentDealsNameRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StudentDealsNameRecord.fromSnapshot(s));

  static StudentDealsNameRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentDealsNameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentDealsNameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentDealsNameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentDealsNameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentDealsNameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentDealsNameRecordData({
  String? name,
  DateTime? lastUpdated,
  bool? isFavorite,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'last_updated': lastUpdated,
      'is_favorite': isFavorite,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentDealsNameRecordDocumentEquality
    implements Equality<StudentDealsNameRecord> {
  const StudentDealsNameRecordDocumentEquality();

  @override
  bool equals(StudentDealsNameRecord? e1, StudentDealsNameRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.isFavorite == e2?.isFavorite &&
        e1?.image == e2?.image;
  }

  @override
  int hash(StudentDealsNameRecord? e) => const ListEquality()
      .hash([e?.name, e?.lastUpdated, e?.isFavorite, e?.image]);

  @override
  bool isValidKey(Object? o) => o is StudentDealsNameRecord;
}
