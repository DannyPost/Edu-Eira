import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EnquiresRecord extends FirestoreRecord {
  EnquiresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Enquiry" field.
  String? _enquiry;
  String get enquiry => _enquiry ?? '';
  bool hasEnquiry() => _enquiry != null;

  // "Date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _phoneNumber = snapshotData['Phone_number'] as String?;
    _enquiry = snapshotData['Enquiry'] as String?;
    _dateTime = snapshotData['Date_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Enquires');

  static Stream<EnquiresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnquiresRecord.fromSnapshot(s));

  static Future<EnquiresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnquiresRecord.fromSnapshot(s));

  static EnquiresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnquiresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnquiresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnquiresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnquiresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnquiresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnquiresRecordData({
  String? email,
  String? phoneNumber,
  String? enquiry,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'Phone_number': phoneNumber,
      'Enquiry': enquiry,
      'Date_time': dateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnquiresRecordDocumentEquality implements Equality<EnquiresRecord> {
  const EnquiresRecordDocumentEquality();

  @override
  bool equals(EnquiresRecord? e1, EnquiresRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.enquiry == e2?.enquiry &&
        e1?.dateTime == e2?.dateTime;
  }

  @override
  int hash(EnquiresRecord? e) => const ListEquality()
      .hash([e?.email, e?.phoneNumber, e?.enquiry, e?.dateTime]);

  @override
  bool isValidKey(Object? o) => o is EnquiresRecord;
}
