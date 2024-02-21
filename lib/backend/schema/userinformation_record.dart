import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UserinformationRecord extends FirestoreRecord {
  UserinformationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "password_login" field.
  String? _passwordLogin;
  String get passwordLogin => _passwordLogin ?? '';
  bool hasPasswordLogin() => _passwordLogin != null;

  // "email_signup" field.
  String? _emailSignup;
  String get emailSignup => _emailSignup ?? '';
  bool hasEmailSignup() => _emailSignup != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _passwordLogin = snapshotData['password_login'] as String?;
    _emailSignup = snapshotData['email_signup'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Userinformation');

  static Stream<UserinformationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserinformationRecord.fromSnapshot(s));

  static Future<UserinformationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserinformationRecord.fromSnapshot(s));

  static UserinformationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserinformationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserinformationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserinformationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserinformationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserinformationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserinformationRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? passwordLogin,
  String? emailSignup,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'password_login': passwordLogin,
      'email_signup': emailSignup,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserinformationRecordDocumentEquality
    implements Equality<UserinformationRecord> {
  const UserinformationRecordDocumentEquality();

  @override
  bool equals(UserinformationRecord? e1, UserinformationRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.passwordLogin == e2?.passwordLogin &&
        e1?.emailSignup == e2?.emailSignup;
  }

  @override
  int hash(UserinformationRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.passwordLogin,
        e?.emailSignup
      ]);

  @override
  bool isValidKey(Object? o) => o is UserinformationRecord;
}
