import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EnquiresThirdlevelRecord extends FirestoreRecord {
  EnquiresThirdlevelRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Phone_Number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Enquire" field.
  String? _enquire;
  String get enquire => _enquire ?? '';
  bool hasEnquire() => _enquire != null;

  // "Date_Time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _phoneNumber = snapshotData['Phone_Number'] as String?;
    _enquire = snapshotData['Enquire'] as String?;
    _dateTime = snapshotData['Date_Time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Enquires_Thirdlevel');

  static Stream<EnquiresThirdlevelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnquiresThirdlevelRecord.fromSnapshot(s));

  static Future<EnquiresThirdlevelRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EnquiresThirdlevelRecord.fromSnapshot(s));

  static EnquiresThirdlevelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnquiresThirdlevelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnquiresThirdlevelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnquiresThirdlevelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnquiresThirdlevelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnquiresThirdlevelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnquiresThirdlevelRecordData({
  String? email,
  String? phoneNumber,
  String? enquire,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'Phone_Number': phoneNumber,
      'Enquire': enquire,
      'Date_Time': dateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnquiresThirdlevelRecordDocumentEquality
    implements Equality<EnquiresThirdlevelRecord> {
  const EnquiresThirdlevelRecordDocumentEquality();

  @override
  bool equals(EnquiresThirdlevelRecord? e1, EnquiresThirdlevelRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.enquire == e2?.enquire &&
        e1?.dateTime == e2?.dateTime;
  }

  @override
  int hash(EnquiresThirdlevelRecord? e) => const ListEquality()
      .hash([e?.email, e?.phoneNumber, e?.enquire, e?.dateTime]);

  @override
  bool isValidKey(Object? o) => o is EnquiresThirdlevelRecord;
}
